onerror {quit -f}
vlib work
vlog -work work UpDownCounter_8bit.vo
vlog -work work UpDownCounter_8bit.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UpDownCounter_8bit_vlg_vec_tst
vcd file -direction UpDownCounter_8bit.msim.vcd
vcd add -internal UpDownCounter_8bit_vlg_vec_tst/*
vcd add -internal UpDownCounter_8bit_vlg_vec_tst/i1/*
add wave /*
run -all
