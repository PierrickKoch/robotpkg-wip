# robotpkg depend.mk for:	wip/llsam
# Created:			Ellon Paiva Mendes on Wed, 12 Nov 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
llsam_DEPEND_MK:=	${llsam_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		llsam
endif

ifeq (+,$(llsam_DEPEND_MK)) # -----------------------------------------------

PREFER.llsam?=		robotpkg

DEPEND_USE+=		llsam
DEPEND_ABI.llsam?=	llsam>=0.1.0
DEPEND_DIR.llsam?=	../../wip/llsam

SYSTEM_SEARCH.llsam=\
	include/jafar/rtslam/rtslamException.hpp	\
	lib/libllsam.so

endif # llsam_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
