# robotpkg Makefile for:	localization/rtslam-genom
# Created:			Arnaud Degroote on Tue, 19 Mar 2013
#

DISTNAME=		rtslam-genom-${VERSION}
VERSION=		0.2
CATEGORIES=		localization
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=rtslam-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}rtslam-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Realtime slam - genom module

GNU_CONFIGURE=		yes

define PKG_OPTION_UNSET.api
  include ../../wip/jafar-rtslam/depend.mk
endef

GENOM_MODULE=		rtslam
include ../../architecture/genom/depend.mk

# Use O2, it seems 10% more efficient that O3 on various tested platform, in
# particular our robots. While here, add the NDEBUG flag pour boost::ublas
CXX_COMPILER_FLAGS_NDEBUG=-O2 -DNDEBUG -DBOOST_UBLAS_NDEBUG
C_COMPILER_FLAGS_NDEBUG=-O2 -DNDEBUG -DBOOST_UBLAS_NDEBUG

include ../../interfaces/genBasic-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
