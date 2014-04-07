# robotpkg depend.mk for:	middleware/orocos-yarp_transport
# Created:			Charles Lesire on Tue, 10 Sep 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OROCOS_YARP_DEPEND_MK:=${OROCOS_YARP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		orocos-yarp_transport
endif

ifeq (+,$(OROCOS_YARP_DEPEND_MK))
PREFER.orocos-dot_service?=	robotpkg

DEPEND_USE+=		orocos-yarp_transport

DEPEND_ABI.orocos-yarp_transport?=	orocos-yarp_transport>=20140000
DEPEND_DIR.orocos-yarp_transport?=	../../wip/orocos-yarp_transport

SYSTEM_SEARCH.orocos-yarp_transport= \
	lib/orocos/gnulinux/yarp/plugins/libyarp-transport-gnulinux.so \
	include/orocos/yarp/YarpTransport.hpp \
	lib/pkgconfig/yarp-gnulinux.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
