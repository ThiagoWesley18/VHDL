onerror {quit -f}
vlib work
vlog -work work and01.vo
vlog -work work and01.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.and01_vlg_vec_tst
vcd file -direction and01.msim.vcd
vcd add -internal and01_vlg_vec_tst/*
vcd add -internal and01_vlg_vec_tst/i1/*
add wave /*
run -all
