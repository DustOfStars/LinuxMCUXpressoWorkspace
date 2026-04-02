################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c \
../lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c \
../lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c \
../lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c 

C_DEPS += \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.d \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.d \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.d \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.d 

OBJS += \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.o \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.o \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.o \
./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.o 


# Each subdirectory must supply rules for building sources it contributes
lvgl/lvgl/src/extra/libs/fsdrv/%.o: ../lvgl/lvgl/src/extra/libs/fsdrv/%.c lvgl/lvgl/src/extra/libs/fsdrv/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_MIMXRT1062DVL6A -DCPU_MIMXRT1062DVL6A_cm7 -DXIP_BOOT_HEADER_DCD_ENABLE=1 -DSKIP_SYSCLK_INIT -DDATA_SECTION_IS_CACHEABLE=1 -DSDK_DEBUGCONSOLE=1 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DLV_CONF_INCLUDE_SIMPLE=1 -DMCUXPRESSO_SDK -DSDK_I2C_BASED_COMPONENT_USED=1 -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__NEWLIB__ -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\source" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\drivers" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\touchpanel" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\video" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl\lvgl\demos" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl\lvgl\demos\widgets" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl\lvgl" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl\lvgl\src" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\device" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\utilities" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\component\uart" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\component\serial_manager" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\component\lists" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\xip" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\freertos\freertos-kernel\include" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\freertos\freertos-kernel\portable\GCC\ARM_CM4F" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\CMSIS" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\board" -I"C:\qwen_learn_sdk\evkmimxrt1060_lvgl_demo_widgets\lvgl\template" -Os -fno-common -g -gdwarf-4 -c -ffunction-sections -fdata-sections -fno-builtin -Wno-format -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lvgl-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv

clean-lvgl-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv:
	-$(RM) ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.d ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.o ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.d ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.o ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.d ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.o ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.d ./lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.o

.PHONY: clean-lvgl-2f-lvgl-2f-src-2f-extra-2f-libs-2f-fsdrv

