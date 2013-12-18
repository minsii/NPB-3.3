SHELL=/bin/sh
ARCH ?= HOST
USE_DDT ?= 0
__BENCHMARK=hmg
__BENCHMARKU=HMG
_BENCHMARK=$(__BENCHMARK)
_BENCHMARKU=$(__BENCHMARK)

ifeq ($(ARCH), HOST)
include ../config/make.def.omp
else
_BENCHMARK=$(__BENCHMARK)-mic
_BENCHMARKU=$(__BENCHMARK)-MIC
include ../config/make.def.omp.mic
endif

ifeq ($(USE_DDT), 1)
BENCHMARK=ddt-$(_BENCHMARK)
BENCHMARKU=DDT-$(_BENCHMARK)
MG_OBJS = ddt-hmg.o
else
BENCHMARK=$(_BENCHMARK)
BENCHMARKU=$(_BENCHMARK)
MG_OBJS = hmg.o
endif

COMM_OBJS += ${COMMON}/omp_print_results.o  \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config $(MG_OBJS) ${COMM_OBJS} ddt-hmg-timer.o
	mkdir -p $(dir $@)
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} $(MG_OBJS) ${COMM_OBJS} ${FMPI_LIB}
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM}.timer ddt-hmg-timer.o ${COMM_OBJS} ${FMPI_LIB}

hmg.o:		hmg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ hmg.f

ddt-hmg.o:	ddt-hmg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ ddt-hmg.f

ddt-hmg-timer.o:	ddt-hmg-timer.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ ddt-hmg-timer.f
	
clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



