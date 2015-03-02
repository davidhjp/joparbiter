onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_jop/joptop/clk_int
add wave -noupdate -radix hexadecimal /tb_jop/joptop/int_res
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/wd
add wave -noupdate -radix ascii /tb_jop/joptop/io/ua/char
add wave -noupdate /tb_jop/joptop/arbiter/cpu_time
add wave -noupdate -radix binary /tb_jop/joptop/tdma_access
add wave -noupdate -divider core0
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/stk/a
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/stk/b
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/bcf/jpc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/bcf/bc/val
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/fch/pc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/fch/ir
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/fch/bsy
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/fch/nxt
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(0)/cpu/core/stk/sp
add wave -noupdate -divider core1
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(1)/cpu/core/bcf/jpc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(1)/cpu/core/bcf/bc/val
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(1)/cpu/core/fch/pc
add wave -noupdate -divider core2
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(2)/cpu/core/bcf/jpc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(2)/cpu/core/bcf/bc/val
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_cpu(2)/cpu/core/fch/pc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/sys/timer_int
add wave -noupdate -divider sc_sys0
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/sys/rdy_cnt
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/sys/timer_int
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/sys/int_pend
add wave -noupdate -radix hexadecimal /tb_jop/joptop/io/sys/int_ena
add wave -noupdate -divider sc_sys1
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/address
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/wr_data
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/rd
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/wr
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/rdy_cnt
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/sync_out
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/sync_in
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/timer_int
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/int_pend
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(1)/io2/int_ena
add wave -noupdate -divider sc_sys2
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(2)/io2/address
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(2)/io2/timer_int
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(2)/io2/int_pend
add wave -noupdate -radix hexadecimal /tb_jop/joptop/gen_io(2)/io2/int_ena
add wave -noupdate -divider Sync
add wave -noupdate -divider Arbiter
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/tb_jop/joptop/arbiter/arb_out(0) {-radix hexadecimal} /tb_jop/joptop/arbiter/arb_out(1) {-radix hexadecimal} /tb_jop/joptop/arbiter/arb_out(2) {-radix hexadecimal}} /tb_jop/joptop/arbiter/arb_out
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/tb_jop/joptop/arbiter/arb_in(0) {-radix hexadecimal} /tb_jop/joptop/arbiter/arb_in(1) {-radix hexadecimal} /tb_jop/joptop/arbiter/arb_in(2) {-radix hexadecimal}} /tb_jop/joptop/arbiter/arb_in
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/tb_jop/joptop/arbiter/mem_out.address {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.wr_data {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.rd {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.wr {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.atomic {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.cache {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.cinval {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.tm_cache {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_out.tm_broadcast {-radix hexadecimal}} /tb_jop/joptop/arbiter/mem_out
add wave -noupdate -radix hexadecimal -expand -subitemconfig {/tb_jop/joptop/arbiter/mem_in.rd_data {-radix hexadecimal} /tb_jop/joptop/arbiter/mem_in.rdy_cnt {-radix hexadecimal}} /tb_jop/joptop/arbiter/mem_in
add wave -noupdate -divider {external signals}
add wave -noupdate -radix hexadecimal /tb_jop/main_mem/addr
add wave -noupdate -radix hexadecimal /tb_jop/main_mem/data
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_a
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_d
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_ncs
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_ncsb
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_noe
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_nwe
add wave -noupdate -radix hexadecimal /tb_jop/joptop/fl_rdy
add wave -noupdate -divider mem_sc
add wave -noupdate -radix hexadecimal /tb_jop/main_mem/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9447891 ns} 0}
configure wave -namecolwidth 240
configure wave -valuecolwidth 108
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {2328142 ns} {2328688 ns}
