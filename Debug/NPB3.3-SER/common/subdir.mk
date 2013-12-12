################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../NPB3.3-SER/common/c_print_results.c \
../NPB3.3-SER/common/c_timers.c \
../NPB3.3-SER/common/wtime.c \
../NPB3.3-SER/common/wtime_sgi64.c 

OBJS += \
./NPB3.3-SER/common/c_print_results.o \
./NPB3.3-SER/common/c_timers.o \
./NPB3.3-SER/common/wtime.o \
./NPB3.3-SER/common/wtime_sgi64.o 

C_DEPS += \
./NPB3.3-SER/common/c_print_results.d \
./NPB3.3-SER/common/c_timers.d \
./NPB3.3-SER/common/wtime.d \
./NPB3.3-SER/common/wtime_sgi64.d 


# Each subdirectory must supply rules for building sources it contributes
NPB3.3-SER/common/%.o: ../NPB3.3-SER/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


