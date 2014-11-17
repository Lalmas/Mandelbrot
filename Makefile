# Generated automatically from Makefile.in by configure.
##### User configurable options #####
# This is an example Makefile.in (or Makefile configured with mpireconfig)
# for the programs cpi, pi3, and cpilog.  

CC          = mpicc
CCC         = mpicxx
F77         = mpif77
CLINKER     = mpicc
CCLINKER    = mpicxx
FLINKER     = mpif77
F90         = mpif90
F90LINKER   = mpif90	  
MAKE        = make --no-print-directory
SHELL       = /bin/sh
#

### End User configurable options ###

LIBS =
FLIBS =
EXECS = cpi 

default: mandel-par


mandel-par: mandel-par.o 
	$(CLINKER) -o mandel-par mandel-par.o -lm
mandel-seq: mandel-seq.o 
	$(CLINKER) -o mandel-seq mandel-seq.o -lm



#
# The Solaris C++ compiler creates a directory containing miscellaneous
# data.  The action is not documented in the Solaris CC man pages
# IRIX C++ creates ii_files
# pgCC creates .ii and .ti files
# We also remove any copy of pi3f90 that is created (e.g., pi3f90.f; pi3f90.f90
# is the master file)
clean:
	-rm -f *.o *~ PI* $(EXECS) pi3 simpleio hello++ pi3f90 cpilog
	-rm -rf SunWS_cache ii_files pi3f90.f pi3p cpip *.ti *.ii

.c.o:
	$(CC) $(CFLAGS) -c $<
.f.o:
	$(F77) $(FFLAGS) -c $<
.f90.o:
	$(F90) $(F90FLAGS) -c $<
.SUFFIXES: .f90
