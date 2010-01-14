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


PKGVERSION=	1.2.0
DISTNAME=	stackoftasks-${PKGVERSION}

CATEGORIES=	motion
MASTER_SITES=	# non-free
MASTER_REPOSITORY=${MASTER_REPOSITORY_JRL}/StackOfTasks

MAINTAINER=	hpp@laas.fr
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

CMAKE_ARGS+=	-DGENERATE_DYNFILES=OFF
CMAKE_ARGS+=	-DBLAS_blas_LIBRARY=${PREFIX.blas}/lib/libblas.so
CMAKE_ARGS+=	-DLAPACK_lapack_LIBRARY=${PREFIX.lapack}/lib/liblapack.so
CMAKE_ARGS+=	-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=	-DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib
CMAKE_ARGS+=	-DBOOSTNUMERICBINDINGS_DIR=${PREFIX.boost-numeric-bindgins}

# doc option
PKG_SUPPORTED_OPTIONS+= doc
PKG_SUGGESTED_OPTIONS+= doc
PKG_OPTION_DESCR.doc?=  Install ${PKGBASE} documentation

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

include ../../wip/jrl-mal/depend.mk
include ../../wip/jrl-dynamics/depend.mk
include ../../wip/jrl-walkgen/depend.mk

include ../../math/lapack/depend.mk
include ../../math/blas/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/boost-numeric-bindings/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
