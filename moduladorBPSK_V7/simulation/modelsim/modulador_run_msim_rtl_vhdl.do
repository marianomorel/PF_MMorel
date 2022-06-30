transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/modulador4/db {C:/altera/13.0sp1/modulador4/db/reloj_altpll1.v}
vcom -93 -work work {C:/altera/13.0sp1/modulador4/pseudoaleatorio.vhd}
vcom -93 -work work {C:/altera/13.0sp1/modulador4/onda.vhd}
vcom -93 -work work {C:/altera/13.0sp1/modulador4/reloj.vhd}
vcom -93 -work work {C:/altera/13.0sp1/modulador4/contador.vhd}

vcom -93 -work work {C:/altera/13.0sp1/modulador4/modulador_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  modulador_TB

add wave *
view structure
view signals
run -all
