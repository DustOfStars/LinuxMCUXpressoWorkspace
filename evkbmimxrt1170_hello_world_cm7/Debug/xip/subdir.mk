################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../xip/dcd.c \
../xip/evkbmimxrt1170_flexspi_nor_config.c \
../xip/fsl_flexspi_nor_boot.c \
../xip/xmcd.c 

C_DEPS += \
./xip/dcd.d \
./xip/evkbmimxrt1170_flexspi_nor_config.d \
./xip/fsl_flexspi_nor_boot.d \
./xip/xmcd.d 

OBJS += \
./xip/dcd.o \
./xip/evkbmimxrt1170_flexspi_nor_config.o \
./xip/fsl_flexspi_nor_boot.o \
./xip/xmcd.o 


# Each subdirectory must supply rules for building sources it contributes
xip/%.o: ../xip/%.c xip/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DMCUXPRESSO_SDK -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -DMCUX_META_BUILD -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/source" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/xip" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/drivers" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/CMSIS/m-profile" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/device/periph" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/str" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/utilities/debug_console_lite" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/component/uart" -I"/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/board" -O0 -fno-common -g3 -gdwarf-4 -mthumb -c -ffunction-sections -fdata-sections -fno-builtin -imacros "/home/nxf91053/Documents/MCUXpresso_24.12.148/workspace/evkbmimxrt1170_hello_world_cm7/source/mcux_config.h" -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-xip

clean-xip:
	-$(RM) ./xip/dcd.d ./xip/dcd.o ./xip/evkbmimxrt1170_flexspi_nor_config.d ./xip/evkbmimxrt1170_flexspi_nor_config.o ./xip/fsl_flexspi_nor_boot.d ./xip/fsl_flexspi_nor_boot.o ./xip/xmcd.d ./xip/xmcd.o

.PHONY: clean-xip

