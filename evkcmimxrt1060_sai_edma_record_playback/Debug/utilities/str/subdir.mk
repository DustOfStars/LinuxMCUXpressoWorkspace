################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utilities/str/fsl_str.c 

C_DEPS += \
./utilities/str/fsl_str.d 

OBJS += \
./utilities/str/fsl_str.o 


# Each subdirectory must supply rules for building sources it contributes
utilities/str/%.o: ../utilities/str/%.c utilities/str/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1062DVL6B -DCPU_MIMXRT1062DVL6B_cm7 -DMCUXPRESSO_SDK -DXIP_BOOT_HEADER_ENABLE=1 -DXIP_EXTERNAL_FLASH=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DSDK_I2C_BASED_COMPONENT_USED=1 -DCODEC_MULTI_ADAPTERS=1 -DCODEC_CS42448_ENABLE -DCODEC_WM8962_ENABLE -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/xip" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port/wm8962" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/codec/port/cs42448" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/component/i2c" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkcmimxrt1060_sai_edma_record_playback/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-utilities-2f-str

clean-utilities-2f-str:
	-$(RM) ./utilities/str/fsl_str.d ./utilities/str/fsl_str.o

.PHONY: clean-utilities-2f-str

