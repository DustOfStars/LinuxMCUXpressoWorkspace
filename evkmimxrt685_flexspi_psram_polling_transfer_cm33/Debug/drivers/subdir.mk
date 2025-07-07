################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_cache.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_dsp.c \
../drivers/fsl_flexcomm.c \
../drivers/fsl_flexspi.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2s_bridge.c \
../drivers/fsl_inputmux.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_usart.c 

C_DEPS += \
./drivers/fsl_cache.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_dsp.d \
./drivers/fsl_flexcomm.d \
./drivers/fsl_flexspi.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2s_bridge.d \
./drivers/fsl_inputmux.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_usart.d 

OBJS += \
./drivers/fsl_cache.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_dsp.o \
./drivers/fsl_flexcomm.o \
./drivers/fsl_flexspi.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2s_bridge.o \
./drivers/fsl_inputmux.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_usart.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT685SFVKB -DCPU_MIMXRT685SFVKB_cm33 -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DMIMXRT685S_cm33_SERIES -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/flash_config" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/board" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33 -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace2/evkmimxrt685_flexspi_psram_polling_transfer_cm33/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_cache.d ./drivers/fsl_cache.o ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_dsp.d ./drivers/fsl_dsp.o ./drivers/fsl_flexcomm.d ./drivers/fsl_flexcomm.o ./drivers/fsl_flexspi.d ./drivers/fsl_flexspi.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_i2s_bridge.d ./drivers/fsl_i2s_bridge.o ./drivers/fsl_inputmux.d ./drivers/fsl_inputmux.o ./drivers/fsl_power.d ./drivers/fsl_power.o ./drivers/fsl_reset.d ./drivers/fsl_reset.o ./drivers/fsl_usart.d ./drivers/fsl_usart.o

.PHONY: clean-drivers

