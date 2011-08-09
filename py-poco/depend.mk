
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYPOCO_DEPEND_MK:=	${PYPOCO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pypoco
endif

ifeq (+,$(PYPOCO_DEPEND_MK)) # -----------------------------------------------

PREFER.pypoco?=		robotpkg

DEPEND_USE+=		pypoco
DEPEND_ABI.pypoco?=	pypoco>=1.2
DEPEND_DIR.pypoco?=	../../wip/pypoco

SYSTEM_SEARCH.pypoco=\
	'${PYTHON_SYSLIBSEARCH}/pypoco.py'

include ../../mk/sysdep/python.mk

endif # PYPOCO_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
