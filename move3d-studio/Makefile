# robotpkg Makefile for:	path/move3d-studio
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

PKGNAME=		move3d-studio-${VERSION}
DISTNAME=		move3d-studio-${VERSION}
VERSION=		1.2

CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=move3d-studio/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/move3d-studio.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		The BioMove3D development studio

#move3d-studio is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


CMAKE_ARGS+= -DMOVE3D_QT=ON
##CMAKE_ARGS+= -DMOVE3D_QT_REMOTE=ON
## Dependencies 
include ../../math/gbM/depend.mk
include ../../motion/softMotion-libs/depend.mk

include ../../mk/sysdep/glu.mk
include ../../mk/sysdep/gsl.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/sysdep/glib2.mk

include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/gts.mk
include ../../wip/sysdep/qhull.mk
include ../../wip/sysdep/libxpm.mk
include ../../wip/sysdep/xforms.mk
include ../../mk/sysdep/qwt.mk

include ../../wip/libmove3d/depend.mk
include ../../wip/libmove3d-hri/depend.mk
include ../../wip/libmove3d-planners/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

include ../../pkgtools/pkg-config/depend.mk
