# robotpkg depend.mk for:	architecture/genRobPose-genom
# Created:			Mokhtar Gharbi on Tue, 18 Jan 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GENROBPOSEGENOM_DEPEND_MK:=	${GENROBPOSEGENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		genRobPose-genom
endif

ifeq (+,$(GENPOSGENOM_DEPEND_MK))
PREFER.genRobPose-genom?=	robotpkg

DEPEND_USE+=		genRobPose-genom

DEPEND_ABI.genRobPose-genom?=	genRobPose-genom>=1.0
DEPEND_DIR.genRobPose-genom?=	../../wip/genRobPose-genom

SYSTEM_SEARCH.genRobPose-genom=\
	include/genRobPose/genRobPoseStruct.h		\
	lib/pkgconfig/genRobPose.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
