`include "sv/CpuDriver.sv"
`include "sv/CpuMonitor.sv"
`include "sv/CpuSequencer.sv"

class CpuAgent extends uvm_agent;
    // regist
    `uvm_component_utils(CpuAgent);
    // members
    CpuMonitor mon;
    CpuDriver drv;
    CpuSequencer sqr;
    // methods
    function new(string name = "CpuAgent", uvm_component parent);
        super.new(name, parent);
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
endclass

function void CpuAgent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    mon = CpuMonitor::type_id::create("mon", this);
    if (is_active == UVM_ACTIVE) begin
        drv = CpuDriver::type_id::create("drv", this);
        sqr = CpuSequencer::type_id::create("sqr", this);
        mon.is_out = 0;
    end
endfunction

function void CpuAgent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (is_active == UVM_ACTIVE) begin
        drv.seq_item_port.connect(sqr.seq_item_export);
    end
endfunction