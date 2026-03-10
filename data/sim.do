add wave -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/cv32e20_i/u_cve2_top/u_cve2_core/id_stage_i/pc_id_i
add wave -group "flash_boot" -position insertpoint \
	sim:/tb_top/testharness_i/gen_USE_EXTERNAL_DEVICE_EXAMPLE/flash_boot_i/*
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
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_flash_sd_1/pad_io
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_flash_sck/pad_io
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_cs_1/pad_io
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_cs_0/pad_io
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_cs_1/pad_io
add wave -group "spi" -position insertpoint \
	sim:/tb_top/testharness_i/x_heep_system_i/pad_ring_i/u_pad_spi_cs_1/pad_io

run 20000000 ns

view wave

log -r /*

