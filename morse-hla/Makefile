# robotpkg Makefile for:	simulation/morse-hla
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

PKGNAME=		morse-hla-${MORSE_VERSION}

include ../../simulation/morse/Makefile.common

COMMENT+=		(hla bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_HLA_SUPPORT=ON
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF

include ../../simulation/morse/depend.mk
include ../../wip/py-hla/depend.mk
include ../../mk/robotpkg.mk
