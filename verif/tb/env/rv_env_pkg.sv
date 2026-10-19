// =============================================================================
// rv_env_pkg.sv  -  pacote com todos os componentes do ambiente
// -----------------------------------------------------------------------------
// A ordem dos `include importa: uma classe so pode ser usada depois de
// declarada (itens -> monitores/drivers -> agentes -> modelo -> env).
// =============================================================================
package rv_env_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"
    import rv_isa_pkg::*;

    // agente de programa (ativo)
    `include "agents/prog_agent/rv_prog_item.sv"
    `include "agents/prog_agent/rv_prog_driver.sv"
    `include "agents/prog_agent/rv_prog_agent.sv"
    // agente de commit (passivo)
    `include "agents/commit_agent/rv_commit_item.sv"
    `include "agents/commit_agent/rv_commit_monitor.sv"
    `include "agents/commit_agent/rv_commit_agent.sv"
    // agente de E/S do jogo (ativo)
    `include "agents/io_agent/rv_io_items.sv"
    `include "agents/io_agent/rv_io_driver.sv"
    `include "agents/io_agent/rv_io_monitor.sv"
    `include "agents/io_agent/rv_io_agent.sv"
    // modelos de referencia
    `include "ref_model/rv_ref_model.sv"
    `include "ref_model/rv_genius_model.sv"
    // topo do ambiente
    `include "top/rv_scoreboard.sv"
    `include "top/rv_coverage.sv"
    `include "top/rv_env.sv"
endpackage
