# robotpkg Makefile for:	path/move3d-studio
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

PKGNAME=		move3d-studio-${VERSION}
DISTNAME=		move3d-studio-${VERSION}
VERSION=		1.2.1
PKGREVISION=		3

CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=move3d-studio/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/move3d-studio.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		The BioMove3D development studio

#move3d-studio is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2

PKG_SUPPORTED_OPTIONS= qtstudio
PKG_SUPPORTED_OPTIONS+= qtremote 
PKG_SUPPORTED_OPTIONS+= xforms

PKG_OPTION_DESCR.qtstudio= Install move3d-qt-studio
PKG_OPTION_DESCR.qtremote= Install move3d-remote
PKG_OPTION_DESCR.xforms= Install move3d-xforms

PKG_OPTION_SET.qtstudio= CMAKE_ARGS+= -DMOVE3D_QT=ON
PKG_OPTION_UNSET.qtstudio= CMAKE_ARGS+= -DMOVE3D_QT=OFF
PKG_OPTION_SET.qtremote= CMAKE_ARGS+= -DMOVE3D_QT_REMOTE=ON
PKG_OPTION_UNSET.qtremote= CMAKE_ARGS+= -DMOVE3D_QT_REMOTE=OFF
PKG_OPTION_SET.xforms= CMAKE_ARGS+= -DMOVE3D_XFORMS=ON
PKG_OPTION_UNSET.xforms= CMAKE_ARGS+= -DMOVE3D_XFORMS=OFF

PKG_SUGGESTED_OPTIONS=	qtstudio

include ../../wip/libmove3d-hri/depend.mk
include ../../wip/libmove3d-planners/depend.mk
include ../../wip/libmove3d/depend.mk
include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/libxpm.mk
include ../../wip/sysdep/qhull.mk

include ../../math/gbM/depend.mk
include ../../motion/softMotion-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/glib2.mk
include ../../mk/sysdep/glu.mk
include ../../mk/sysdep/gsl.mk
include ../../mk/sysdep/gts.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/sysdep/qwt.mk
include ../../mk/sysdep/xforms.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
