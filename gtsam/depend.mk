# robotpkg depend.mk for:	wip/gtsam
# Created:			Ellon Paiva Mendes on Wed, 12 Nov 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
gtsam_DEPEND_MK:=	${gtsam_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		gtsam
endif

ifeq (+,$(gtsam_DEPEND_MK)) # -----------------------------------------------

PREFER.gtsam?=		robotpkg

DEPEND_USE+=		gtsam
DEPEND_ABI.gtsam?=	gtsam>=3.1.0
DEPEND_DIR.gtsam?=	../../wip/gtsam

SYSTEM_SEARCH.gtsam=\
	include/jafar/rtslam/rtslamException.hpp	\
	lib/libgtsam.so

endif # gtsam_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
