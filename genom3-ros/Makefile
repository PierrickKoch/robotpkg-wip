# robotpkg Makefile for:	architecture/genom3-ros
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

PKGREVISION=	1
DISTNAME=	genom3-ros-1.0
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom3-ros/}
MASTER_REPOSITORY= git git://git.openrobots.org/git/robots/genom3-ros

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	https://homepages.laas.fr/mallet/soft/architecture/genom3
COMMENT=	GenoM3 template for ros-based components

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
NOT_FOR_PLATFORM=	# empty
USE_LANGUAGES+=	c c++

include ../../devel/boost-headers/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../wip/genom3/depend.mk
include ../../wip/ros-actionlib/depend.mk
include ../../wip/ros-comm/depend.mk
include ../../wip/ros-common-msgs/depend.mk
include ../../wip/ros-core/depend.mk
include ../../wip/ros-gencpp/depend.mk
include ../../wip/ros-genpy/depend.mk
include ../../mk/robotpkg.mk
