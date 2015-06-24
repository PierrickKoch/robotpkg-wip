# robotpkg Makefile for:	robots/hrp2-computer-monitor
# Created:			Olivier Stasse on Wed, 17 Jun 2015
#
VERSION=		1.0.0
ROS_PKG=		hrp2_computer_monitor
ROS_VERSION=		${VERSION}
DISTNAME=		hrp2_computer_monitor
CATEGORIES=		robots
MASTER_SITES=		${MASTER_SITE_JRL}ros/${ROS_PKG}/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}robots/ros-hrp2/hrp2-computer-monitor

MAINTAINER=		gepetto@laas.fr
COMMENT=		Hrp2 ros monitoring package
LICENSE=		openhrp-grx-license

RESTRICTED=	Redistribution of repackaged binaries not permitted
NO_PUBLIC_SRC=	${RESTRICTED}
NO_PUBLIC_BIN=	${RESTRICTED}

DYNAMIC_PLIST_DIRS+=	share/doc/hrp2_computer_monitor


include ../../meta-pkgs/ros-base/Makefile.common

include ../../devel/ros-catkin/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../interfaces/ros-std-msgs/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

CONFIGURE_ENV+=      ROS_ROOT=$(call quote,/opt/openrobots/share/ros)
CONFIGURE_ENV+=      ROS_PACKAGE_PATH=$(call quote,/opt/openrobots/share:/opt/openrobots/stacks)
CONFIGURE_ENV+=      ROS_MASTER_URI=$(call quote,http://localhost:11311)
CONFIGURE_ENV+=      ROS_DISTRO=$(call quote,${PREFER.ros})
