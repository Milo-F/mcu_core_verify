debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.in_if" -win $_nTrace1
srcHBSelect "TopTb.in_if" -win $_nTrace1
srcSetScope -win $_nTrace1 "TopTb.in_if" -delim "."
srcSignalView -on
srcSignalViewSelect "TopTb.in_if.clk"
srcSignalViewSelect "TopTb.in_if.interupt\[4:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "TopTb.in_if.data_to_tb\[7:0\]"
srcSignalViewSelect "TopTb.in_if.data_to_dut\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
verdiDockWidgetSetCurTab -dock windowDock_VIA_InteractiveDebug_2
srcHBSelect "CpuEnv.o_agt.drv" -win $_nTrace1
srcHBSelect "CpuEnv.o_agt.drv" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuEnv.o_agt.drv" -delim "."
srcHBSelect "CpuEnv.i_agt.mon" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuEnv.i_agt.mon" -delim "."
srcHBSelect "CpuEnv.i_agt.drv" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuEnv.i_agt.drv" -delim "."
srcHBSelect "CpuEnv" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Object._Tree>
srcTBObjectBrowser -treeSel -select "uvm_pkg"
srcTBObjectBrowser -treeSel -select "_vcs_unit__526641694"
srcTBObjectBrowser -treeExpand "_vcs_unit__526641694"
srcTBObjectBrowser -treeExpand "_vcs_unit__526641694.snps_reg"
srcTBClassBrowser -treeCollapse "_vcs_unit__526641694.snps_reg"
srcTBClassBrowser -treeCollapse "_vcs_unit__526641694.snps_reg"
srcTBClassBrowser -treeCollapse "_vcs_unit__526641694"
srcTBObjectBrowser -treeExpand "uvm_pkg"
srcTBObjectBrowser -treeSel -select "uvm_pkg.run_test"
srcTBObjectBrowser -treeExpand "uvm_pkg.run_test"
srcTBObjectBrowser -treeExpand "uvm_pkg.run_test.top"
srcTBObjectBrowser -treeExpand \
           "uvm_pkg.run_test.top.run_test \(thread 14 \[100:3081\]\)"
srcTBClassBrowser -treeCollapse "uvm_pkg.run_test"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top"
srcTBObjectBrowser -treeExpand \
           "uvm_pkg.uvm_top.run_test \(thread 14 \[100:3081\]\)"
srcTBObjectBrowser -treeExpand \
           "uvm_pkg.uvm_top.run_test \(thread 14 \[100:3081\]\).uvm_test_top"
srcTBObjectBrowser -treeSel -select \
           "uvm_pkg.uvm_top.run_test \(thread 14 \[100:3081\]\).uvm_test_top.i_agt"
srcTBObjectBrowser -treeSel -select \
           "uvm_pkg.uvm_top.run_test \(thread 14 \[100:3081\]\).uvm_test_top.o_agt"
srcTBObjectBrowser -treeSel -select \
           "uvm_pkg.uvm_top.run_test \(thread 14 \[100:3081\]\).uvm_test_top.i_agt"
