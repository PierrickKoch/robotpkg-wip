# robotpkg Makefile for:	sysutils/py-rospkg
# Created:			Anthony Mallet on Sun, 15 Jul 2012
#

COMMIT=			a01b6cb
VERSION=		1.0.7
PKGNAME=		${PKGTAG.python}-rospkg-${VERSION}
DISTNAME=		rospkg-${VERSION}
MASTER_SITES=		${MASTER_SITE_GITHUB:=ros/rospkg/tarball/${VERSION}?f=}

CATEGORIES=		sysutils
COMMENT=		ROS basic utilities for querying stacks information
HOMEPAGE=		http://ros.org/wiki/rospkg

WRKSRC=			${WRKDIR}/ros-rospkg-${COMMIT}

include ../../wip/ros18-base/Makefile.common

USE_LANGUAGES=
CONFLICTS+=		py[0-9][0-9]-rospkg-${VERSION}

SUBST_CLASSES+=		py-syspath py-interp
SUBST_FILES.py-syspath+=scripts/rosversion
SUBST_FILES.py-interp+=	scripts/rosversion

PYDISTUTILSPKG=		yes
DEPEND_ABI.python=	python<3

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
