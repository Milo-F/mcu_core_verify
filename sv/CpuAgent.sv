`include "sv/CpuDriver.sv"
`include "sv/CpuMonitor.sv"

class CpuAgent extends uvm_agent;
    // regist
    `uvm_component_utils(CpuAgent);
    // members
    CpuMonitor mon;
    CpuDriver drv;
    uvm_analysis_port #(InTrans) ap;
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
        mon.is_out = 0;
    end
endfunction

function void CpuAgent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ap = mon.ap;
endfunction