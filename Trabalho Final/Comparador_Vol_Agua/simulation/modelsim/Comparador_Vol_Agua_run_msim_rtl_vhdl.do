transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/amand/Documents/GitHub/controle-maquina-de-lavar/Trabalho Final/Comparador_Vol_Agua/Comparador_Vol_Agua.vhd}

vcom -93 -work work {C:/Users/amand/Documents/GitHub/controle-maquina-de-lavar/Trabalho Final/Comparador_Vol_Agua/tb_Comparador_Vol_Agua.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Comparador_Vol_Agua

add wave *
view structure
view signals
run 1000 ns
