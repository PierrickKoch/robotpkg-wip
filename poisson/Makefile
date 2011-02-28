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

DISTNAME=			PoissonRecon
PKGNAME=			poisson-2
EXTRACT_SUFX= .zip
CATEGORIES=		modeling
MASTER_SITES=	http://www.cs.jhu.edu/~misha/Code/PoissonRecon/Version2/

MAINTAINER=		openrobots@laas.fr
HOMEPAGE=			http://www.cs.jhu.edu/~misha/Code/PoissonRecon/Version2
COMMENT=			C++ library for surface reconstruction using Poisson isosurface.
LICENSE=			modified-bsd


WRKSRC=			${WRKDIR}/PoissonRecon

USE_LANGUAGES+=		c c++
USE_PKGLOCALEDIR=	yes
NO_CONFIGURE=			yes

include ../../pkgtools/libtool/depend.mk
include ../../mk/robotpkg.mk

post-extract:
	${MKDIR} ${WRKSRC}/Bin/Linux

