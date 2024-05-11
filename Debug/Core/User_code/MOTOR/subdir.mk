################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User_code/MOTOR/motor.c 

OBJS += \
./Core/User_code/MOTOR/motor.o 

C_DEPS += \
./Core/User_code/MOTOR/motor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User_code/MOTOR/%.o Core/User_code/MOTOR/%.su Core/User_code/MOTOR/%.cyclo: ../Core/User_code/MOTOR/%.c Core/User_code/MOTOR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User_code-2f-MOTOR

clean-Core-2f-User_code-2f-MOTOR:
	-$(RM) ./Core/User_code/MOTOR/motor.cyclo ./Core/User_code/MOTOR/motor.d ./Core/User_code/MOTOR/motor.o ./Core/User_code/MOTOR/motor.su

.PHONY: clean-Core-2f-User_code-2f-MOTOR

