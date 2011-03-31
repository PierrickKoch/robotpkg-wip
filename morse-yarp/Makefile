# robotpkg Makefile for:	simulation/morse-yarp
# Created:			Anthony Mallet on Thu, 31 Mar 2011
#

PKGNAME=		morse-yarp-${MORSE_VERSION}

include ../../wip/morse/Makefile.common

COMMENT+=		(YARP bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=ON

include ../../middleware/libpyyarp/depend.mk
include ../../wip/morse/depend.mk
include ../../mk/robotpkg.mk
