# $LAAS: Makefile 2010/03/22 16:02:45 nksallem $
#
# Copyright (c) 2007-2010 LAAS/CNRS
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
#                                      	 Nizar Sallem on Tue Aug 24 2010
#

DISTNAME=			vcglib-20100814
PKGNAME=			vcg-libply-20100814
CATEGORIES=		modeling devel
MASTER_SITES=	${MASTER_SITE_ROBOTPKG}
MASTER_REPOSITORY=\
  svn \
	https://vcg.svn.sourceforge.net/svnroot/vcg/trunk/vcglib 

MAINTAINER=		openrobots@laas.fr
HOMEPAGE=			http://vcg.sourceforge.net/index.php/VCGLib
COMMENT=			C++ library for ply file manipulation.
LICENSE=			gnu-gpl-v2


WRKSRC=			${WRKDIR}/vcglib/wrap/ply

USE_LANGUAGES+=		c c++
USE_PKGLOCALEDIR=	yes

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
post-extract:
	 ${CP} ${FILESDIR}/CMakeLists.txt ${WRKSRC}
