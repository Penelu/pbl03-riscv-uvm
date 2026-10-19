# PBL03 — Verificação UVM do processador RISC-V do Genius

Este repositório contém um processador RISC-V monociclo feito para rodar o jogo Genius (PBL03)
e o **ambiente UVM** usado para verificá-lo.

> **Autor do processador, comece por aqui:** [verif/ACHADOS_E_PERGUNTAS.md](verif/ACHADOS_E_PERGUNTAS.md).
> Ali estão os achados e as perguntas que precisam de resposta.

## Resultado em uma frase

O processador executa **corretamente** todas as instruções que o programa do Genius usa:
~98 mil instruções do jogo real e ~5.500 aleatórias, comparadas uma a uma com um modelo de
referência, com **0 divergências**. Os pontos em aberto são instruções RV32I fora do subconjunto,
o tratamento do botão no programa, os tempos e a polaridade do reset.

## O que tem aqui

| Pasta | Conteúdo |
|---|---|
| `*.xpr`, `*.srcs/`, `*.gen/`, `*.ip_user_files/` | Projeto Vivado original do processador, **sem alterações** (commit `42ed3f9`) |
| `verif/tb/` | Ambiente UVM (agentes, modelo de referência, scoreboard, cobertura, testes) |
| `verif/scripts/` | `run.sh` (roda um teste) e `regress.sh` (roda todos) |
| `verif/srclist/` | Listas de arquivos compilados (RTL do DUT e testbench) |
| `verif/mem/data.mem` | Cópia do `data.mem` usado na simulação |
| `verif/ACHADOS_E_PERGUNTAS.md` | Achados e perguntas para o autor do processador |

## Como rodar

Requisito: **Vivado 2026.1** (XSim). Não é preciso abrir o projeto `.xpr`.

```bash
export VIVADO=/caminho/para/2026.1/Vivado    # pasta com o settings64.sh
cd verif
scripts/regress.sh                            # todos os testes (~30 s)
scripts/run.sh rv_genius_test 1 --gui         # um teste, com formas de onda
```

O resumo aparece no terminal; o log completo fica em `verif/build/logs/`.

## Testes

| Teste | O que verifica | Resultado |
|---|---|---|
| `rv_isa_directed_test` | Cada instrução suportada, com casos de canto | Passa |
| `rv_isa_random_test` | Programas aleatórios com as instruções suportadas | Passa |
| `rv_isa_rv32i_test` | RV32I completo | Falha, como esperado (A1) |
| `rv_genius_test` | O jogo real: 3 dificuldades, 2 velocidades, 2 modos, placar | Passa |
| `rv_genius_long_press_test` | Jogador segurando o botão por mais tempo | Falha, como esperado (A2) |

"Falha, como esperado" quer dizer que o teste foi feito para expor um problema conhecido.
Se um desses testes passar a passar, o problema foi corrigido.

## Como a verificação funciona

Dois níveis rodam ao mesmo tempo:

- **Processador (ISA):** um monitor observa cada instrução que o processador conclui (PC, registrador
  escrito, escrita em memória, próximo PC). Um modelo RV32I, escrito a partir da especificação,
  executa a mesma instrução, e o scoreboard compara os dois.
- **Sistema (jogo):** um "jogador" UVM aperta os botões, observa os LEDs e confere cor, RGB, tempo
  aceso e placar.

Se o jogo falha **sem** divergência de ISA, o problema está no programa, e não no processador.

## Para o autor do processador: como responder ou corrigir

1. Responda às perguntas do [arquivo de achados](verif/ACHADOS_E_PERGUNTAS.md) abrindo uma *issue* neste repositório.
2. Se corrigir o RTL ou o programa, rode `verif/scripts/regress.sh`: ele mostra o que mudou em
   relação ao resultado esperado.
3. Para ver exatamente o que foi alterado em relação à entrega original: `git diff 42ed3f9 -- . ':(exclude)verif' ':(exclude)README.md'`.
