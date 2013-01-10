# robotpkg Makefile for:	architecture/genom3-ros
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

DISTNAME=	genom3-ros-1.1
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom3-ros/}
MASTER_REPOSITORY= git git://git.openrobots.org/git/robots/genom3-ros

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	https://homepages.laas.fr/mallet/soft/architecture/genom3
COMMENT=	GenoM3 template for ros-based components

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
NOT_FOR_PLATFORM=	# empty

include ../../wip/genom3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/ros-core/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-gencpp/depend.mk
include ../../lang/ros-genpy/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
