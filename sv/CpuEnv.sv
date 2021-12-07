
`include "sv/CpuAgent.sv"
`include "sv/RefModel.sv"
// `include "ref_model/ref_model.c"
class CpuEnv extends uvm_env;
    // registe
    `uvm_component_utils(CpuEnv);
    // members
    CpuAgent i_agt, o_agt;
    RefModel mod;
    uvm_tlm_analysis_fifo #(InTrans) mon_mod_fifo; // monitor发送对应的激励给reference model
    uvm_tlm_analysis_fifo #(OutTrans) mod_scb_fifo; // reference model 将ref data发给scoreboard
    uvm_tlm_analysis_fifo #(OutTrans) mon_scb_fifo; // monitor将DUT的data发送给scoreboard
    // methods
    function new(string name = "CpuEnv", uvm_component parent);
        super.new(name, parent);
    endfunction : new
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
endclass : CpuEnv

function void CpuEnv::build_phase(uvm_phase phase);
    super.build_phase(phase);
    i_agt = CpuAgent::type_id::create("i_agt", this);
    o_agt = CpuAgent::type_id::create("o_agt", this);
    i_agt.is_active = UVM_ACTIVE;
    o_agt.is_active = UVM_PASSIVE;
    mod = RefModel::type_id::create("mod", this);
    mon_mod_fifo = new("mon_mod_fifo", this);
    mon_scb_fifo = new("mon_scb_fifo", this);
    mod_scb_fifo = new("mod_scb_fifo", this);
    // $display("aaaaaaaaaaaaaaaaaaa: %d", mod());
endfunction : build_phase

function void CpuEnv::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    i_agt.ap.connect(mon_mod_fifo.analysis_export);
    mod.port.connect(mon_mod_fifo.blocking_get_export);
endfunction