# robotpkg depend.mk for:	localization/rtslam-genom
# Created:			Arnaud Degroote on Tue, 19 Mar 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
RTSLAM_GENOM_DEPEND_MK:=	${RTSLAM_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		rtslam-genom
endif

ifeq (+,$(RTSLAM_GENOM_DEPEND_MK))
PREFER.rtslam-genom?=	robotpkg

DEPEND_USE+=		rtslam-genom

DEPEND_ABI.rtslam-genom?=	rtslam-genom>=0.1
DEPEND_DIR.rtslam-genom?=	../../wip/rtslam-genom

SYSTEM_SEARCH.rtslam-genom=\
	include/rtslam/rtslam-Struct.h		\
	lib/pkgconfig/rtslam.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
