transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/University/Subjects/ECE\ 135/Quartus_Verilog/UpDownCounter {D:/University/Subjects/ECE 135/Quartus_Verilog/UpDownCounter/UpDownCounter_8bit.v}

