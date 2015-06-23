# robotpkg Makefile for:	graphics/robot_capsule_urdf
# Created:			Olivier Stasse on Fri, 19 Jun 2015
#
VERSION=		1.0.1
DISTNAME=		robot_capsule_urdf-${VERSION}
PKGNAME=		robot_capsule_urdf-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=robot_capsule_urdf/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}laas/robot_capsule_urdf

CATEGORIES=		graphics
COMMENT=		Provides capsule description of the robots
# (model copyright hold by Aldebaran Robotics) 
LICENSE=		2-clause-bsd
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/robot_capsule_urdf

include ../../devel/ros-catkin/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
