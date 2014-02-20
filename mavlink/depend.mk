# robotpkg depend.mk for:	supervision/mavlink
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MAVLINK_DEPEND_MK:=${MAVLINK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		mavlink
endif

ifeq (+,$(MAVLINK_DEPEND_MK))
PREFER.mavlink?=	robotpkg

DEPEND_USE+=		mavlink

DEPEND_ABI.mavlink?=	mavlink>=1.0.11
DEPEND_DIR.mavlink?=	../../wip/mavlink

SYSTEM_SEARCH.mavlink=\
	include/mavlink/config.h
	'lib/pkgconfig/mavlink.pc:/Version/s/[^0-9.]//gp'
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
