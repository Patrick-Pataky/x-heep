add wave -position insertpoint -label "pc" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/cv32e20_i/u_cve2_top/u_cve2_core/id_stage_i/pc_id_i

add wave -group "flash_boot" -position insertpoint \
	sim:/tb_top/testharness_i/gen_USE_EXTERNAL_DEVICE_EXAMPLE/flash_boot_i/*

add wave -group "flash_controller" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/*

add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/top_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/top_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/read_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/read_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/erase_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/erase_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/fwait_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/fwait_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/modify_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/modify_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/write_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/write_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/dma_init_state_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/dma_init_state_d
add wave -group "flash_controller_curr" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/dma_init_return_q
add wave -group "flash_controller_next" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/w25q128jw_controller_i/dma_init_return_d

add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/ot_spi_i/sck
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/ot_spi_i/csb
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/ot_spi_i/sd_i
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/spi_subsystem_i/ot_spi_i/sd_out

add wave -group "spi" -position insertpoint -label "req" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/peripheral_req
add wave -group "spi" -position insertpoint -label "rsp" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/peripheral_rsp

add wave -group "dma" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/dma_subsystem_i/dma_i_gen[0]/dma_i/*
add wave -group "dma_req_rsp" -position insertpoint -label "req" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/dma_subsystem_i/dma_i_gen[0]/dma_i/reg_req_i
add wave -group "dma_req_rsp" -position insertpoint -label "rsp" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/dma_subsystem_i/dma_i_gen[0]/dma_i/reg_rsp_o
add wave -position insertpoint -label "dma_write_buffer" \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/dma_subsystem_i/dma_i_gen[0]/dma_i/write_buffer_output

add wave -group "tb_flash" -position insertpoint \
	sim:/tb_top/testharness_i/gen_USE_EXTERNAL_DEVICE_EXAMPLE/flash_boot_i/*

run 20000000 ns

view wave
configure wave -signalnamewidth 1

# SPI FLASH memory from the tb
mem save -outfile memory_dump.txt -format hex sim:/tb_top/testharness_i/gen_USE_EXTERNAL_DEVICE_EXAMPLE/flash_boot_i/memory

log -r /*
dataset save sim ../../../data/sim.wlf
