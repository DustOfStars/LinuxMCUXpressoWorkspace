################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/peripherals.c \
../board/pin_mux.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/peripherals.d \
./board/pin_mux.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MIMXRT1011DAE5A -DCPU_MIMXRT1011DAE5A_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_I2C_BASED_COMPONENT_USED=1 -DBOARD_USE_CODEC=1 -DCODEC_WM8960_ENABLE -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\board" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\serial_manager" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\xip" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\drivers" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\uart" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\device" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\CMSIS" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\lists" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\utilities" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\audio" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\gpio" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\i2c" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec\port\wm8960" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec\port" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\codec\port" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/peripherals.d ./board/peripherals.o ./board/pin_mux.d ./board/pin_mux.o

.PHONY: clean-board

