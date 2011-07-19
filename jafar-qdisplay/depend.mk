
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-qdisplay_DEPEND_MK:=	${jafar-qdisplay_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-qdisplay
endif

ifeq (+,$(jafar-qdisplay_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-qdisplay?=		robotpkg

DEPEND_USE+=		jafar-qdisplay
DEPEND_ABI.jafar-qdisplay?=	jafar-qdisplay>=0.1
DEPEND_DIR.jafar-qdisplay?=	../../wip/jafar-qdisplay

SYSTEM_SEARCH.jafar-qdisplay=\
	include/jafar/qdisplay/qdisplayException.hpp	\
	lib/libjafar-qdisplay.so

endif # jafar-qdisplay_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
