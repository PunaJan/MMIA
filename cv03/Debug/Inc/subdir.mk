################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/sct.c 

OBJS += \
./Inc/sct.o 

C_DEPS += \
./Inc/sct.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/sct.o: ../Inc/sct.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DSTM32F030R8Tx -DSTM32F030x8 -DSTM32 -DSTM32F0 -DNUCLEO_F030R8 -DDEBUG -c -I"D:/xpunar00/MMIA/cv03/CMSIS/Device/ST/STM32F0xx/Include" -I"D:/xpunar00/MMIA/cv03/CMSIS/Include" -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Inc/sct.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

