# robotpkg Makefile for:	sysutils/py-rospkg
# Created:			Anthony Mallet on Sun, 15 Jul 2012
#

ROS_VERSION=		1.0.6
ROS_COMMIT=		88888b7
ROS_PKG=		rospkg

PKGNAME=		${PKGTAG.python}-${ROS_PKG}-${ROS_VERSION}

CATEGORIES=		sysutils
COMMENT=		ROS basic utilities for querying stacks information
HOMEPAGE=		http://ros.org/wiki/rospkg
MAINTAINER=		mallet@laas.fr
LICENSE=		modified-bsd

include ../../wip/ros18-base/Makefile.common

USE_LANGUAGES=
CONFLICTS+=		py[0-9][0-9]-rospkg-[0-9]*

SUBST_CLASSES+=		py-syspath py-interp
SUBST_FILES.py-syspath+=scripts/rosversion
SUBST_FILES.py-interp+=	scripts/rosversion

PYDISTUTILSPKG=		yes
DEPEND_ABI.python=	python<3

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
