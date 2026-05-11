vlib work
vlog ../tb/testbench_sample_and_gate.v 
vsim -debugDB -voptargs="+acc" work.tb_and_gate
# add wave -r *
do wave_sample_and_gate.do
view schematic
add schematic /tb_and_gate/DUT
run -all