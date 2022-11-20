transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/JFDC/Desktop/lab2 tydd2/parteD_template/parteD_template.vhd}

