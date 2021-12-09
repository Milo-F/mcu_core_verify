debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a run.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcTBRunSim
srcHBSelect "CpuEnv.i_agt.sqr" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuEnv.i_agt.sqr" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 1 -win $_nTrace1
srcAction -pos 21 1 11 -win $_nTrace1 -name "phase.raise_objection" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcAction -pos 1845 1 17 -win $_nTrace1 -name "phase_done.raise_objection" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 335 -pos 1 -win $_nTrace1
srcAction -pos 335 1 4 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 367 -pos 1 -win $_nTrace1
srcAction -pos 367 1 3 -win $_nTrace1 -name "raised" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_events\[obj\].raised" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_events\[obj\].raised" -win $_nTrace1
srcAction -pos 831 2 12 -win $_nTrace1 -name "m_events\[obj\].raised" -ctrlKey \
          off
srcDeselectAll -win $_nTrace1
srcSelect -signal "raised" -win $_nTrace1
srcAction -pos 35 3 2 -win $_nTrace1 -name "raised" -ctrlKey off
srcTBShowDefinition -win $_nTrace1 -signal "raised"
srcTBSrcDClick -win $_nTrace1 -line "35" -word "3"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "raised" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_events\[obj\].raised" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_events\[obj\].raised" -win $_nTrace1
srcAction -pos 831 2 4 -win $_nTrace1 -name "m_events\[obj\].raised" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "m_events\[obj\].raised"
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_total_count\[obj\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_total_count\[obj\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {324 324 2 2 57 60}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {324 326 2 3 6 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {324 326 2 3 6 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 335 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 335 -pos 1 -win $_nTrace1
srcAction -pos 335 1 4 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 335 -pos 1 -win $_nTrace1
srcAction -pos 335 1 4 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_prop_mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 421 -pos 13 -win $_nTrace1
srcAction -pos 421 13 1 -win $_nTrace1 -name "m_top" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_prop_mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 424 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 452 -pos 1 -win $_nTrace1
srcAction -pos 452 1 5 -win $_nTrace1 -name "m_propagate" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcForwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 243 -pos 1 -win $_nTrace1
srcAction -pos 243 1 3 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 243 -pos 1 -win $_nTrace1
srcAction -pos 243 1 3 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 422 -pos 1 -win $_nTrace1
srcAction -pos 422 1 3 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 332 -pos 5 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "prop_mode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_prop_mode" -win $_nTrace1
srcAction -pos 301 1 2 -win $_nTrace1 -name "m_prop_mode" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 21 -pos 1 -win $_nTrace1
srcAction -pos 21 1 12 -win $_nTrace1 -name "phase.raise_objection" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcAction -pos 1845 1 10 -win $_nTrace1 -name "phase_done.raise_objection" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_cleared" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_top_all_dropped" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 61 -pos 6 -win $_nTrace1
srcAction -pos 61 6 9 -win $_nTrace1 -name "uvm_report_object" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcAction -pos 1845 1 14 -win $_nTrace1 -name "phase_done.raise_objection" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 418 -pos 4 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 418 -pos 4 -win $_nTrace1
srcAction -pos 418 4 2 -win $_nTrace1 -name "ctxt" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 385 -pos 4 -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "ctxt"
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {420 420 2 2 21 27}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {370 370 2 2 4 33} -backward
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcHBSelect "CpuEnv.i_agt.sqr.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcAction -pos 1845 1 16 -win $_nTrace1 -name "phase_done.raise_objection" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 335 -pos 1 -win $_nTrace1
srcAction -pos 335 1 4 -win $_nTrace1 -name "m_raise" -ctrlKey off
nsMsgSwitchTab -tab general
debExit
