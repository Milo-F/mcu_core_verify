`include "sv/CpuSequence.sv"

class CpuSequencer extends uvm_sequencer #(InTrans);
    // regist
    `uvm_component_utils(CpuSequencer);
    // members
    CpuSequence seq;
    // methods
    function new(string name = "CpuSequence", uvm_component parent);
        super.new(name, parent);
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass

function void CpuSequencer::build_phase(uvm_phase phase);
    super.build_phase(phase);
    seq = CpuSequence::type_id::create("seq");
endfunction 

task CpuSequencer::main_phase(uvm_phase phase);
    phase.raise_objection(this);
    super.main_phase(phase);
    seq.start(this);
    phase.drop_objection(this);
endtask 