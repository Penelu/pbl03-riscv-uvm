#!/usr/bin/env bash
# =============================================================================
# regress.sh  -  roda todos os testes e compara com o resultado ESPERADO
#
# Uso: scripts/regress.sh [n_seeds]      (padrao: 3 seeds para os aleatorios)
#
# "Esperado FALHAR" nao e contradicao: rv_isa_rv32i_test e
# rv_genius_long_press_test documentam limitacoes conhecidas do DUT. Se um
# dia eles passarem, o colega corrigiu algo e a tabela abaixo deve mudar.
# =============================================================================
set -uo pipefail
cd "$(dirname "$0")/.."
N=${1:-3}

# teste | seeds | resultado esperado | plusargs
TESTS=(
    "rv_isa_directed_test      1     PASSOU"
    "rv_isa_random_test        $N    PASSOU"
    "rv_isa_rv32i_test         1     FALHOU"
    "rv_genius_test            1     PASSOU   +GENIUS_FULL"
    "rv_genius_long_press_test 1     FALHOU"
)

printf "\n%-28s %-6s %-9s %-9s %s\n" TESTE SEED ESPERADO OBTIDO OK?
ok_all=1
for line in "${TESTS[@]}"; do
    read -r t seeds exp extra <<< "$line"
    for ((s = 1; s <= seeds; s++)); do
        scripts/run.sh "$t" "$s" ${extra:-} > /dev/null 2>&1
        got=$(grep -oE "TESTE [a-z0-9_]+ (PASSOU|FALHOU)" "build/logs/${t}_${s}.log" | awk '{print $3}')
        got=${got:-ERRO}
        ok="sim"; [[ $got != "$exp" ]] && ok="NAO" && ok_all=0
        printf "%-28s %-6s %-9s %-9s %s\n" "$t" "$s" "$exp" "$got" "$ok"
    done
done
echo
[[ $ok_all == 1 ]] && echo "Regressao OK: todos os resultados conforme o esperado." \
                   || { echo "Regressao com SURPRESAS: veja build/logs/"; exit 1; }
