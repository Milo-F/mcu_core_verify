debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcSignalView -on
srcSignalViewSelect "TopTb.cpu_if.clk"
srcSignalViewSelect "TopTb.cpu_if.clk" "TopTb.cpu_if.rst_n" \
           "TopTb.cpu_if.data_bus\[7:0\]" "TopTb.cpu_if.data_to_tb\[7:0\]" \
           "TopTb.cpu_if.clk_1M" "TopTb.cpu_if.clk_6M" \
           "TopTb.cpu_if.memory_select" "TopTb.cpu_if.read_en" \
           "TopTb.cpu_if.write_en" "TopTb.cpu_if.addr_bus\[15:0\]" \
           "TopTb.cpu_if.data_to_dut\[7:0\]" "TopTb.cpu_if.interupt\[4:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
