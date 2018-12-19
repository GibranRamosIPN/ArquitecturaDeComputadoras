
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ProyectoFinal -dir "C:/Users/Jesus Hta Mtz/Desktop/ArquiProcesador/Final_ESCOMips_conDiv/planAhead_run_2" -part xc7a100tcsg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Jesus Hta Mtz/Desktop/ArquiProcesador/Final_ESCOMips_conDiv/ESCOMIPS.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Jesus Hta Mtz/Desktop/ArquiProcesador/Final_ESCOMips_conDiv} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "FINAL_PINES.ucf" [current_fileset -constrset]
add_files [list {FINAL_PINES.ucf}] -fileset [get_property constrset [current_run]]
link_design
