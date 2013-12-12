################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../NPB3.3-SER/DC/adc.c \
../NPB3.3-SER/DC/dc.c \
../NPB3.3-SER/DC/extbuild.c \
../NPB3.3-SER/DC/jobcntl.c \
../NPB3.3-SER/DC/rbt.c 

OBJS += \
./NPB3.3-SER/DC/adc.o \
./NPB3.3-SER/DC/dc.o \
./NPB3.3-SER/DC/extbuild.o \
./NPB3.3-SER/DC/jobcntl.o \
./NPB3.3-SER/DC/rbt.o 

C_DEPS += \
./NPB3.3-SER/DC/adc.d \
./NPB3.3-SER/DC/dc.d \
./NPB3.3-SER/DC/extbuild.d \
./NPB3.3-SER/DC/jobcntl.d \
./NPB3.3-SER/DC/rbt.d 


# Each subdirectory must supply rules for building sources it contributes
NPB3.3-SER/DC/%.o: ../NPB3.3-SER/DC/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


