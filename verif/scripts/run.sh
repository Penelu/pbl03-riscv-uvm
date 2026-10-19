#!/usr/bin/env bash
# =============================================================================
# run.sh  -  compila e roda um teste UVM no XSim (sem abrir o projeto Vivado)
#
# Uso:
#   scripts/run.sh <teste> [seed] [--gui] [+PLUSARG ...]
#
# Exemplos:
#   scripts/run.sh rv_isa_directed_test
#   scripts/run.sh rv_isa_random_test 42 +N_PROGS=20
#   scripts/run.sh rv_genius_test 1 +GENIUS_FULL
#   scripts/run.sh rv_genius_test 1 --gui          # abre formas de onda
#   scripts/run.sh rv_isa_directed_test 1 +UVM_VERBOSITY=UVM_HIGH   # mostra cada commit
#
# Variaveis: VIVADO=<pasta do Vivado>  (padrao: ~/tools/Xilinks/2026.1/Vivado)
#            DATA_MEM=<arquivo>         (padrao: verif/mem/data.mem)
# =============================================================================
set -euo pipefail

TEST=${1:?"uso: $0 <teste> [seed] [--gui] [+plusargs]"}; shift
SEED=1
if [[ $# -gt 0 && $1 =~ ^[0-9]+$ ]]; then SEED=$1; shift; fi
GUI=0; PLUSARGS=()
for a in "$@"; do
    if [[ $a == --gui ]]; then GUI=1; else PLUSARGS+=(-testplusarg "${a#+}"); fi
done

VERIF=$(cd "$(dirname "$0")/.." && pwd)
PRJ=$(cd "$VERIF/.." && pwd)
VIVADO=${VIVADO:-$HOME/tools/Xilinks/2026.1/Vivado}
DATA_MEM=${DATA_MEM:-$VERIF/mem/data.mem}
BUILD=$VERIF/build
# shellcheck disable=SC1091
source "$VIVADO/settings64.sh"

mkdir -p "$BUILD/logs"
cd "$BUILD"

# Le um .srclist: ignora comentarios, separa +incdir, prefixa caminhos.
srclist() {  # $1 = arquivo, $2 = prefixo
    grep -v '^\s*#' "$1" | grep -v '^\s*$' | while read -r l; do
        if [[ $l == +incdir+* ]]; then echo "-i $2/${l#+incdir+}"; else echo "$2/$l"; fi
    done
}

# Roda um comando da ferramenta; se falhar, mostra so as linhas de ERROR.
run() {
    local out
    if ! out=$("$@" 2>&1); then
        echo "$out" | grep -E "ERROR" || echo "$out" | tail -20
        echo "!!! Falhou: $1"; rm -f "$SNAP"; exit 1
    fi
}

# Recompila so se algum fonte mudou (comparando com o snapshot).
SNAP=xsim.dir/rv_tb/xsimk
NEED=1
if [[ -f $SNAP ]]; then
    NEED=0
    for f in $(srclist "$VERIF/srclist/rtl.srclist" "$PRJ") \
             $(find "$VERIF/tb" -name '*.sv'); do
        [[ $f == -i ]] && continue
        [[ -f $f && $f -nt $SNAP ]] && NEED=1 && break
    done
fi

if [[ $NEED == 1 ]]; then
    echo ">>> Compilando RTL do colega"
    RTL_V=(); RTL_SV=()
    for f in $(srclist "$VERIF/srclist/rtl.srclist" "$PRJ"); do
        [[ $f == *.v ]] && RTL_V+=("$f") || RTL_SV+=("$f")
    done
    # --relax: o mesmo que o Vivado usa. Sem ele o data_memory.sv do colega NAO
    # elabora: led*_out e rtc_counter sao escritos em um initial E em um
    # always_ff, o que o SystemVerilog proibe (erro VRFC 10-3818).
    run xvlog --relax --log logs/xvlog_rtl_v.log "${RTL_V[@]}"
    run xvlog --relax --sv --log logs/xvlog_rtl_sv.log "${RTL_SV[@]}"
    echo ">>> Compilando testbench UVM"
    # shellcheck disable=SC2046
    run xvlog --sv -L uvm --log logs/xvlog_tb.log $(srclist "$VERIF/srclist/tb.srclist" "$VERIF")
    echo ">>> Elaborando"
    run xelab --relax --debug typical -L uvm -L xlslice_v1_0_5 --timescale 1ns/1ps \
          --snapshot rv_tb rv_tb_top --log logs/xelab.log
fi

# $readmemh do DUT procura os arquivos na pasta onde o xsim roda.
cp "$PRJ/PBL03-Giovanni.srcs/sources_1/new/genius.mem" .
cp "$DATA_MEM" data.mem

LOG=logs/${TEST}_${SEED}.log
echo ">>> Rodando $TEST (seed $SEED) -> build/$LOG"
if [[ $GUI == 1 ]]; then
    cat > waves.tcl <<'EOF'
log_wave -recursive *
add_wave /rv_tb_top/commit_if
add_wave /rv_tb_top/io_if
EOF
    xsim rv_tb -gui -testplusarg "UVM_TESTNAME=$TEST" -sv_seed "$SEED" "${PLUSARGS[@]}" \
         -tclbatch waves.tcl -log "$LOG"
else
    xsim rv_tb -R -testplusarg "UVM_TESTNAME=$TEST" -sv_seed "$SEED" "${PLUSARGS[@]}" \
         -log "$LOG" > /dev/null || true
    # Resumo: primeiros erros + relatorios do scoreboard/cobertura + veredito.
    # (o log completo fica em build/$LOG)
    grep -E "^UVM_(ERROR|FATAL) .*@" "$LOG" | sed -E 's#^(UVM_[A-Z]+) [^ ]*/([^/]+\([0-9]+\))#\1 \2#' | head -15 || true
    awk '/\[(SCOREBOARD|COVERAGE)\] *$/ {p=1; next} p && /^  / {print; next} {p=0}' "$LOG"
    grep -E "\[RESULT\] \*" "$LOG" | sed 's/.*\[RESULT\] //'
fi
