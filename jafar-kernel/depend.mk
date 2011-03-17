
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-kernel_DEPEND_MK:=	${jafar-kernel_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-kernel
endif

ifeq (+,$(jafar-kernel_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-kernel?=		robotpkg

DEPEND_USE+=		jafar-kernel
DEPEND_ABI.jafar-kernel?=	jafar-kernel>=0.3
DEPEND_DIR.jafar-kernel?=	../../wip/jafar-kernel

SYSTEM_SEARCH.jafar-kernel=\
	include/jafar/kernel/kernelException.hpp	\
	lib/libjafar-kernel.so

endif # jafar-kernel_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
