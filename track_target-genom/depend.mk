# robotpkg depend.mk for:	action/track_target-genom
# Created:			Arnaud Degroote on Wed, 16 Nov 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TRACKTARGETGENOM_DEPEND_MK:=	${TRACKTARGETGENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		track_target-genom
endif

ifeq (+,$(TRACKTARGETGENOM_DEPEND_MK))
PREFER.track_target-genom?=	robotpkg

DEPEND_USE+=		track_target-genom

DEPEND_ABI.track_target-genom?=	track_target-genom>=0.2
DEPEND_DIR.track_target-genom?=	../../wip/track_target-genom

SYSTEM_SEARCH.track_target-genom=\
	include/track_target/track_targetStruct.h		\
	lib/pkgconfig/track_target.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
