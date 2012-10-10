# robotpkg Makefile for:	meta-pkgs/ros-base
# Created:			Anthony Mallet on Wed, 19 Jan 2011
#

DISTNAME=	ros-base-1.8
CATEGORIES=	meta-pkgs

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.ros.org/wiki/
COMMENT=	The Robotic Operating System

META_PACKAGE=	yes
NOT_FOR_PLATFORM=
MESSAGE_SUBST+=	PYTHON_VERSION=${PYTHON_VERSION}

PREFIX?=	${LOCALBASE}/opt/ros/fuerte

include ../../wip/catkin/depend.mk
include ../../wip/ros-actionlib/depend.mk
include ../../wip/ros-comm/depend.mk
include ../../wip/ros-common-msgs/depend.mk
include ../../wip/ros-core/depend.mk
include ../../wip/ros-gencpp/depend.mk
include ../../wip/ros-genlisp/depend.mk
include ../../wip/ros-genmsg/depend.mk
include ../../wip/ros-genpy/depend.mk
include ../../wip/ros-std-msgs/depend.mk
include ../../wip/roscpp-core/depend.mk
include ../../wip/rospack/depend.mk
include ../../mk/robotpkg.mk
