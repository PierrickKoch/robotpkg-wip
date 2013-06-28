# robotpkg Makefile for:	math/jrl-dynamics-urdf
# Created:			Olivier Stasse on Thu, 27 Jun 2013
#
ROS_PKG=        jrl-dynamics-urdf
ROS_VERSION=    1.0.0

CATEGORIES=	math
NO_PUBLIC_SRC=	yes
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jrl-dynamics-urdf/}
MASTER_REPOSITORY=	git git@github.com:laas/jrl-dynamics-urdf.git


MAINTAINER=	openrobots@laas.fr
COMMENT=	JRL-Japan implementation of dynamic robot.
LICENSE=	gnu-lgpl-v3


DYNAMIC_PLIST_DIRS+=	share/doc/jrl-dynamics-urdf

# Build the package in a separate directory
CONFIGURE_DIRS=		_build
CMAKE_ARG_PATH=		..

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/jrl-mal/depend.mk
include ../../interfaces/abstract-robot-dynamics/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
