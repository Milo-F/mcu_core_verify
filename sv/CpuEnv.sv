`include "sv/CpuAgent.sv"
class CpuEnv extends uvm_env;
    // registe
    `uvm_component_utils(CpuEnv);
    // members
    CpuAgent i_agt, o_agt;
    // methods
    function new(string name = "CpuEnv", uvm_component parent);
        super.new(name, parent);
    endfunction : new
    extern virtual function void build_phase(uvm_phase phase);
endclass : CpuEnv

function void CpuEnv::build_phase(uvm_phase phase);
    super.build_phase(phase);
    i_agt = CpuAgent::type_id::create("i_agt", this);
    o_agt = CpuAgent::type_id::create("o_agt", this);
    i_agt.is_active = UVM_ACTIVE;
    o_agt.is_active = UVM_PASSIVE;
endfunction : build_phase