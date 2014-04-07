# robotpkg depend.mk for:	graphics/orocos-dot_service
# Created:			Charles Lesire on Mon, 9 Sep 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OROCOS_DOT_DEPEND_MK:=${OROCOS_DOT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		orocos-dot_service
endif

ifeq (+,$(OROCOS_DOT_DEPEND_MK))
PREFER.orocos-dot_service?=	robotpkg

DEPEND_USE+=		orocos-dot_service

DEPEND_ABI.orocos-dot_service?=	orocos-dot_service>=20120300
DEPEND_DIR.orocos-dot_service?=	../../wip/orocos-dot_service

SYSTEM_SEARCH.orocos-dot_service= \
	lib/orocos/gnulinux/rtt_dot_service/plugins/librtt_dot_service-gnulinux.so \
	lib/pkgconfig/rtt_dot_service-gnulinux.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
