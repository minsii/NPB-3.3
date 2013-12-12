################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include NPB3.3-SER/sys/subdir.mk
-include NPB3.3-SER/common/subdir.mk
-include NPB3.3-SER/IS/subdir.mk
-include NPB3.3-SER/DC/subdir.mk
-include NPB3.3-OMP/sys/subdir.mk
-include NPB3.3-OMP/common/subdir.mk
-include NPB3.3-OMP/IS/subdir.mk
-include NPB3.3-OMP/DC/subdir.mk
-include NPB3.3-MPI/sys/subdir.mk
-include NPB3.3-MPI/common/subdir.mk
-include NPB3.3-MPI/MPI_dummy/subdir.mk
-include NPB3.3-MPI/IS/subdir.mk
-include NPB3.3-MPI/DT/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: NPB3.3.exe

# Tool invocations
NPB3.3.exe: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cygwin C Linker'
	gcc  -o "NPB3.3.exe" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) NPB3.3.exe
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
