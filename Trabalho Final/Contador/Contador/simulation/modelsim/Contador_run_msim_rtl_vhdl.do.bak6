transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/amand/OneDrive/Documentos/Faculdade/LSD/Trabalho Final/Contador/Contador/Contador.vhd}

vcom -93 -work work {C:/Users/amand/OneDrive/Documentos/Faculdade/LSD/Trabalho Final/Contador/Contador/tb_contador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_contador

add wave *
view structure
view signals
run 1000 ms
