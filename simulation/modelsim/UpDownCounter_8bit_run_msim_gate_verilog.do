transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {UpDownCounter_8bit.vo}

vlog -vlog01compat -work work +incdir+D:/University/Subjects/ECE\ 135/Quartus_Verilog/UpDownCounter {D:/University/Subjects/ECE 135/Quartus_Verilog/UpDownCounter/UpDownCounter_8bit_tb.v}

vsim -t 1ps -L altera_mf_ver -L altera_ver -L lpm_ver -L sgate_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L gate_work -L work -voptargs="+acc"  UpDownCounter_8bit_tb

add wave *
view structure
view signals
run -all
