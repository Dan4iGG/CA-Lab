transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/ex1.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/srl.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/doni3/OneDrive/Desktop/ICT/CA\ labs/Week12/ex2 {C:/Users/doni3/OneDrive/Desktop/ICT/CA labs/Week12/ex2/glob.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
