class CpuDriver extends uvm_driver;
    `uvm_component_utils(CpuDriver); // 在component tree中注册, 所有自uvm_component派生的类都需要注册
    function new(string name = "CpuDriver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    extern virtual task main_phase(uvm_phase phase);

endclass //driver extends uvm 

task CpuDriver::main_phase(uvm_phase phase);
    phase.raise_objection(this);
    // reset
    TopTb.interupt <= 5'b0;
    TopTb.data_to_dut <= 8'b0;
    // wait for reset release
    while (!TopTb.rst_n) begin
        @(posedge TopTb.clk);
    end
    @(posedge TopTb.clk);
    TopTb.data_to_dut <= 8'ha1;
    #50 TopTb.interupt <= 5'b1;
    #10 TopTb.interupt <= 5'b0;
    @(posedge TopTb.clk);
    TopTb.data_to_dut <= 8'b0;
    `uvm_info("CpuDriver", "main_phase has run", UVM_LOW);
    phase.drop_objection(this);
endtask