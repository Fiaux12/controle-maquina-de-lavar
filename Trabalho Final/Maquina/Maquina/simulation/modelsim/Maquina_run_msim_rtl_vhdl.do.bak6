transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Temporizador/Temporizador/Temporizador.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Reg_W/RegW/RegW.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/BCD_7seg/BCD_7seg/BCD_7seg.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Comparador_Vol_Agua/Comparador_Vol_Agua.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Comparador_Modo_Lavgm/Comparador_Modo_Lavgm.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Maquina/Maquina/Maquina.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Maquina/Controladora/Controladora.vhd}
vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Maquina/Datapath/Datapath.vhd}

vcom -93 -work work {C:/controle-maquina-de-lavar/Trabalho Final/Maquina/Maquina/tb_maquina.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_maquina

add wave *
view structure
view signals
run 100 sec
