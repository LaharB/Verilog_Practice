vlib work
vlog ../tb/tb_arithmetic.v
vsim -voptargs=+acc work.tb_arithmetic
add wave -r *
run -all