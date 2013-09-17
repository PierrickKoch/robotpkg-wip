# robotpkg depend.mk for:	graphics/py27-laaswm
# Created:			Séverin Lemaignan on Wed, 19 Oct 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYLAASWM_DEPEND_MK:=	${PYLAASWM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-laaswm
endif

ifeq (+,$(PYLAASWM_DEPEND_MK)) # -----------------------------------------------

PREFER.py-laaswm?=		robotpkg

DEPEND_USE+=		py-laaswm
DEPEND_ABI.py-laaswm?=	${PKGTAG.python-}laaswm>=1.3
DEPEND_DIR.py-laaswm?=	../../wip/py-laaswm

SYSTEM_SEARCH.py-laaswm=\
	'${PYTHON_SYSLIBSEARCH}/laaswm.py'

include ../../mk/sysdep/python.mk

endif # PYLAASWM_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
