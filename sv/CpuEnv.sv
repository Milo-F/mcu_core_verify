`include "sv/CpuDriver.sv"
`include "sv/CpuMonitor.sv"
class CpuEnv extends uvm_env;
    // registe
    `uvm_component_utils(CpuEnv);
    // members
    CpuDriver cpu_drv;
    CpuMonitor i_mon, o_mon;
    // methods
    function new(string name = "CpuEnv", uvm_component parent);
        super.new(name, parent);
    endfunction : new
    extern virtual function void build_phase(uvm_phase phase);
endclass : CpuEnv

function void CpuEnv::build_phase(uvm_phase phase);
    super.build_phase(phase);
    cpu_drv = CpuDriver::type_id::create("cpu_drv", this); // factory机制创建实例
    i_mon = CpuMonitor::type_id::create("i_mon", this);
    i_mon.is_out = 0;
    o_mon = CpuMonitor::type_id::create("o_mon", this);
    o_mon.is_out = 1;
endfunction : build_phase