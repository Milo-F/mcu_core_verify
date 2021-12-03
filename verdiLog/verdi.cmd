debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.cpu_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu_if" -delim "."
srcSignalView -on
srcSignalViewSelect "TopTb.cpu_if.data_to_tb\[7:0\]"
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
wvSetCursor -win $_nWave3 46799.054374 -snap {("G1" 10)}
wvSetCursor -win $_nWave3 110789.598109 -snap {("G1" 10)}
wvSetCursor -win $_nWave3 50619.385343 -snap {("G1" 11)}
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
wvSetCursor -win $_nWave3 179237.194641 -snap {("G1" 12)}
wvSetMarker -win $_nWave3 189000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
verdiDockWidgetHide -dock windowDock_nWave_3
srcTBSimReset
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.cpu" -delim "."
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvScrollDown -win $_nWave3 4
wvSetPosition -win $_nWave3 {("G2" 0)}
srcSignalViewSetFilter "stat"
srcSignalViewSelect "TopTb.cpu.status\[6:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSetFilter "prog"
srcSignalViewSelect "TopTb.cpu.program_counter\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSetCursor -win $_nWave3 45843.971631 -snap {("G2" 1)}
wvSetMarker -win $_nWave3 49000.000000
wvSetCursor -win $_nWave3 181147.360126 -snap {("G2" 1)}
wvSetMarker -win $_nWave3 183000.000000
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 167617.021277 316237.446809
wvSetCursor -win $_nWave3 180734.032829 -snap {("G2" 1)}
wvSetMarker -win $_nWave3 183000.000000
wvSetCursor -win $_nWave3 223130.088024 -snap {("G2" 1)}
wvSetMarker -win $_nWave3 227000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
