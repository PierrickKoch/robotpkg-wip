# robotpkg depend.mk for:	math/orocos-bfl
# Created:			Charles Lesire on Mon, 6 Jan 2014

# package description
NAME=			orocos-bfl
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.8.0
CATEGORIES=		math
MASTER_SITES=		http://people.mech.kuleuven.be/~tdelaet/bfl_tar/
EXTRACT_SUFX=		-src.tar.bz2

MAINTAINER=		klaas.gadeyne@gmail.com, tinne.delaet@mech.kuleuven.be
COMMENT=		The Bayesian Filtering Library
LICENSE=		gnu-lgpl-v2

# options
#PKG_SUPPORTED_OPTIONS+=	orocos
#PKG_OPTION_DESCR.orocos?= Install Orocos RTT plugin
#define PKG_OPTION_SET.orocos
#  CMAKE_ARGS+=	-DOROCOS_PLUGIN=ON
#  CMAKE_ARGS+=	-DOROCOS_INSTALL=${PREFIX.orocos-rtt}
#  include ../../middleware/orocos-rtt/depend.mk
#endef
#PKG_OPTION_UNSET.doc= CMAKE_ARGS+=--DOROCOS_PLUGIN=OFF

# dependencies
CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

DEPEND_ABI.boost-libs=	boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cppunit.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/robotpkg.mk

