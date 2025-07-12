vlib work
vlog comp1bit.v
vlog comp3bitusing1bit.v
vlog comp3bitusing1bit_tb.v
vsim tb
add wave -position insertpoint sim:/tb/dut/*
run -all
