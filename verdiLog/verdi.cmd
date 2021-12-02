debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcHBSelect "TopTb" -win $_nTrace1
srcSignalView -on
srcHBSelect "TopTb" -win $_nTrace1
srcHBSelect "TopTb" -win $_nTrace1
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "TopTb" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb" -delim "."
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu" -delim "."
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcSignalViewSelect "TopTb.cpu_if.clk"
srcSignalViewSelect "TopTb.cpu_if.clk" "TopTb.cpu_if.rst_n" \
           "TopTb.cpu_if.data_bus\[7:0\]" "TopTb.cpu_if.data_to_tb\[7:0\]" \
           "TopTb.cpu_if.clk_1M" "TopTb.cpu_if.clk_6M" \
           "TopTb.cpu_if.memory_select" "TopTb.cpu_if.read_en" \
           "TopTb.cpu_if.write_en" "TopTb.cpu_if.addr_bus\[15:0\]" \
           "TopTb.cpu_if.data_to_dut\[7:0\]" "TopTb.cpu_if.interupt\[4:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
srcHBSelect "CpuDriver.super" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver" -delim "."
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
srcTBSimReset
srcTBRunSim -opt {100ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSetCursor -win $_nWave3 82975.200946 -snap {("G1" 12)}
srcSignalView -on
srcSignalView -off
srcSignalView -on
verdiDockWidgetHide -dock windowDock_nWave_3
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver.super" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver.super" -win $_nTrace1
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcHBSelect "CpuDriver" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 5 -pos 5 -win $_nTrace1
srcAction -pos 5 5 3 -win $_nTrace1 -name "cpu_if" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 5 -pos 5 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 5 -pos 5 -win $_nTrace1
srcAction -pos 5 5 3 -win $_nTrace1 -name "cpu_if" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 5 3 4 -win $_nTrace1 -name "CpuInterface" -ctrlKey off
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 34 -pos 5 -win $_nTrace1
srcAction -pos 34 5 8 -win $_nTrace1 -name "cpu_if.clk" -ctrlKey off
srcHBSelect "CpuDriver" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver" -delim "."
debExit
