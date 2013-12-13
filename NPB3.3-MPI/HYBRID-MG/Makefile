SHELL=/bin/sh
BENCHMARK=hmg
BENCHMARKU=HMG

include ../config/make.def.omp

OBJS = hmg.o ${COMMON}/omp_print_results.o  \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS}
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${OBJS} ${FMPI_LIB}

hmg.o:		hmg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} -o $@ hmg.f

clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



