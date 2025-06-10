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
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DMCUXPRESSO_SDK -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/xip" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utilities/%.o: ../utilities/%.S utilities/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/xip" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/component/uart" -g3 -gdwarf-4 -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-utilities

clean-utilities:
	-$(RM) ./utilities/fsl_assert.d ./utilities/fsl_assert.o ./utilities/fsl_memcpy.o

.PHONY: clean-utilities

