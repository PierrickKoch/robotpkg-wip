# autoconf script for MUMPS

AC_PREREQ(2.62)
AC_INIT([mumps],[@VERSION@])

AC_CONFIG_SRCDIR([MUMPS/src/dmumps_part1.F])
AM_INIT_AUTOMAKE([foreign no-define])

# compilers et al.
AC_PROG_CC
AC_PROG_F77
AC_FC_WRAPPERS
AC_PROG_INSTALL
AC_PROG_LIBTOOL

# verify that we can compile Fortran 90 code
AC_MSG_CHECKING([whether we can compile Fortran 90 code])
AC_LANG_PUSH(Fortran 77)
AC_COMPILE_IFELSE([        MODULE BLA
      DOUBLE PRECISION, DIMENSION(:), ALLOCATABLE :: BLUBB
      END MODULE BLA],[can_f90=yes],[can_f90=no])
AC_MSG_RESULT([$can_f90])
AC_LANG_POP(Fortran 77)
if test $can_f90 = no; then
  AC_MSG_ERROR([your Fortran compiler can't compile Fortran 90])
fi

# check for pthread.h header file
AC_CHECK_HEADER([pthread.h],,[CPPFLAGS="$CPPFLAGS -DWITHOUT_PTHREAD=1"])
AC_CHECK_LIB([pthread],[pthread_create],[LIBS="-lpthread $LIBS"])

# output
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
