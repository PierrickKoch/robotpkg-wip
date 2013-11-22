# robotpkg depend.mk for:	action/track-target-genom
# Created:			Arnaud Degroote on Wed, 16 Nov 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TRACKTARGETGENOM_DEPEND_MK:=	${TRACKTARGETGENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		track-target-genom
endif

ifeq (+,$(TRACKTARGETGENOM_DEPEND_MK))
PREFER.track-target-genom?=	robotpkg

DEPEND_USE+=		track-target-genom

DEPEND_ABI.track-target-genom?=	track-target-genom>=0.2
DEPEND_DIR.track-target-genom?=	../../wip/track-target-genom

SYSTEM_SEARCH.track-target-genom=\
	include/track_target/track_targetStruct.h		\
	lib/pkgconfig/track_target.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
