# robotpkg depend.mk for:	wip/jafar-rednav
# Created:			Redouane Boumghar on Thu, 17 Mar 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-rednav_DEPEND_MK:=	${jafar-rednav_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-rednav
endif

ifeq (+,$(jafar-rednav_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-rednav?=		robotpkg

DEPEND_USE+=		jafar-rednav
DEPEND_ABI.jafar-rednav?=	jafar-rednav>=0.6
DEPEND_DIR.jafar-rednav?=	../../wip/jafar-rednav

SYSTEM_SEARCH.jafar-rednav=\
	include/jafar/rednav/rednavException.hpp	\
	lib/libjafar-rednav.so

endif # jafar-rednav_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
