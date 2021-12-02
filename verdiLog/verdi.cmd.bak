debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "-a sim.log +UVM_VERBOSITY=UVM_LOW"
srcTBInvokeSim
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcHBSelect "TopTb" -win $_nTrace1
srcHBSelect "TopTb.cpu" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver.super" -win $_nTrace1
srcHBSelect "CpuDriver" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 11 -pos 1 -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "raise_objection"
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1844 -pos 4 -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "phase_done"
srcHBSelect "CpuDriver" -win $_nTrace1
srcHBSelect "CpuDriver.main_phase" -win $_nTrace1
srcSetScope -win $_nTrace1 "CpuDriver.main_phase" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 11 -pos 1 -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "raise_objection"
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1847 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1845 -pos 1 -win $_nTrace1
nsMsgSwitchTab -tab intercon
srcTBShowDefinition -win $_nTrace1 -signal "raise_objection"
srcDeselectAll -win $_nTrace1
srcSelect -word -line 332 -pos 5 -win $_nTrace1
srcTBShowDefinition -win $_nTrace1 -signal "m_top"
srcSearchString "m_raise" -win $_nTrace1 -next -case
srcTBShowDefinition -win $_nTrace1 -signal "m_raise"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 353 1 15 -win $_nTrace1 -name "m_total_count\[obj\]" -ctrlKey off
srcSearchString "m_raise" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {442 442 2 3 1 1}
nsMsgSwitchTab -tab general
srcDeselectAll -win $_nTrace1
srcSelect -word -line 441 -pos 1 -win $_nTrace1
srcAction -pos 441 1 4 -win $_nTrace1 -name "m_raise" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 367 -pos 1 -win $_nTrace1
srcAction -pos 367 1 3 -win $_nTrace1 -name "raised" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 828 -pos 1 -win $_nTrace1
srcAction -pos 828 1 8 -win $_nTrace1 -name "comp.raised" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 1046 -pos 7 -win $_nTrace1
srcAction -pos 1046 7 2 -win $_nTrace1 -name "raised" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuDriver.main_phase" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuDriver.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 829 -pos 8 -win $_nTrace1
srcAction -pos 829 8 3 -win $_nTrace1 -name "raised" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "m_events\[obj\].raised" -win $_nTrace1
srcAction -pos 831 2 17 -win $_nTrace1 -name "m_events\[obj\].raised" -ctrlKey \
          off
srcBackwardHistory -win $_nTrace1
srcHBSelect "CpuDriver.main_phase" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 826 -pos 3 -win $_nTrace1
srcAction -pos 826 3 1 -win $_nTrace1 -name "comp" -ctrlKey off
srcSearchString "raise" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {1047 1047 8 8 1 6}
debExit
