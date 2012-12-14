# robotpkg depend.mk for:	wip/jafar-rtslam
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-rtslam_DEPEND_MK:=	${jafar-rtslam_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-rtslam
endif

ifeq (+,$(jafar-rtslam_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-rtslam?=		robotpkg

DEPEND_USE+=		jafar-rtslam
DEPEND_ABI.jafar-rtslam?=	jafar-rtslam>=0.1
DEPEND_DIR.jafar-rtslam?=	../../wip/jafar-rtslam

SYSTEM_SEARCH.jafar-rtslam=\
	include/jafar/rtslam/rtslamException.hpp	\
	lib/libjafar-rtslam.so

endif # jafar-rtslam_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
