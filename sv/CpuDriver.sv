`include "sv/InTrans.sv"
`include "sv/OutTrans.sv"

class CpuDriver extends uvm_driver #(InTrans);
    // registe
    `uvm_component_utils(CpuDriver); // 在component tree中注册, 所有自uvm_component派生的类都需要注册
    // members
    virtual CpuInterface cpu_if;
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
    super.main_phase(phase);
    // reset
    cpu_if.interupt <= 5'b0;
    cpu_if.data_to_dut <= 8'b0;
    // wait for reset release
    while (!TopTb.rst_n) begin
        @(posedge cpu_if.clk);
    end
    while (1) begin
        repeat(10) @(posedge cpu_if.clk);
        seq_item_port.try_next_item(req);
        if (req != null) begin
            cpu_if.data_to_dut <= req.data;
            cpu_if.interupt <= req.interupt;
            seq_item_port.item_done();
        end
    end
    @(posedge cpu_if.clk);
    cpu_if.data_to_dut <= 8'b0;
    `uvm_info("CpuDriver", "main_phase has run", UVM_LOW);
endtask