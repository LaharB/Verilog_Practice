vlib work
vlog ../tb/tb_arithmetic.v
vsim -voptargs=+acc
add wave -r *
run all