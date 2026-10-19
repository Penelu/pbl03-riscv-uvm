# Verificação do processador RISC-V (Genius): achados e perguntas

**Base verificada:** projeto `PBL03-Giovanni` como foi entregue (RTL em `PBL03-Giovanni.srcs/sources_1/new/`,
block design `RISCVPROJECT`, programa `genius.mem`). Nenhum arquivo foi alterado.

**Resumo:** o processador executa **corretamente** todas as instruções que o programa do
Genius usa. Foram ~98 mil instruções do jogo real e ~5.500 instruções aleatórias comparadas
uma a uma com um modelo de referência RV32I, com **0 divergências**. Placar, cores e tempos
batem com as regras nas 3 dificuldades, nas 2 velocidades e nos 2 modos. Os pontos abaixo
são o que encontramos fora disso.

---

## Achados

### A1. Instruções RV32I executadas errado sem nenhum aviso
O decoder não marca as instruções abaixo como ilegais: ele as executa como outra coisa.
O programa do jogo não usa nenhuma delas, então **o jogo não é afetado**. Mas o
comportamento é perigoso se o programa mudar:

| Instrução | O que o DUT faz | Exemplo observado |
|---|---|---|
| `SLTU`, `SLTIU` | executa ADD | `sltu x14,x10,x5` → `7fffffff` (esperado `0`) |
| `SRA`, `SRAI` | executa SRL (perde o sinal) | `srai x2,x13,19` → `00001fff` (esperado `ffffffff`) |
| `BLT`, `BGEU` | nunca salta | `bgeu x20,x20,16` não saltou |
| `LH`, `LHU`, `LBU` | não escreve `rd` | |
| `SH` | não escreve na memória | |

*Pergunta 1:* o subconjunto suportado está documentado em algum lugar? O ideal seria
implementar as instruções ou, no mínimo, documentar a lista.

### A2. Programa: botão lido por nível, sem esperar soltar
Depois de aceitar um botão, o programa volta a ler o D-Pad cerca de 30 ciclos depois. Se o
botão ainda estiver pressionado, ele conta **de novo**. Na simulação, segurar o botão por 300
ciclos (3 µs) faz o jogo terminar na rodada 2. Na placa, um dedo fica pressionado por ~100 ms
(10 milhões de ciclos), então o jogo ficaria injogável a partir da rodada 2.
O inverso também acontece: um aperto curto feito durante o "tempo apagado" depois da exibição se perde.
*Sugestão:* esperar o botão ser solto (e aplicar *debounce*) antes de aceitar o próximo.


### A3. Temporização e versão do programa
- Em `sources_1/new/genius.mem`, os LEDs ficam acesos por 40 ticks (lento) ou 20 (rápido) do
  contador RTC, ou seja, 0,4 µs / 0,2 µs a 100 MHz. A especificação pede 2 s / 1 s.
- Existe outra versão do programa em `sim_1/new/genius.txt`, diferente do `genius.mem`: ela
  imprime o placar com `ecall` (que o processador não implementa) e espera 2×10⁹ / 10⁹ ticks
  (LED aceso) e 2×10⁸ (apagado). A 100 MHz isso dá **20 s / 10 s**; só daria 2 s / 1 s com um
  contador de 1 GHz.

*Pergunta 2:* qual é a versão oficial do programa? Os 40/20 ciclos são uma escala proposital
para simulação?

### A4. Polaridade do reset
No block design, `reset_0` tem `POLARITY ACTIVE_LOW`, mas o `PC.sv` reseta com `reset = 1`.

*Pergunta 3:* qual é a polaridade correta na placa (o botão é ativo em baixo)?

---

## Outras perguntas (não bloqueiam a verificação)

4. No modo "Mando eu", o jogador escolhe a nova cor **antes** de o aparelho exibir a sequência.
   A especificação descreve "reproduzir acrescentando uma nova luz". A ordem atual é intencional?
