`include "sv/InTrans.sv"
`include "sv/OutTrans.sv"

class CpuDriver extends uvm_driver;
    // registe
    `uvm_component_utils(CpuDriver); // 在component tree中注册, 所有自uvm_component派生的类都需要注册
    // members
    virtual CpuInterface cpu_if;
    InTrans tr;
    // methods
    function new(string name = "CpuDriver", uvm_component parent = null);
        super.new(name, parent);
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass //driver extends uvm 

function void CpuDriver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("CpuDriver", "build_pahse has run", UVM_LOW);
    if (! uvm_config_db #(virtual CpuInterface)::get(this, "", "cpu_if", cpu_if)) begin
        `uvm_fatal("CpuDriver", "a fatal accured!");
    end
endfunction

task CpuDriver::main_phase(uvm_phase phase);
    int i = 20;
    super.main_phase(phase);
    phase.raise_objection(this);
    // reset
    cpu_if.interupt <= 5'b0;
    cpu_if.data_to_dut <= 8'b0;
    // wait for reset release
    while (!TopTb.rst_n) begin
        @(posedge cpu_if.clk);
    end
    while (i > 0) begin
        repeat(10) @(posedge cpu_if.clk);
        tr = new();
        assert (tr.randomize());
        cpu_if.data_to_dut <= tr.data;
        cpu_if.interupt <= tr.interupt;
        i--;
    end
    @(posedge cpu_if.clk);
    cpu_if.data_to_dut <= 8'b0;
    `uvm_info("CpuDriver", "main_phase has run", UVM_LOW);
    phase.drop_objection(this);
endtask