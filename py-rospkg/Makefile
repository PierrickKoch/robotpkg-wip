# robotpkg Makefile for:	sysutils/py-rospkg
# Created:			Anthony Mallet on Sun, 15 Jul 2012
#

VERSION=		1.0.6
DISTNAME=		rospkg-${VERSION}
PKGNAME=		${PKGTAG.python}-${DISTNAME}
MASTER_SITES=		http://pr.willowgarage.com/downloads/rospkg/

CATEGORIES=		sysutils
COMMENT=		ROS basic utilities for querying stacks information
HOMEPAGE=		http://ros.org/wiki/rospkg
MAINTAINER=		mallet@laas.fr
LICENSE=		modified-bsd

USE_LANGUAGES=
WRKSRC=			${WRKDIR}/${DISTNAME}
CONFLICTS+=		py[0-9][0-9]-rospkg-[0-9]*

include ../../wip/ros18-base/Makefile.common

SUBST_CLASSES+=		py-syspath py-interp
SUBST_FILES.py-syspath+=scripts/rosversion
SUBST_FILES.py-interp+=	scripts/rosversion

PYDISTUTILSPKG=		yes
DEPEND_ABI.python=	python<3

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
