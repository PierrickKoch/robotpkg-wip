# robotpkg Makefile for:	architecture/certi
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

COMMIT=		HEAD
PKG_VERSION=	20130312
PKGREVISION= 	1
DISTNAME= 	certi-${PKG_VERSION}
CATEGORIES=		architecture
MASTER_SITES=	:pserver:anonymous@cvs.savannah.nongnu.org:/sources/certi@${COMMIT}+certi
FETCH_METHOD=	cvs

MAINTAINER=	robotpkg@laas.fr
HOMEPAGE=	https://savannah.nongnu.org/projects/certi
COMMENT=	An Open Source HLA RTI (High Level Architecture)
LICENSE=	gnu-gpl-v2

PKG_SUPPORTED_OPTIONS+=		gui
PKG_OPTION_DESCR.gui=		Enable GUI support
define PKG_OPTION_SET.gui
  CMAKE_ARGS+=			-DFORCE_NO_X11=OFF
  include ../../mk/sysdep/libX11.mk
endef
define PKG_OPTION_UNSET.gui
  CMAKE_ARGS+=			-DFORCE_NO_X11=ON
endef

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/bison.mk
include ../../mk/sysdep/flex.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/robotpkg.mk
