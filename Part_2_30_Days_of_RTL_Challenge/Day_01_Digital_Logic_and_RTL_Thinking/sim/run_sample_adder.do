vlib work
vlog ../tb/testbench_sample_adder.v 
vsim -debugDB -voptargs="+acc" work.tb_and_gate
add wave -r *
view schematic
add schematic /tb_and_gate/DUT
run -all