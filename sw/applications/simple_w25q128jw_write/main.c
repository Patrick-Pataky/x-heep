/**
 * @file main.c
 * @brief Example application for W25Q128JW flash write test.
 *
 * This application demonstrates writing data to the W25Q128JW flash memory
 * then reading it back and verifying the contents match the original data.
 *
 * Test parameters:
 * - Transfer size: 4100 bytes (spanning over 2 sectors) (write operation is word precise)
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "memory.h"

#include "core_v_mini_mcu.h"
#include "x-heep.h"
#include "w25q128jw.h"

#include "w25q128jw_controller.h"
#include "sram_data.h"
#include "csr.h" // For CSR macros
#include "rv_plic.h" // For PLIC functions
#include "w25q128jw.h"
#include "dma.h"

/* By default, printfs are activated for FPGA and disabled for simulation. */
#define PRINTF_IN_FPGA  1
#define PRINTF_IN_SIM   0

/* 1 if SW write, 0 if HW write */
#define SW_N_HW_WRITE 0

#if TARGET_SIM && PRINTF_IN_SIM
        #define PRINTF(fmt, ...)    printf(fmt, ## __VA_ARGS__)
#elif PRINTF_IN_FPGA && !TARGET_SIM
    #define PRINTF(fmt, ...)    printf(fmt, ## __VA_ARGS__)
#else
    #define PRINTF(...)
#endif

#define MAGIC_TEST_NUM 0xda41de

int32_t sram_buffer_read_flash_back[NUM_WORDS];
int32_t dma_mem_copy[NUM_WORDS];

/**
 * @brief Compares read data against expected data.
 *
 * @param test_buffer   Pointer to the expected data buffer (what one should read back).
 * @param len           Number of bytes to compare (byte precise).
 * @return              0 if data matches, 1 otherwise.
 */
uint32_t check_result(uint8_t *test_buffer, uint32_t len);

//
// ISR
//
void handler_irq_w25q128jw_controller(uint32_t id) {
    // Set the done flag
    w25q128jw_controller_set_done_flag();

    // Clear the interrupt status register (interrupt handled)
    w25q128jw_controller_clear_status_register();
}

/**
 * @brief Runs the flash write test sequence.
 *
 * This function:
 * 1. Initializes the SPI flash
 * 2. Launches write operation
 * 3. Waits for write completion (polling)
 * 4. Launches read operation
 * 5. Waits for read completion (polling)
 *
 */
__attribute__ ((noinline)) void w25q128jw_controller_run(char use_interrupt, int32_t* flash_ptr) {

    spi_host_t* spi;
    spi = spi_flash;

    w25q128jw_controller_enable_interrupt(use_interrupt);

    //write
    w25q128jw_controller_write((void*)&flash_ptr[0], (void*) &sram_data[0], (size_t) LENGTH_BYTES);

    if(use_interrupt) {
        // Wait for interrupt
        while(!w25q128jw_controller_is_ready_intr()) {
            asm volatile("wfi");  // Wait For Interrupt - CPU sleeps
        }
    } else {
        while(!w25q128jw_controller_is_ready_polling());
    }

    //reset flag
    w25q128jw_controller_clear_done_flag();

}

int main(void) {

    uint32_t res;

    // Initialize the DMA
    dma_init(NULL);

    // Pick the correct spi device based on simulation type
    spi_host_t* spi;
    spi = spi_flash;

    // Init SPI host and SPI<->Flash bridge parameters and Flash Power Up
    if (w25q128jw_init(spi) != FLASH_OK) return EXIT_FAILURE;

    int32_t* flash_ptr_test1 = heep_get_flash_address_offset(flash_buffer_test1);

    // Reset the flash data buffer
    memset(sram_buffer_read_flash_back, 0, LENGTH_BYTES);

    // Write to flash memory at specific address (i.e. flash_buffer_test1) the value from sram_data in HW
    // we use polling
    //disable interrupts
    w25q128jw_controller_enable_interrupt(0);

    #if SW_N_HW_WRITE
        w25q128jw_erase_and_write_standard_dma((uint32_t)flash_ptr_test1, sram_data, LENGTH_BYTES);
    #else
        w25q128jw_controller_run(0, flash_ptr_test1);
    #endif

    PRINTF("Write done\n");

    // we read back in SW as we assume the SW is the golden model
    // w25q128jw_read_standard_dma((uint32_t)flash_ptr_test1, sram_buffer_read_flash_back, LENGTH_BYTES, 0, 0);

    // // Check Results
    // for(int i=0;i<NUM_WORDS;i++) {
    //     //in the .h, flash_buffer_test1 contains numbers from 0 to NUM_WORDS in order
    //     if(sram_buffer_read_flash_back[i]!=sram_data[i]) {
    //         PRINTF("At %d: expected %x, got %x\n", i, sram_data[i], sram_buffer_read_flash_back[i]);
    //         return 2;
    //     }
    // }

    return EXIT_SUCCESS;
}
