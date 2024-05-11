################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/User_code/IMU_MPU6050/mpu6050.c 

OBJS += \
./Core/User_code/IMU_MPU6050/mpu6050.o 

C_DEPS += \
./Core/User_code/IMU_MPU6050/mpu6050.d 


# Each subdirectory must supply rules for building sources it contributes
Core/User_code/IMU_MPU6050/%.o Core/User_code/IMU_MPU6050/%.su Core/User_code/IMU_MPU6050/%.cyclo: ../Core/User_code/IMU_MPU6050/%.c Core/User_code/IMU_MPU6050/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-User_code-2f-IMU_MPU6050

clean-Core-2f-User_code-2f-IMU_MPU6050:
	-$(RM) ./Core/User_code/IMU_MPU6050/mpu6050.cyclo ./Core/User_code/IMU_MPU6050/mpu6050.d ./Core/User_code/IMU_MPU6050/mpu6050.o ./Core/User_code/IMU_MPU6050/mpu6050.su

.PHONY: clean-Core-2f-User_code-2f-IMU_MPU6050

