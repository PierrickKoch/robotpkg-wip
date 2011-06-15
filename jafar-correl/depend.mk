
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-correl_DEPEND_MK:=	${jafar-correl_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-correl
endif

ifeq (+,$(jafar-correl_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-correl?=		robotpkg

DEPEND_USE+=		jafar-correl
DEPEND_ABI.jafar-correl?=	jafar-correl>=0.1
DEPEND_DIR.jafar-correl?=	../../wip/jafar-correl

SYSTEM_SEARCH.jafar-correl=\
	include/jafar/correl/correlException.hpp	\
	lib/libjafar-correl.so

endif # jafar-correl_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
