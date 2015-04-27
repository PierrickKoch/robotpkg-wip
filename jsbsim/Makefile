# robotpkg Makefile for:	simulation/jsbsim
# Created:			Arnaud Degroote on Mon, 27 Apr 2015
#

DISTNAME= 		jsbsim-${VERSION}
VERSION=		20150424
CATEGORIES=		simulation

FETCH_METHOD= 		cvs
MASTER_SITES=		:pserver:jsbsim.cvs.sourceforge.net:/cvsroot/jsbsim@:${VERSION}+JSBSim

MAINTAINER=			arnaud.degroote@isae-supaero.fr
COMMENT=			Open source flight dynamics model
LICENSE=			gnu-lgpl-v2

CMAKE_ARGS 		+= -DINSTALL_PYTHON_MODULE=OFF
CMAKE_ARGS 		+= -DBUILD_SHARED_LIBS=ON

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
