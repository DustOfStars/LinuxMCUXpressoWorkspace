################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_cache.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_dcdc.c \
../drivers/fsl_dmamux.c \
../drivers/fsl_edma.c \
../drivers/fsl_gpc.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lpi2c.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_pmu.c \
../drivers/fsl_sai.c \
../drivers/fsl_sai_edma.c \
../drivers/fsl_src.c 

C_DEPS += \
./drivers/fsl_cache.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_dcdc.d \
./drivers/fsl_dmamux.d \
./drivers/fsl_edma.d \
./drivers/fsl_gpc.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lpi2c.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_pmu.d \
./drivers/fsl_sai.d \
./drivers/fsl_sai_edma.d \
./drivers/fsl_src.d 

OBJS += \
./drivers/fsl_cache.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_dcdc.o \
./drivers/fsl_dmamux.o \
./drivers/fsl_edma.o \
./drivers/fsl_gpc.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lpi2c.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_pmu.o \
./drivers/fsl_sai.o \
./drivers/fsl_sai_edma.o \
./drivers/fsl_src.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1062DVL6B -DCPU_MIMXRT1062DVL6B_cm7 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DSDK_I2C_BASED_COMPONENT_USED=1 -DCODEC_MULTI_ADAPTERS=1 -DCODEC_CS42448_ENABLE -DCODEC_WM8962_ENABLE -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/xip" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port/wm8962" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port/cs42448" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/component/i2c" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_cache.d ./drivers/fsl_cache.o ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_dcdc.d ./drivers/fsl_dcdc.o ./drivers/fsl_dmamux.d ./drivers/fsl_dmamux.o ./drivers/fsl_edma.d ./drivers/fsl_edma.o ./drivers/fsl_gpc.d ./drivers/fsl_gpc.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_lpi2c.d ./drivers/fsl_lpi2c.o ./drivers/fsl_lpuart.d ./drivers/fsl_lpuart.o ./drivers/fsl_pmu.d ./drivers/fsl_pmu.o ./drivers/fsl_sai.d ./drivers/fsl_sai.o ./drivers/fsl_sai_edma.d ./drivers/fsl_sai_edma.o ./drivers/fsl_src.d ./drivers/fsl_src.o

.PHONY: clean-drivers

