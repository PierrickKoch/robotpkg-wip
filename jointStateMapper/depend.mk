
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JOINTSTATEMAPPER_DEPEND_MK:=	${JOINTSTATEMAPPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jointStateMapper
endif

ifeq (+,$(JOINTSTATEMAPPER_DEPEND_MK)) # ----------------------------------

PREFER.jointStateMapper?=	robotpkg

SYSTEM_SEARCH.jointStateMapper=\
	include/jointStateMapper/jointStateMapper.hpp	\
	lib/libjointStateMapper.so

DEPEND_USE+=		jointStateMapper

DEPEND_ABI.jointStateMapper?=jointStateMapper>=1.2.0
DEPEND_DIR.jointStateMapper?=../../wip/jointStateMapper

endif # JOINTSTATEMAPPER_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
