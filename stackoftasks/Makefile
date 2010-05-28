#
# Copyright (c) 2009-2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice  and this list of  conditions in the documentation   and/or
#      other materials provided with the distribution.
#
#                                      Nicolas Mansard on Tue Jun  9 2009
#

# FIXME: does not compile + missing PLIST
# .../include/MatrixAbstractLayer/boostMatrix.h:183: error: 'stderr' was not declared in this scope


PKGVERSION=	1.2.3
DISTNAME=	stackoftasks-${PKGVERSION}

CATEGORIES=	motion
MASTER_SITES=	# non-free
MASTER_REPOSITORY=${MASTER_REPOSITORY_JRL}/StackOfTasks

MAINTAINER=	nicolas.mansard@laas.fr
COMMENT=	Inverse kinematics based control for humanoid robots

LICENSE=	cnrs-stackoftasks-license
RESTRICTED=     Redistribution not permitted
NO_PUBLIC_SRC=  ${RESTRICTED}
NO_PUBLIC_BIN=  ${RESTRICTED}

USE_LANGUAGES+=	c c++ fortran

INTERACTIVE_STAGE=      fetch
FETCH_MESSAGE+=\
        "${bf}The file ${DISTNAME}${EXTRACT_SUFX} must be put manually into:${rm}"
FETCH_MESSAGE+= "       ${DISTDIR}/"
FETCH_MESSAGE+= ""
FETCH_MESSAGE+= " To get the source code, contact ${MAINTAINER}."
FETCH_MESSAGE+= " Type \`${MAKE} show-license' for more information."

CMAKE_ARGS+=	-DBLAS_blas_LIBRARY=${PREFIX.blas}/lib/libblas.so
CMAKE_ARGS+=	-DLAPACK_lapack_LIBRARY=${PREFIX.lapack}/lib/liblapack.so
CMAKE_ARGS+=	-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=	-DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib
CMAKE_ARGS+=	-DBOOSTNUMERICBINDINGS_DIR=${PREFIX.boost-numeric-bindgins}

# doc option
PKG_SUPPORTED_OPTIONS+= doc
PKG_SUGGESTED_OPTIONS+= doc
PKG_OPTION_DESCR.doc?=  Install ${PKGBASE} documentation
# openhrp option
PKG_SUPPORTED_OPTIONS+= openhrp
PKG_SUGGESTED_OPTIONS+= openhrp
PKG_OPTION_DESCR.openhrp?= Install open-hrp via rpkg, and link sot with it.

define PKG_OPTION_SET.doc
  CMAKE_ARGS+=		-DGENERATE_DOC=ON
  DOXYGEN_PLIST_DIR+=	share/doc/stackoftasks

  include ../../mk/sysdep/doxygen.mk
  include ../../mk/sysdep/graphviz.mk
  include ../../mk/sysdep/pdflatex.mk
endef
define PKG_OPTION_UNSET.doc
  CMAKE_ARGS+=		-DGENERATE_DOC=OFF
endef

define PKG_OPTION_SET.openhrp
  CMAKE_ARGS+=		-DUSE_OPENHRP=ON
  CMAKE_ARGS+=		-DOPENHRP3_HOME=${PREFIX.OpenHRP}
  CMAKE_ARGS+=		-DHRP2_MODEL_DIRECTORY=${PREFIX.OpenHRP}/Controller/IOserver/robot/HRP2JRL/model
  CMAKE_ARGS+=		-DHRP2_CONFIG_DIRECTORY=${PREFIX.hrp2_14}/share/hrp2_14
  CMAKE_ARGS+=		-DGENERATE_DYNFILES=ON

  include ../../architecture/openhrp/depend.mk
  include ../../robots/hrpsys-jrl/depend.mk
  include ../../robots/hrp2-14/depend.mk
endef
define PKG_OPTION_UNSET.openhrp
  CMAKE_ARGS+=		-DUSE_OPENHRP=OFF
  CMAKE_ARGS+=		-DGENERATE_DYNFILES=OFF
endef

include ../../interfaces/jrl-mal/depend.mk
include ../../math/jrl-dynamics/depend.mk
include ../../math/hrp2-dynamics/depend.mk
include ../../path/jrl-walkgen/depend.mk

include ../../math/lapack/depend.mk
include ../../math/blas/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/boost-numeric-bindings/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

test:
	@echo ${CMAKE_ARGS}

