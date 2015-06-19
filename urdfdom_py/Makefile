# robotpkg Makefile for:	graphics/urdfdom_py
# Created:			Olivier Stasse on Fri, 19 Jun 2015
#
VERSION=		0.3.0-2
DISTNAME=		urdfdom_py-${VERSION}
PKGNAME=		urdfdom_py-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=urdfdom_py/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}laas/urdfdom_py

CATEGORIES=		graphics
COMMENT=		Provides a URDF python parser
# (model copyright hold by Aldebaran Robotics) 
LICENSE=		2-clause-bsd
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/urdfdom_py

include ../../graphics/urdfdom/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
