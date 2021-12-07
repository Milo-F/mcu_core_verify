
import "DPI-C" function void ref_mod(
    input bit rst_n,
    input bit[4:0] interupt,
    input bit[7:0] data_in,
    output bit[7:0] data_out,
    output bit[15:0] addr_bus,
    output bit read_en, write_en, memory_select, clk_1M, clk_6M
);

class RefModel extends uvm_component;
    // regist
    `uvm_component_utils(RefModel);
    // members
    InTrans in_tr;
    OutTrans out_tr;
    uvm_blocking_get_port #(InTrans) port; // 用于从monitor接收激励
    uvm_analysis_port #(OutTrans) ap; // 用于输出结果到scoreboard
    // methods
    function new(string name = "RefModel", uvm_component parent);
        super.new(name, parent);
    endfunction
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass

function void RefModel::build_phase(uvm_phase phase);
    super.build_phase(phase);
    in_tr = InTrans::type_id::create("in_tr");
    out_tr = OutTrans::type_id::create("out_tr");
    port = new("port", this);
    ap = new("ap", this);
endfunction

task RefModel::main_phase(uvm_phase phase);
    super.main_phase(phase);
    while (1) begin
        port.get(in_tr);
        `uvm_info("RefModel", "get a input transaction from monitor", UVM_LOW);
        ref_mod(
            0, 
            in_tr.interupt, 
            in_tr.data, 
            out_tr.data, 
            out_tr.addr, 
            out_tr.read_en, 
            out_tr.write_en, 
            out_tr.memory_select,
            out_tr.clk_1M,
            out_tr.clk_6M
        );
        `uvm_info("RefModel", "put a ref result to sorceboard", UVM_LOW);
        ap.write(out_tr);
    end
endtask