# robotpkg Makefile for:	motion/dynamic-graph-bridge
#

VERSION=		1.0.0
DISTNAME=		dynamic_graph_bridge-${VERSION}
PKGNAME=		dynamic-graph-bridge-${VERSION}

CATEGORIES=		motion
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=dynamic-graph-bridge/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/dynamic_graph_bridge/

COMMENT=		This ROS package binds together the ROS framework with the dynamic-graph real-time control architecture.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/dynamic_graph_bridge

# disable -Werror because of x86_64 warnings (must be fixed upstream) and
# boost + gcc that don't cohabit well depending on their respective versions
CMAKE_ARGS+=		-DCXX_DISABLE_WERROR=yes

# man pages location
CMAKE_ARGS+=		-DMANDIR=${PREFIX}/${PKGMANDIR}
# library location
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

include ../../wip/ros-realtime-tools/depend.mk
include ../../simulation/bullet/depend.mk
include ../../interfaces/jrl-mal/depend.mk
include ../../motion/dynamic-graph/depend.mk
include ../../motion/py-dynamic-graph/depend.mk
include ../../motion/sot-core/depend.mk
include ../../motion/sot-dynamic/depend.mk
include ../../math/jrl-dynamics-urdf/depend.mk
include ../../interfaces/jrl-mal/depend.mk
include ../../simulation/bullet/depend.mk
include ../../devel/ros-roscpp-core/depend.mk
include ../../devel/ros-catkin/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk