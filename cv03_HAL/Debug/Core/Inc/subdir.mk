################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/sct.c 

OBJS += \
./Core/Inc/sct.o 

C_DEPS += \
./Core/Inc/sct.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/sct.o: ../Core/Inc/sct.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F030x8 -DDEBUG -c -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Inc/sct.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

