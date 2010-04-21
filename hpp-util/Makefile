# $LAAS: depend.mk 2010/21/04 15:59:08 tmoulard $
#
# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                      Thomas Moulard on Wed Apr 21 2010
#

DISTNAME=	hpp-util-${VERSION}
PKGNAME=	hpp-util-${VERSION}
VERSION=	0.1

CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hpp-util/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}algo/hpp-util

MAINTAINER=	hpp@laas.fr
#HOMEPAGE=
COMMENT=	Technical tools shared amongst HPP.

USE_LANGUAGES+= c c++

GNU_CONFIGURE=	yes

DOXYGEN_PLIST_DIR+=	share/doc/hpp-util

# options
PKG_SUPPORTED_OPTIONS+=		verbose
PKG_OPTION_DESCR.verbose=	Compile in verbose mode
PKG_OPTION_SET.verbose:=	CPPFLAGS+=-DHPP_DEBUG

PKG_SUPPORTED_OPTIONS+=		benchmark
PKG_OPTION_DESCR.benchmark=	Measure computation times
PKG_OPTION_SET.benchmark:=	CPPFLAGS+=-DHPP_ENABLE_BENCHMARK -DHPP_DEBUG

include ../../mk/sysdep/doxygen.mk
include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/robotpkg.mk