srcTBMemberView -treeExpand "Variables.mon"
srcTBMemberView -treeSel -select "Variables.mon.cpu_if"
srcTBMemberView -showDef
srcTBMemberView -treeSel -select "Variables.mon.cpu_if"
srcTBMemberView -treeExpand "Variables.drv"
srcTBMemberView -treeSel -select "Variables.drv.cpu_if"
srcTBMemberView -showDef
srcDeselectAll -win $_nTrace1
srcSelect -signal "tr.data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tr.data" -win $_nTrace1
srcAction -pos 40 5 4 -win $_nTrace1 -name "tr.data" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.drv.tr" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.drv" -win $_nTrace1
srcTBMemberView -treeSel -select "Variables.drv.cpu_if"
srcTBMemberView -treeExpand "Variables.drv.tr"
srcTBMemberView -treeSel -select "Variables.drv.tr"
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::InTrans@199"
srcTBTBMVAddWatch -tab 1
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcSelect -win $_nTrace1 -range {41 41 1 8 1 1}
srcTBAddBrkPnt -line 41 -file /home/milo/ICCodes/mcu_verify/sv/CpuDriver.sv
srcSelect -win $_nTrace1 -range {42 42 1 8 1 1}
srcTBAddBrkPnt -line 42 -file /home/milo/ICCodes/mcu_verify/sv/CpuDriver.sv
srcTBRunSim -opt {200ns}
srcTBDVCollapse -win $_nTrace1 -tab 1 -item {1}
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 4-4} 
srcTBDVSelect -tab 1 -range {0 4-4} {0 10-10} 
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBAddToWatchFromSrc -win $_nTrace1 -tab 1
srcTBDVSelect -tab 1 -range {0 21-21} 
srcTBDVSelect -tab 1 -range {1-1} 
srcTBStepNext
srcTBStepNext
srcTBRunSim -opt {200ns}
srcTBDVSelect -tab 1 -range {0 4-4} 
srcTBSimQuit
srcTBInvokeSim
verdiDockWidgetSetCurTab -dock widgetDock_<Object._Tree>
srcTBObjectBrowser -treeExpand "uvm_pkg"
srcTBObjectBrowserFilter -pattern "uvm_root" -type package_class_vars \
           module_class_vars class_static_vars task_static_vars task_auto_vars \
           all_variables base_members null_reference empty_arrays all
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_root.m_inst"
srcTBObjectBrowser -treeSel -select "uvm_pkg.uvm_root"
srcTBObjectBrowserFilter -type package_class_vars module_class_vars \
           class_static_vars task_static_vars task_auto_vars all_variables \
           base_members null_reference empty_arrays all
srcTBClassBrowser -treeCollapse "_vcs_unit__526641694"
srcTBTBOBCollapseAll
srcTBClassBrowser -treeCollapse "uvm_pkg.uvm_root"
srcTBObjectBrowserFilter -pattern "uvm_top" -type package_class_vars \
           module_class_vars class_static_vars task_static_vars task_auto_vars \
           all_variables base_members null_reference empty_arrays all
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top"
srcTBObjectBrowserFilter -type package_class_vars module_class_vars \
           class_static_vars task_static_vars task_auto_vars all_variables \
           base_members null_reference empty_arrays all
srcTBObjectBrowser -treeSel -select \
           "_vcs_unit__526641694.snps_reg.m_context_registry"
srcTBTBOBCollapseAll
srcTBObjectBrowser -treeSel -select "uvm_pkg.uvm_root"
srcTBObjectBrowser -treeSel -select "uvm_pkg.uvm_top"
srcTBMemberView -treeExpand "Variables.m_inst"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top.clp"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top.clp.m_rh"
srcTBClassBrowser -treeCollapse "uvm_pkg.uvm_top.clp.m_rh"
srcTBClassBrowser -treeCollapse "uvm_pkg.uvm_top.clp"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top.clp_inst"
srcTBClassBrowser -treeCollapse "uvm_pkg.uvm_top.clp_inst"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_top.m_domain"
srcTBClassBrowser -treeCollapse "uvm_pkg.uvm_top.m_domain"
srcTBRunSim -opt {200ns}
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_root"
srcTBObjectBrowser -treeExpand "uvm_pkg.uvm_root.m_inst"
srcTBObjectBrowser -treeExpand \
           "uvm_pkg.uvm_root.m_inst.run_test \(thread 14 \[100:3081\]\)"
srcTBObjectBrowser -treeExpand \
           "uvm_pkg.uvm_root.m_inst.run_test \(thread 14 \[100:3081\]\).uvm_test_top"
srcTBObjectBrowser -treeSel -select \
           "uvm_pkg.uvm_root.m_inst.run_test \(thread 14 \[100:3081\]\).uvm_test_top"
