################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_dmamux.c \
../drivers/fsl_edma.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpi2c.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_pwm.c \
../drivers/fsl_sai.c \
../drivers/fsl_sai_edma.c \
../drivers/fsl_xbara.c 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_dmamux.d \
./drivers/fsl_edma.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpi2c.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_pwm.d \
./drivers/fsl_sai.d \
./drivers/fsl_sai_edma.d \
./drivers/fsl_xbara.d 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_dmamux.o \
./drivers/fsl_edma.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpi2c.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_pwm.o \
./drivers/fsl_sai.o \
./drivers/fsl_sai_edma.o \
./drivers/fsl_xbara.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MIMXRT1011DAE5A -DCPU_MIMXRT1011DAE5A_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_I2C_BASED_COMPONENT_USED=1 -DBOARD_USE_CODEC=1 -DCODEC_WM8960_ENABLE -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\board" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\serial_manager" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\xip" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\drivers" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\uart" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\device" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\CMSIS" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\lists" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\utilities" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\audio" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\gpio" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\i2c" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec\port\wm8960" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec\port" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\codec" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\component\codec\port" -I"C:\Users\tarun\Documents\MCUXpressoIDE_11.9.0_2144\workspace\Project33_onboard_mic_gpio_RT1010\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_dmamux.d ./drivers/fsl_dmamux.o ./drivers/fsl_edma.d ./drivers/fsl_edma.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_lpi2c.d ./drivers/fsl_lpi2c.o ./drivers/fsl_lpuart.d ./drivers/fsl_lpuart.o ./drivers/fsl_pwm.d ./drivers/fsl_pwm.o ./drivers/fsl_sai.d ./drivers/fsl_sai.o ./drivers/fsl_sai_edma.d ./drivers/fsl_sai_edma.o ./drivers/fsl_xbara.d ./drivers/fsl_xbara.o

.PHONY: clean-drivers

