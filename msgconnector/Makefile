# robotpkg Makefile for:	planning/msgconnector
# Created:			Raphaël Lallement, 21/01/2013
#

DISTNAME=		msgconnector-${VERSION}
VERSION=		2.8.3
PKGREVISION=    	
CATEGORIES=		planning
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=msgconnector/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hatp/msgconnector


MAINTAINER=		raphael.lallement@laas.fr
COMMENT=		Library to handle HATP communications
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		yes

#--- Options : msgconnector can be build with different bridges
PKG_SUPPORTED_OPTIONS+= bridge-print
PKG_SUPPORTED_OPTIONS+= openprs
PKG_SUPPORTED_OPTIONS+= yarp
PKG_SUPPORTED_OPTIONS+= liboro
#PKG_SUPPORTED_OPTIONS+= server

PKG_OPTION_DESCR.bridge-print=	Enable the bridge that displays all messages
PKG_OPTION_DESCR.openprs=	Enable the bridge to openprs
PKG_OPTION_DESCR.yarp=	Enable the bridge to yarp
PKG_OPTION_DESCR.liboro=	Enable the bridge to the ORO ontology server
#PKG_OPTION_DESCR.server=	Enable the server to be build

define PKG_OPTION_SET.bridge-print
  CMAKE_ARGS+= -DCOMPILE_BRIDGE_PRINT=ON
endef

define PKG_OPTION_SET.openprs
  CMAKE_ARGS+= -DCOMPILE_BRIDGE_OPRS=ON
  CMAKE_ARGS+= -DlibhatpROOT=${PREFIX.libhatp}
  include ../../wip/libhatp/depend.mk
  include ../../supervision/openprs/depend.mk
endef

define PKG_OPTION_SET.yarp
  CMAKE_ARGS+= -DCOMPILE_BRIDGE_YARP=ON
  include ../../middleware/yarp/depend.mk
endef

define PKG_OPTION_SET.liboro
  CMAKE_ARGS+= -DCOMPILE_BRIDGE_ORO=ON
  include ../../knowledge/liboro/depend.mk
endef

#define PKG_OPTION_SET.server
#  CMAKE_ARGS+= -DCOMPILE_SERVER=ON
#endef

#PKG_SUGGESTED_OPTIONS= server

DEPEND_ABI.boost-libs=boost-libs>=1.34
DEPEND_ABI.boost-headers=boost-headers>=1.34

CMAKE_ARGS+=	-DBOOST_LIBRARYDIR=${PREFIX.boost-libs}
CMAKE_ARGS+=	-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}

include ../../pkgtools/pkg-config/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
