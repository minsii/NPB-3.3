SHELL=/bin/sh
ARCH ?= HOST

ifeq ($(ARCH), HOST)
BENCHMARK=mg
BENCHMARKU=MG
include ../config/make.def
else
BENCHMARK=mg-mic
BENCHMARKU=MG-MIC
include ../config/make.def.mic
endif

OBJS = mg.o ${COMMON}/print_results.o  \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS}
	mkdir -p $(dir $@)
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} ${FMPI_LIB}

mg.o:		mg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} mg.f
	
clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



