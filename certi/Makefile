# robotpkg Makefile for:	architecture/certi
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

PKG_VERSION=	3.4.3
PKGREVISION=    1
DISTNAME= 		CERTI-${PKG_VERSION}-Source
PKGNAME= 		certi-${PKG_VERSION}
CATEGORIES=		architecture
MASTER_SITES=	http://download.savannah.gnu.org/releases/certi/
MASTER_REPOSITORY=	git git://git.savannah.nongnu.org/certi.git

MAINTAINER=	arnaud.degroote@isae-supaero.fr
HOMEPAGE=	https://savannah.nongnu.org/projects/certi
COMMENT=	An Open Source HLA RTI (High Level Architecture)
LICENSE=	gnu-gpl-v2

DEPEND_ABI.cmake= cmake>=2.8.11

CMAKE_ARGS+= 	-DCERTI_USE_NULL_PRIME_MESSAGE_PROTOCOL=ON

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
