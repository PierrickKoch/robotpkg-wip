# robotpkg Makefile for:	math/jrl-dynamics-urdf
# Created:			Olivier Stasse on Thu, 27 Jun 2013
#
DISTNAME=		jrl-dynamics-urdf-1.0.0
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jrl-dynamics-urdf/}
MASTER_REPOSITORY=	git git://github.com/laas/jrl_dynamics_urdf.git

CATEGORIES=		math
COMMENT=		JRL-Japan implementation of dynamic robot
LICENSE=		gnu-lgpl-v3
MAINTAINER=		openrobots@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/jrl-dynamics-urdf

CONFIGURE_ENV+=\
  ROS_ROOT=${PREFIX.ros-ros}/share/ros			\
  ROS_PACKAGE_PATH=${WRKSRC}:${PREFIX.ros-ros}/share	\
  CMAKE_PREFIX_PATH=${PREFIX.ros-ros}

# TODO
# missing dependencies: bullet
# missing dependencies: ros-robot-model
#

include ../../devel/ros-ros/depend.mk
include ../../interfaces/jrl-mal/depend.mk
include ../../math/jrl-dynamics/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
