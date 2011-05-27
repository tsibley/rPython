# Process this file with autoconf to produce a configure script.
# This file is based on configure.ac file distributed along with the rJava package
AC_INIT(rPython, 0.2, cgb@datanalytics.com)
AC_CONFIG_SRCDIR([src])
#AC_CONFIG_HEADER([src/config.h])

# find R home and set CC/CFLAGS
: ${R_HOME=`R RHOME`}
if test -z "${R_HOME}"; then
  echo "could not determine R_HOME"
  exit 1
fi
RBIN="${R_HOME}/bin/R"
CC=`"${RBIN}" CMD config CC`;
CFLAGS=`"${RBIN}" CMD config CFLAGS`

RLD=`"${RBIN}" CMD config --ldflags 2>/dev/null`
has_R_shlib=no
if test -n "$RLD"; then
   has_R_shlib=yes
fi

# Extract the linker and include flags for python
: ${PYTHONCONFIG=`which python-config`}
if test -z "${PYTHONCONFIG}"; then
  echo "could not locate python-config"
  exit 1
fi

PKG_LIBS=`$PYTHONCONFIG --libs`
PKG_CFLAGS=`$PYTHONCONFIG --includes`

AC_SUBST(PKG_LIBS)
AC_SUBST(PKG_CFLAGS)

AC_PREREQ

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
#AC_HEADER_STDC
#AC_HEADER_SYS_WAIT
#AC_CHECK_HEADERS([string.h])

# Checks for typedefs, structures, and compiler characteristics.
#AC_C_CONST
#AC_HEADER_TIME

AC_CONFIG_FILES([src/Makevars])
AC_OUTPUT
