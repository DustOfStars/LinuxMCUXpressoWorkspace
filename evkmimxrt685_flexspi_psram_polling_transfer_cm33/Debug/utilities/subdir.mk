################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utilities/fsl_assert.c 

S_UPPER_SRCS += \
../utilities/fsl_memcpy.S 

C_DEPS += \
./utilities/fsl_assert.d 

OBJS += \
./utilities/fsl_assert.o \
./utilities/fsl_memcpy.o 


# Each subdirectory must supply rules for building sources it contributes
utilities/%.o: ../utilities/%.c utilities/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DMIMXRT685S_cm33_SERIES -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/flash_config" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/board" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/%.o: ../utilities/%.S utilities/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/flash_config" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/component/uart" -g3 -gdwarf-4 -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-utilities

clean-utilities:
	-$(RM) ./utilities/fsl_assert.d ./utilities/fsl_assert.o ./utilities/fsl_memcpy.o

.PHONY: clean-utilities