srcTBMemberView -treeSel -select "Variables.i_agt"
srcTBMemberView -treeSel -select "Variables.i_agt"
srcTBMemberView -treeExpand "Variables.i_agt"
srcTBMemberView -treeSel -select "Variables.i_agt.mon"
srcTBMemberView -treeSel -select "Variables.i_agt.mon"
srcTBMemberView -treeExpand "Variables.i_agt.mon"
srcTBMemberView -treeSel -select "Variables.i_agt.mon.cpu_if"
srcTBTBMVAddReference -tab 1
srcTBMemberView -treeSel -select "Variables.i_agt.mon.out_tr"
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::CpuMonitor@1.out_tr"
srcTBTBMVAddWatch -tab 1
srcTBMemberView -showDef
srcSelect -win $_nTrace1 -range {29 29 1 10 1 1}
srcTBAddBrkPnt -line 29 -file /home/milo/ICCodes/mcu_verify/sv/CpuMonitor.sv
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcSelect -win $_nTrace1 -range {41 41 1 8 1 1}
srcTBSetBrkPnt -disable -index 1
srcSelect -win $_nTrace1 -range {43 43 1 5 1 1}
srcTBAddBrkPnt -line 43 -file /home/milo/ICCodes/mcu_verify/sv/CpuDriver.sv
srcSelect -win $_nTrace1 -range {42 42 1 8 1 1}
srcTBSetBrkPnt -disable -index 2
srcSelect -win $_nTrace1 -range {43 43 1 5 1 1}
srcTBSetBrkPnt -disable -index 4
srcTBRunSim -opt {200ns}
srcTBRunSim -opt {200ns}
srcTBMemberView -showDef
srcSelect -win $_nTrace1 -range {29 29 1 10 1 1}
srcTBSetBrkPnt -disable -index 3
srcSelect -win $_nTrace1 -range {40 40 1 10 1 1}
srcTBAddBrkPnt -line 40 -file /home/milo/ICCodes/mcu_verify/sv/CpuMonitor.sv
srcTBRunSim -opt {200ns}
srcTBStepNext
srcTBMemberView -treeSel -select "Variables.i_agt.mon.in_tr"
srcTBMemberView -showDef
srcTBMemberView -treeSel -select "Variables.i_agt.mon.in_tr"
srcTBMemberView -treeExpand "Variables.i_agt.mon.in_tr"
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::InTrans@575"
srcTBTBMVAddWatch -tab 1
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDeleteDataTree -win $_nTrace1 -tab 1 -tree "\$unit::CpuMonitor@1.out_tr"
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 4-4} 
srcTBStepNext
srcDeselectAll -win $_nTrace1
srcSelect -signal "in_tr.data" -win $_nTrace1
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBStepNext
srcTBRunSim -opt {200ns}
srcTBStepNext
srcTBDVSelect -tab 1 -range {0-0} 
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::InTrans@578"
srcTBTBMVAddWatch -tab 1
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDeleteDataTree -win $_nTrace1 -tab 1 -tree "\$unit::InTrans@575"
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 4-4} 
srcTBStepNext
verdiDockWidgetSetCurTab -dock windowDock_VIA_InteractiveDebug_2
srcTBStepNext
srcTBStepNext
srcTBRunSim -opt {200ns}
srcTBStepNext
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::InTrans@578"
srcTBTBMVAddWatch -tab 1
srcTBDVSelect -tab 1 -range {0-0} 
srcTBDeleteDataTree -win $_nTrace1 -tab 1 -tree "\$unit::InTrans@578"
srcTBInsertObject -win $_nTrace1 -tab 1 -object "\$unit::InTrans@578"
srcTBTBMVAddWatch -tab 1
srcTBDVExpand -win $_nTrace1 -tab 1 -item {1}
srcTBDVSelect -tab 1 -range {0 4-4} 
srcTBStepNext
srcTBStepNext
srcTBStepNext
debExit
