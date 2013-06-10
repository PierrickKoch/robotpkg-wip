# robotpkg Makefile for:	wip/jafar-qdisplay
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

JAFAR_PKG=		qdisplay-0.2
PKGREVISION= 	1
CATEGORIES=		wip
JAFAR_COMMENT=		Jafar module to display objects of type jafar::image::JfrImage.

include ../../meta-pkgs/jafar/Makefile.common

DEPEND_ABI.qmake= qmake>=2
USE_QMAKE=	no

include ../../devel/jafar-kernel/depend.mk
include ../../image/jafar-image/depend.mk
include ../../math/jafar-jmath/depend.mk
include ../../math/boost-numeric-bindings/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
