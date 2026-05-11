vlib work
vlog ../tb/testbench_sample_counter.v
vsim -debugDB -voptargs="+acc" work.tb_counter_2_bit
# add wave -r *
do wave_sample_counter.do
view schematic
add schematic /tb_counter_2_bit/DUT 
run -all