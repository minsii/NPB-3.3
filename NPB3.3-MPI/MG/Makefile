SHELL=/bin/sh
ARCH ?= HOST

ifeq ($(ARCH), HOST)
_BENCHMARK=mg
_BENCHMARKU=MG
include ../config/make.def
else
_BENCHMARK=mg-mic
_BENCHMARKU=MG-MIC
include ../config/make.def.mic
endif

COMM_OBJS += ${COMMON}/print_results.o  \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o
       
ifeq ($(USE_DDT), 1)
BENCHMARK=ddt-$(_BENCHMARK)
BENCHMARKU=DDT-$(_BENCHMARKU)
OBJS = ddt-mg.o ${COMM_OBJS}
else
BENCHMARK=$(_BENCHMARK)
BENCHMARKU=$(_BENCHMARKU)
OBJS = mg.o ${COMM_OBJS}
endif
       
include ../sys/make.common

${PROGRAM}: config ${OBJS} ddt-mg-timer.o
	mkdir -p $(dir $@)
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} ${FMPI_LIB}
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM}.timer ddt-mg-timer.o ${COMM_OBJS} ${FMPI_LIB}

mg.o:		mg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} mg.f

ddt-mg.o:	ddt-mg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ ddt-mg.f

ddt-mg-timer.o:	ddt-mg-timer.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ ddt-mg-timer.f
	
clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



