################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../NPB3.3-OMP/common/c_print_results.c \
../NPB3.3-OMP/common/c_timers.c \
../NPB3.3-OMP/common/wtime.c \
../NPB3.3-OMP/common/wtime_sgi64.c 

OBJS += \
./NPB3.3-OMP/common/c_print_results.o \
./NPB3.3-OMP/common/c_timers.o \
./NPB3.3-OMP/common/wtime.o \
./NPB3.3-OMP/common/wtime_sgi64.o 

C_DEPS += \
./NPB3.3-OMP/common/c_print_results.d \
./NPB3.3-OMP/common/c_timers.d \
./NPB3.3-OMP/common/wtime.d \
./NPB3.3-OMP/common/wtime_sgi64.d 


# Each subdirectory must supply rules for building sources it contributes
NPB3.3-OMP/common/%.o: ../NPB3.3-OMP/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


