onerror {quit -f}
vlib work
vlog -work work parteb.vo
vlog -work work parteb.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sumador_completo_vlg_vec_tst
vcd file -direction parteb.msim.vcd
vcd add -internal sumador_completo_vlg_vec_tst/*
vcd add -internal sumador_completo_vlg_vec_tst/i1/*
add wave /*
run -all
