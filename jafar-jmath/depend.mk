
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-jmath_DEPEND_MK:=	${jafar-jmath_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-jmath
endif

ifeq (+,$(jafar-jmath_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-jmath?=		robotpkg

DEPEND_USE+=		jafar-jmath
DEPEND_ABI.jafar-jmath?=	jafar-jmath>=0.3
DEPEND_DIR.jafar-jmath?=	../../wip/jafar-jmath

SYSTEM_SEARCH.jafar-jmath=\
	include/jafar/jmath/jmathException.hpp	\
	lib/libjafar-jmath.so

endif # jafar-jmath_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
