vlib work
# vlog ../tb/tb_arithmetic.v
vlog ../tb/tb_logical.v
vsim -voptargs=+acc work.tb_logical
add wave -r *
run -all