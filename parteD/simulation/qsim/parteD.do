onerror {quit -f}
vlib work
vlog -work work parteD.vo
vlog -work work parteD.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parteD_vlg_vec_tst
vcd file -direction parteD.msim.vcd
vcd add -internal parteD_vlg_vec_tst/*
vcd add -internal parteD_vlg_vec_tst/i1/*
add wave /*
run -all
