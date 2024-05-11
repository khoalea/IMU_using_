################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User_code/PID/pid.c \
../Core/User_code/PID/pid_t.c 

OBJS += \
./Core/User_code/PID/pid.o \
./Core/User_code/PID/pid_t.o 

C_DEPS += \
./Core/User_code/PID/pid.d \
./Core/User_code/PID/pid_t.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User_code/PID/%.o Core/User_code/PID/%.su Core/User_code/PID/%.cyclo: ../Core/User_code/PID/%.c Core/User_code/PID/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User_code-2f-PID

clean-Core-2f-User_code-2f-PID:
	-$(RM) ./Core/User_code/PID/pid.cyclo ./Core/User_code/PID/pid.d ./Core/User_code/PID/pid.o ./Core/User_code/PID/pid.su ./Core/User_code/PID/pid_t.cyclo ./Core/User_code/PID/pid_t.d ./Core/User_code/PID/pid_t.o ./Core/User_code/PID/pid_t.su

.PHONY: clean-Core-2f-User_code-2f-PID

