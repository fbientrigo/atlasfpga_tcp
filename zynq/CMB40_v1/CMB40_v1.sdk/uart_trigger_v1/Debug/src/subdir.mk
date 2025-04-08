################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ADC_driver.c \
../src/DRS4_driver.c \
../src/gpio_handler.c \
../src/i2c_access.c \
../src/main.c \
../src/platform.c \
../src/platform_mb.c \
../src/platform_ppc.c 

OBJS += \
./src/ADC_driver.o \
./src/DRS4_driver.o \
./src/gpio_handler.o \
./src/i2c_access.o \
./src/main.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_ppc.o 

C_DEPS += \
./src/ADC_driver.d \
./src/DRS4_driver.d \
./src/gpio_handler.d \
./src/i2c_access.d \
./src/main.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_ppc.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../uart_trigger_v1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


