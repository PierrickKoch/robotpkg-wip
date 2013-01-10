# robotpkg Makefile for:	path/move3d-studio
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

PKGNAME=		move3d-studio-${VERSION}
DISTNAME=		move3d-studio-${VERSION}
VERSION=		3.9.1

CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/move3d-studio.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		The BioMove3D development studio

#move3d-studio is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


CMAKE_ARGS+= -DGENERATE_STUDIO=ON

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

include ../../wip/libmove3d/depend.mk

# XXX: no such package
# include ../../wip/libhri/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
