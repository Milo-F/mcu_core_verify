class CpuMonitor extends uvm_monitor;
    // regist
    `uvm_component_utils(CpuMonitor);
    // members
    virtual CpuInterface cpu_if;
    InTrans in_tr;
    OutTrans out_tr;
    bit is_out = 1;
    // methods
    function new(string name = "CpuMonitor", uvm_component parent);
        super.new(name, parent); 
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass

function void CpuMonitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db #(virtual CpuInterface)::get(this, "", "cpu_if", cpu_if)) begin
        `uvm_fatal("CpuMonitor", "!!!!!!!!!!!!!!!!!!!");
    end
endfunction

task CpuMonitor::main_phase(uvm_phase phase);
    super.main_phase(phase);
    while (1) begin
        @(posedge cpu_if.clk);
        if (is_out) begin
            out_tr = OutTrans::type_id::create("Out_tr");
            out_tr.data = cpu_if.data_to_tb;
            out_tr.addr = cpu_if.addr_bus;
            out_tr.read_en = cpu_if.read_en;
            out_tr.write_en = cpu_if.write_en;
            out_tr.memory_select = cpu_if.memory_select;
            out_tr.clk_1M = cpu_if.clk_1M;
            out_tr.clk_6M = cpu_if.clk_6M;
            out_tr.my_print();
        end
        else begin
            in_tr = InTrans::type_id::create("in_tr");
            in_tr.data = cpu_if.data_to_dut;
            in_tr.interupt = cpu_if.interupt;
            in_tr.my_print();
        end
    end
endtask