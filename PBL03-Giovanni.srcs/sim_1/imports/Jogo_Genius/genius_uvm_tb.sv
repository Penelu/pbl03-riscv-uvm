`timescale 1ns / 1ps
// GENIUS UVM PRO - SystemVerilog / UVM 1.2 / Vivado XSim 2026.1
// Replaces the previous genius_uvm_tb.sv (same top and external ports).
// Tested structure is based on the earlier UVM TB that passed in user's XSim.
// NOTE: static review only for this expanded version; execute on real DUT.

interface genius_if(input logic clk);
    logic reset_0;
    logic [31:0] switches_in_0;
    logic [3:0] dpad_in_0;
    logic [31:0] led0_out_0, led1_out_0, led2_out_0, led3_out_0;

    // Debug dashboard: all of these signals are visible in the Vivado Wave.
    // Case: 1=easy, 2=medium, 3=hard, 4=wrong, 5=reset, 6..9=manual.
    // Stage: 0=idle, 1=start, 2=display, 3=player, 4=verify, 5=error, 6=done, 7=reset.
    logic [7:0] dbg_case, dbg_stage, dbg_round, dbg_step;
    logic [7:0] dbg_expected_color, dbg_observed_color;
    logic [31:0] dbg_checks, dbg_failures, dbg_led_events, dbg_expected_score;
    logic [3:0] dbg_seen_colors;
    logic [1:0] dbg_difficulty;
    logic dbg_fast, dbg_manual;
    logic [3:0] leds_active;

    always_comb begin
        leds_active = {led3_out_0 != 32'd0, led2_out_0 != 32'd0,
                       led1_out_0 != 32'd0, led0_out_0 != 32'd0};
    end
    function automatic bit any_led();
        return (led0_out_0 != 32'd0 || led1_out_0 != 32'd0 ||
                led2_out_0 != 32'd0 || led3_out_0 != 32'd0);
    endfunction
endinterface

package genius_uvm_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"

    typedef enum {CMD_START, CMD_COLOR, CMD_RESET} genius_command_e;

    class genius_item extends uvm_sequence_item;
        genius_command_e command;
        bit [1:0] color;
        bit [3:0] cfg_bits; // [4] START supplied by driver, [3] manual, [2] fast, [1:0] difficulty
        int unsigned cycles;
        `uvm_object_utils(genius_item)
        function new(string name="genius_item"); super.new(name); endfunction
    endclass

    class genius_sequencer extends uvm_sequencer #(genius_item);
        `uvm_component_utils(genius_sequencer)
        function new(string name,uvm_component parent); super.new(name,parent); endfunction
    endclass

    class genius_driver extends uvm_driver #(genius_item);
        `uvm_component_utils(genius_driver)
        virtual genius_if vif;
        function new(string name,uvm_component parent); super.new(name,parent); endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            if (!uvm_config_db#(virtual genius_if)::get(this,"","vif",vif))
                `uvm_fatal("NOVIF","driver: interface nao encontrada")
        endfunction
        task run_phase(uvm_phase phase);
            genius_item req;
            vif.switches_in_0 = 0;
            vif.dpad_in_0 = 0;
            forever begin
                seq_item_port.get_next_item(req);
                @(negedge vif.clk);
                case (req.command)
                    CMD_START: begin
                        vif.switches_in_0 = 32'h10 | {28'd0, req.cfg_bits};
                        repeat(req.cycles) @(negedge vif.clk);
                        vif.switches_in_0 = 0;
                        `uvm_info("DRIVER",$sformatf("START: cfg=0x%1x (%0d ciclos)",req.cfg_bits,req.cycles),UVM_MEDIUM)
                    end
                    CMD_COLOR: begin
                        vif.dpad_in_0 = 4'b0001 << req.color;
                        repeat(req.cycles) @(negedge vif.clk);
                        vif.dpad_in_0 = 0;
                        `uvm_info("DRIVER",$sformatf("D-Pad cor=%0d (%0d ciclos)",req.color,req.cycles),UVM_MEDIUM)
                    end
                    CMD_RESET: begin
                        vif.switches_in_0 = 0;
                        vif.dpad_in_0 = 0;
                        vif.reset_0 = 1;
                        repeat(req.cycles) @(negedge vif.clk);
                        vif.reset_0 = 0;
                        `uvm_info("DRIVER","Reset aplicado",UVM_MEDIUM)
                    end
                endcase
                seq_item_port.item_done();
            end
        endtask
    endclass

    class genius_led_event extends uvm_sequence_item;
        int unsigned color;
        logic [31:0] rgb;
        time rise_time;
        `uvm_object_utils(genius_led_event)
        function new(string name="genius_led_event"); super.new(name); endfunction
    endclass

    class genius_monitor extends uvm_component;
        `uvm_component_utils(genius_monitor)
        virtual genius_if vif;
        uvm_analysis_port #(genius_led_event) ap;
        bit previously_lit;
        bit [3:0] color_mask;
        int unsigned event_count;
        int unsigned invalid_leds;
        time first_pulse_width;
        time on_time;
        covergroup coverage_led with function sample(int color, int difficulty, int fast, int manual);
            option.per_instance = 1;
            cp_color: coverpoint color { bins led0={0}; bins led1={1}; bins led2={2}; bins led3={3}; }
            cp_difficulty: coverpoint difficulty { bins easy={0}; bins nivel_medio={1}; bins hard={2}; }
            cp_fast: coverpoint fast { bins slow={0}; bins fast_mode={1}; }
            cp_manual: coverpoint manual { bins siga={0}; bins mando={1}; }
        endgroup
        function new(string name,uvm_component parent);
            super.new(name,parent);
            coverage_led = new();
        endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            ap = new("ap",this);
            if (!uvm_config_db#(virtual genius_if)::get(this,"","vif",vif))
                `uvm_fatal("NOVIF","monitor: interface nao encontrada")
        endfunction
        task run_phase(uvm_phase phase);
            int n;
            bit lit;
            genius_led_event ev;
            previously_lit=0;
            forever begin
                @(negedge vif.clk);
                if (vif.reset_0) begin
                    previously_lit=0;
                end else begin
                    n=int'(vif.led0_out_0 != 32'd0)+int'(vif.led1_out_0 != 32'd0)
                     +int'(vif.led2_out_0 != 32'd0)+int'(vif.led3_out_0 != 32'd0);
                    lit=(n!=0);
                    if(n>1) begin
                        invalid_leds++;
                        `uvm_error("LED_ONEHOT","Mais de um LED ativo simultaneamente")
                    end
                    if(lit && !previously_lit && n==1) begin
                        ev=genius_led_event::type_id::create("ev");
                        if(vif.led0_out_0 != 0) begin ev.color=0; ev.rgb=vif.led0_out_0; end
                        else if(vif.led1_out_0 != 0) begin ev.color=1; ev.rgb=vif.led1_out_0; end
                        else if(vif.led2_out_0 != 0) begin ev.color=2; ev.rgb=vif.led2_out_0; end
                        else begin ev.color=3; ev.rgb=vif.led3_out_0; end
                        ev.rise_time=$time;
                        on_time=$time;
                        event_count++;
                        color_mask[ev.color]=1;
                        coverage_led.sample(ev.color,int'(vif.dbg_difficulty),int'(vif.dbg_fast),int'(vif.dbg_manual));
                        ap.write(ev);
                        `uvm_info("LED",$sformatf("Evento=%0d LED%0d RGB=%08h t=%0t",event_count,ev.color,ev.rgb,ev.rise_time),UVM_MEDIUM)
                    end
                    if(!lit && previously_lit && first_pulse_width==0)
                        first_pulse_width=$time-on_time;
                    previously_lit=lit;
                end
            end
        endtask
    endclass

    class genius_scoreboard extends uvm_component;
        `uvm_component_utils(genius_scoreboard)
        uvm_analysis_imp #(genius_led_event,genius_scoreboard) input_events;
        virtual genius_if vif;
        int unsigned total;
        int unsigned rgb_errors;
        int unsigned colors[0:2047];
        logic [31:0] rgb_values[0:2047];
        bit [3:0] color_mask;
        function new(string name,uvm_component parent); super.new(name,parent); endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            input_events=new("input_events",this);
            if (!uvm_config_db#(virtual genius_if)::get(this,"","vif",vif))
                `uvm_fatal("NOVIF","scoreboard: interface nao encontrada")
        endfunction
        function automatic logic [31:0] rgb_expected(int unsigned c);
            case(c)
                0: return 32'h00FF0000;
                1: return 32'h0000FF00;
                2: return 32'h000000FF;
                3: return 32'h00FFFF00;
                default: return 32'hXXXXXXXX;
            endcase
        endfunction
        function void clear();
            total=0;
            rgb_errors=0;
            color_mask=0;
            vif.dbg_led_events=0;
            vif.dbg_seen_colors=0;
        endfunction
        function void write(genius_led_event ev);
            if (total>=2048) begin
                `uvm_fatal("LOG_OVERFLOW","Mais de 2048 eventos; aumente o log")
            end
            colors[total]=ev.color;
            rgb_values[total]=ev.rgb;
            total++;
            color_mask[ev.color]=1;
            vif.dbg_led_events=total;
            vif.dbg_seen_colors=color_mask;
            vif.dbg_observed_color=8'(ev.color);
            if (ev.rgb !== rgb_expected(ev.color)) begin
                rgb_errors++;
                `uvm_error("RGB",$sformatf("LED%0d: RGB=%08h esperado=%08h",ev.color,ev.rgb,rgb_expected(ev.color)))
            end
        endfunction
    endclass

    class genius_agent extends uvm_agent;
        `uvm_component_utils(genius_agent)
        genius_driver drv;
        genius_sequencer sqr;
        genius_monitor mon;
        function new(string name,uvm_component parent); super.new(name,parent); endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            drv=genius_driver::type_id::create("drv",this);
            sqr=genius_sequencer::type_id::create("sqr",this);
            mon=genius_monitor::type_id::create("mon",this);
        endfunction
        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
            drv.seq_item_port.connect(sqr.seq_item_export);
        endfunction
    endclass

    class genius_env extends uvm_env;
        `uvm_component_utils(genius_env)
        genius_agent agt;
        genius_scoreboard sb;
        function new(string name,uvm_component parent); super.new(name,parent); endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            agt=genius_agent::type_id::create("agt",this);
            sb=genius_scoreboard::type_id::create("sb",this);
        endfunction
        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
            agt.mon.ap.connect(sb.input_events);
        endfunction
    endclass

    class genius_command_sequence extends uvm_sequence #(genius_item);
        `uvm_object_utils(genius_command_sequence)
        genius_command_e command;
        bit [1:0] color;
        bit [3:0] cfg_bits;
        int unsigned cycles=20;
        function new(string name="genius_command_sequence"); super.new(name); endfunction
        task body();
            genius_item t;
            t=genius_item::type_id::create("t");
            start_item(t);
            t.command=command;
            t.color=color;
            t.cfg_bits=cfg_bits;
            t.cycles=cycles;
            finish_item(t);
        endtask
    endclass

    class genius_uvm_test extends uvm_test;
        `uvm_component_utils(genius_uvm_test)
        genius_env env;
        virtual genius_if vif;
        int unsigned checks, failures, passed_cases;
        bit full_suite;
        bit [3:0] global_color_mask;
        time slow_width, fast_width;

        function new(string name,uvm_component parent); super.new(name,parent); endfunction
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            env=genius_env::type_id::create("env",this);
            if (!uvm_config_db#(virtual genius_if)::get(this,"","vif",vif))
                `uvm_fatal("NOVIF","test: interface nao encontrada")
            full_suite=$test$plusargs("GENIUS_FULL");
        endfunction

        task verificar_condicao(bit condition,string explanation);
            checks++;
            vif.dbg_checks=checks;
            if(!condition) begin
                failures++;
                vif.dbg_failures=failures;
                `uvm_error("CHECK",explanation)
            end else
                `uvm_info("CHECK_OK",explanation,UVM_MEDIUM)
        endtask

        task send(genius_command_e cmd,bit[1:0] color=0,bit[3:0] cfg_bits=0,int cycles=20);
            genius_command_sequence seq;
            seq=genius_command_sequence::type_id::create("seq");
            seq.command=cmd; seq.color=color; seq.cfg_bits=cfg_bits; seq.cycles=cycles;
            seq.start(env.agt.sqr);
        endtask

        task clock_wait(int n);
            repeat(n) @(negedge vif.clk);
        endtask

        task wait_events(int unsigned goal,int cycles_limit=4000);
            for(int k=0;k<cycles_limit;k++) begin
                if(env.sb.total>=goal) return;
                @(negedge vif.clk);
            end
            `uvm_fatal("TIMEOUT",$sformatf("Esperava %0d ativacoes LED; obtive %0d; caso=%0d rodada=%0d",
                                    goal,env.sb.total,vif.dbg_case,vif.dbg_round))
        endtask

        task wait_leds_off(int cycles_limit=2000);
            for(int k=0;k<cycles_limit;k++) begin
                @(negedge vif.clk);
                if(!vif.any_led()) begin
                    clock_wait(40); // enough for firmware to return from display and poll D-Pad
                    if(!vif.any_led()) return;
                end
            end
            `uvm_fatal("TIMEOUT","LED nao apagou depois da exibicao")
        endtask

        task wait_quiet(int cycles=500);
            int unsigned before_count;
            before_count=env.sb.total;
            for(int k=0;k<cycles;k++) begin
                @(negedge vif.clk);
                if(env.sb.total!=before_count || vif.any_led()) begin
                    verificar_condicao(0,$sformatf("Saida inesperada no estado inativo: antes=%0d agora=%0d",
                                       before_count,env.sb.total));
                    return;
                end
            end
            verificar_condicao(1,$sformatf("Silencio apos erro/game-over durante %0d clocks",cycles));
        endtask

        function automatic bit[1:0] next_lfsr(ref bit[7:0] state);
            bit feedback;
            feedback=state[7]^state[5]^state[4]^state[3];
            state={state[6:0],feedback};
            return state[1:0];
        endfunction

        task check_range(int unsigned start_idx,int count,bit[1:0] seq[0:31]);
            int observed;
            for(int i=0;i<count;i++) begin
                vif.dbg_step=8'(i+1);
                vif.dbg_expected_color={6'd0,seq[i]};
                observed=int'(env.sb.colors[start_idx+i]);
                vif.dbg_observed_color=8'(observed);
                verificar_condicao(observed==int'(seq[i]),
                      $sformatf("Replay passo %0d/%0d: LED%0d observado; LED%0d esperado",
                      i+1,count,observed,seq[i]));
            end
        endtask

        task case_begin(int unsigned id,string label_case,bit[1:0] difficulty,bit fast,bit manual);
            vif.dbg_case=8'(id);
            vif.dbg_stage=7;
            vif.dbg_round=0; vif.dbg_step=0;
            vif.dbg_expected_color=8'hff;
            vif.dbg_observed_color=8'hff;
            vif.dbg_expected_score=0;
            vif.dbg_difficulty=difficulty;
            vif.dbg_fast=fast;
            vif.dbg_manual=manual;
            send(CMD_RESET,0,0,12);
            clock_wait(45); // initialize registers and reach idle_wait
            verificar_condicao(!vif.any_led(),"LEDs apagados antes de iniciar o caso");
            env.sb.clear();
            `uvm_info("CASE",$sformatf("========== CASO %0d: %s ==========",id,label_case),UVM_NONE)
        endtask

        task case_end(string name_case,int failures_before);
            verificar_condicao(env.sb.rgb_errors==0,
                  $sformatf("Valores RGB corretos neste caso (erros=%0d)",env.sb.rgb_errors));
            global_color_mask |= env.sb.color_mask;
            if(failures==failures_before) begin
                passed_cases++;
                `uvm_info("CASE_PASS",$sformatf("PASSOU: %s | LEDs observados=%0d | mascara=%04b",
                             name_case,env.sb.total,env.sb.color_mask),UVM_NONE)
            end else begin
                `uvm_error("CASE_FAIL",$sformatf("FALHOU: %s (%0d falhas novas)",name_case,failures-failures_before))
            end
            vif.dbg_stage=6;
        endtask

        // Automatic reproduction of every full prefix. The N+1 round proves
        // that the processor accepted ALL responses in round N.
        task run_siga(int id,string label_case,bit[1:0] difficulty,bit fast,int n_rounds);
            bit[7:0] lfsr;
            bit[1:0] seq_cores[0:31];
            bit[1:0] wrong_color;
            bit[3:0] cfg;
            int expected_total;
            int start_at;
            int failures_before;
            int weight;
            failures_before=failures;
            lfsr=8'hA5;
            expected_total=0;
            weight=(int'(difficulty)+1)*(fast?2:1);
            cfg={1'b0,fast,difficulty};
            case_begin(id,label_case,difficulty,fast,0);
            vif.dbg_stage=1;
            send(CMD_START,0,cfg,35);
            for(int r=1;r<=n_rounds;r++) begin
                vif.dbg_round=8'(r);
                vif.dbg_stage=2;
                seq_cores[r-1]=next_lfsr(lfsr);
                start_at=expected_total;
                expected_total+=r;
                wait_events(expected_total);
                check_range(start_at,r,seq_cores);
                wait_leds_off();
                vif.dbg_stage=3;
                for(int i=0;i<r;i++) begin
                    vif.dbg_step=8'(i+1);
                    send(CMD_COLOR,seq_cores[i],0,20);
                    clock_wait(40);
                end
                vif.dbg_expected_score += (r*weight);
                `uvm_info("ROUND",$sformatf("Rodada %0d concluida; proxima exibicao confirmara as respostas",r),UVM_LOW)
            end
            if(n_rounds < ((difficulty==0)?8:((difficulty==1)?16:32))) begin
                // Validate arrival and full prefix of the following round.
                vif.dbg_round=8'(n_rounds+1);
                vif.dbg_stage=4;
                seq_cores[n_rounds]=next_lfsr(lfsr);
                start_at=expected_total;
                expected_total+=(n_rounds+1);
                wait_events(expected_total);
                check_range(start_at,n_rounds+1,seq_cores);
                wait_leds_off();
                // Make a deliberately wrong first answer to stop cleanly.
                wrong_color=seq_cores[0]+2'd1;
                vif.dbg_stage=5;
                send(CMD_COLOR,wrong_color,0,20);
                clock_wait(50);
                wait_quiet(300);
            end else begin
                // At maximum length the firmware goes to game_over after final input.
                vif.dbg_stage=4;
                clock_wait(100);
                wait_quiet(300);
            end
            case_end(label_case,failures_before);
        endtask

        // Wrong answer AFTER a valid prefix (tests more than the first step).
        task run_wrong_mid();
            bit[1:0] seq_cores[0:31];
            bit[7:0] lfsr;
            bit[1:0] wrong;
            int fail_before;
            fail_before=failures;
            lfsr=8'hA5;
            case_begin(4,"Resposta errada no meio da sequencia e novo START",0,0,0);
            send(CMD_START,0,4'h0,35);
            seq_cores[0]=next_lfsr(lfsr);
            vif.dbg_round=1; vif.dbg_stage=2;
            wait_events(1); check_range(0,1,seq_cores); wait_leds_off();
            send(CMD_COLOR,seq_cores[0],0,20); clock_wait(40);
            seq_cores[1]=next_lfsr(lfsr);
            vif.dbg_round=2;
            wait_events(3); check_range(1,2,seq_cores); wait_leds_off();
            send(CMD_COLOR,seq_cores[0],0,20); clock_wait(40);
            send(CMD_COLOR,seq_cores[1],0,20); clock_wait(40);
            seq_cores[2]=next_lfsr(lfsr);
            vif.dbg_round=3;
            wait_events(6); check_range(3,3,seq_cores); wait_leds_off();
            send(CMD_COLOR,seq_cores[0],0,20); clock_wait(40);
            wrong=seq_cores[1]+2'd1;
            vif.dbg_stage=5;
            send(CMD_COLOR,wrong,0,20); clock_wait(40);
            wait_quiet(500);
            // The program is now at idle_wait; without resetting it should accept a new START.
            vif.dbg_stage=1;
            send(CMD_START,0,4'h0,35);
            seq_cores[0]=next_lfsr(lfsr); // LFSR keeps running until reset.
            wait_events(7);
            check_range(6,1,seq_cores);
            wait_leds_off();
            wrong=seq_cores[0]+2'd1;
            send(CMD_COLOR,wrong,0,20); clock_wait(40);
            wait_quiet(300);
            case_end("Resposta errada + reinicio por START",fail_before);
        endtask

        // CPU reset while waiting for the player, with LEDs already OFF.
        // MMIO LED registers in current RTL have no reset input: this does
        // NOT make a claim about reset during an active LED pulse.
        task run_reset_mid();
            bit[7:0] state;
            bit[1:0] seq_cores[0:31];
            bit[1:0] wrong;
            int fail_before;
            fail_before=failures;
            case_begin(5,"Reset no meio de uma partida",0,0,0);
            state=8'hA5;
            send(CMD_START,0,4'h0,35);
            seq_cores[0]=next_lfsr(state);
            wait_events(1); check_range(0,1,seq_cores); wait_leds_off();
            send(CMD_COLOR,seq_cores[0],0,20); clock_wait(40);
            seq_cores[1]=next_lfsr(state);
            wait_events(3); check_range(1,2,seq_cores); wait_leds_off();
            // Player has not responded to the two-color sequence.
            vif.dbg_stage=7;
            send(CMD_RESET,0,0,12);
            clock_wait(45);
            verificar_condicao(!vif.any_led(),"Reset no estado de espera mantem LEDs apagados");
            env.sb.clear();
            state=8'hA5;
            vif.dbg_round=1;
            send(CMD_START,0,4'h0,35);
            seq_cores[0]=next_lfsr(state);
            wait_events(1); check_range(0,1,seq_cores); wait_leds_off();
            wrong=seq_cores[0]+2'd1;
            send(CMD_COLOR,wrong,0,20); clock_wait(40);
            wait_quiet(300);
            case_end("Reset no meio da partida",fail_before);
        endtask

        // Manual mode: the player supplies a new color, the CPU must show
        // that exact LED. Each color is isolated by a reset so the current
        // level-sensitive D-Pad firmware cannot misread a held key as a second entry.
        task run_manual_color(bit[1:0] color,int id);
            bit[1:0] seq_cores[0:31];
            bit[1:0] wrong;
            int fail_before;
            string case_name;
            fail_before=failures;
            case_name=$sformatf("Mando eu - LED%0d",color);
            case_begin(id,case_name,0,0,1);
            vif.dbg_stage=1;
            send(CMD_START,0,4'b1000,35);
            clock_wait(65);
            vif.dbg_expected_color={6'd0,color};
            send(CMD_COLOR,color,0,20); // input used to create first sequence entry
            seq_cores[0]=color;
            vif.dbg_stage=2;
            wait_events(1); check_range(0,1,seq_cores); wait_leds_off();
            wrong=color+2'd1; // end the isolated case without appending another LED
            vif.dbg_stage=5;
            send(CMD_COLOR,wrong,0,20); clock_wait(40);
            wait_quiet(300);
            case_end(case_name,fail_before);
        endtask

        task run_phase(uvm_phase phase);
            int easy_rounds,medium_rounds,hard_rounds;
            phase.raise_objection(this);
            wait(vif.reset_0==1'b0);
            clock_wait(5);
            vif.dbg_checks=0; vif.dbg_failures=0;
            global_color_mask=0;
            easy_rounds=full_suite?8:3;
            medium_rounds=full_suite?16:4;
            hard_rounds=full_suite?32:6;
            `uvm_info("SUITE",$sformatf("GENIUS UVM PRO | modo=%s | easy=%0d medium=%0d hard=%0d",
                               full_suite?"COMPLETO":"RAPIDO",easy_rounds,medium_rounds,hard_rounds),UVM_NONE)

            run_siga(1,"Siga facil / lento",0,0,easy_rounds);
            slow_width=env.agt.mon.first_pulse_width;
            env.agt.mon.first_pulse_width=0;
            run_siga(2,"Siga medio / rapido",1,1,medium_rounds);
            fast_width=env.agt.mon.first_pulse_width;
            verificar_condicao(slow_width>0 && fast_width>0 && fast_width<slow_width,
                $sformatf("Velocidade: lento=%0t, rapido=%0t (rapido deve ser menor)",slow_width,fast_width));
            env.agt.mon.first_pulse_width=0;
            run_siga(3,"Siga dificil / rapido - quatro LEDs",2,1,hard_rounds);
            run_wrong_mid();
            run_reset_mid();
            for(int c=0;c<4;c++) run_manual_color(2'(c),6+c);

            verificar_condicao(global_color_mask==4'b1111,
                  $sformatf("Cobertura das quatro cores: %04b (esperado 1111)",global_color_mask));
            verificar_condicao(env.agt.mon.invalid_leds==0,
                  $sformatf("Violacoes de LED one-hot=%0d",env.agt.mon.invalid_leds));

            `uvm_info("FINAL", "============================================================",UVM_NONE)
            `uvm_info("FINAL", $sformatf("GENIUS UVM PRO | casos aprovados=%0d/9 | verificacoes=%0d | falhas=%0d",
                                          passed_cases,checks,failures),UVM_NONE)
            `uvm_info("FINAL", $sformatf("4 LEDs: mascara=%04b | cor0=%0d cor1=%0d cor2=%0d cor3=%0d",
                              global_color_mask,global_color_mask[0],global_color_mask[1],global_color_mask[2],global_color_mask[3]),UVM_NONE)
            if(failures==0)
                `uvm_info("FINAL","SUITE PASSOU: todos os checks automaticos foram aprovados",UVM_NONE)
            else
                `uvm_error("FINAL",$sformatf("SUITE FALHOU: %0d verificacoes falharam",failures))
            `uvm_info("FINAL", "============================================================",UVM_NONE)
            phase.drop_objection(this);
        endtask
    endclass
endpackage

module genius_uvm_tb;
    import uvm_pkg::*;
    import genius_uvm_pkg::*;

    logic clk_0=1'b0;
    always #5 clk_0=~clk_0;
    genius_if gif(clk_0);

    RISCVPROJECT_wrapper dut (
        .clk_0(clk_0),.reset_0(gif.reset_0),
        .switches_in_0(gif.switches_in_0),.dpad_in_0(gif.dpad_in_0),
        .led0_out_0(gif.led0_out_0),.led1_out_0(gif.led1_out_0),
        .led2_out_0(gif.led2_out_0),.led3_out_0(gif.led3_out_0)
    );

    initial begin
        gif.reset_0=1;
        gif.switches_in_0=0;
        gif.dpad_in_0=0;
        gif.dbg_case=0; gif.dbg_stage=0; gif.dbg_round=0; gif.dbg_step=0;
        gif.dbg_expected_color=8'hff; gif.dbg_observed_color=8'hff;
        gif.dbg_checks=0; gif.dbg_failures=0; gif.dbg_led_events=0;
        gif.dbg_expected_score=0; gif.dbg_seen_colors=0;
        gif.dbg_difficulty=0; gif.dbg_fast=0; gif.dbg_manual=0;
        repeat(4) @(negedge clk_0);
        gif.reset_0=0;
    end
    initial begin
        uvm_config_db#(virtual genius_if)::set(null,"*","vif",gif);
        run_test("genius_uvm_test");
    end
    // Watchdog protects against a test that gets stuck; do not run long times manually.
    initial begin
        if ($test$plusargs("GENIUS_FULL")) #50000000; // 50 ms in full suite
        else #2000000; // 2 ms in quick suite
        $fatal(1,"WATCHDOG: UVM nao encerrou no limite previsto");
    end
endmodule
