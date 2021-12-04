debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.in_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.in_if" -delim "."
srcSignalView -on
srcSignalViewSelect "TopTb.in_if.clk"
srcSignalViewSelect "TopTb.in_if.interupt\[4:0\]"
srcSignalViewSelect "TopTb.in_if.data_to_dut\[7:0\]" \
           "TopTb.in_if.interupt\[4:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcHBSelect "TopTb.in_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.in_if" -delim "."
srcSignalViewSelect "TopTb.in_if.clk"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBSimQuit
srcTBInvokeSim
srcTBRunSim -opt {200ns}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetCursor -win $_nWave3 51105.193076 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 70471.371505 -snap {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
