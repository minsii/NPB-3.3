################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../NPB3.3-SER/IS/is.c 

OBJS += \
./NPB3.3-SER/IS/is.o 

C_DEPS += \
./NPB3.3-SER/IS/is.d 


# Each subdirectory must supply rules for building sources it contributes
NPB3.3-SER/IS/%.o: ../NPB3.3-SER/IS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


