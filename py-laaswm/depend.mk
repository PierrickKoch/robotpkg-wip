
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYLAASWM_DEPEND_MK:=	${PYLAASWM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pylaaswm
endif

ifeq (+,$(PYLAASWM_DEPEND_MK)) # -----------------------------------------------

PREFER.pylaaswm?=		robotpkg

DEPEND_USE+=		pylaaswm
DEPEND_ABI.pylaaswm?=	pylaaswm>=1.3
DEPEND_DIR.pylaaswm?=	../../wip/pylaaswm

SYSTEM_SEARCH.pylaaswm=\
	'${PYTHON_SYSLIBSEARCH}/laaswm.py'

include ../../mk/sysdep/python.mk

endif # PYLAASWM_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
