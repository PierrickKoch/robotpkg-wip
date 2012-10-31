
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYMORSE_DEPEND_MK:=	${PYMORSE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-morse
endif

ifeq (+,$(PYMORSE_DEPEND_MK)) # -----------------------------------------------

PREFER.py-morse?=		robotpkg

DEPEND_USE+=		py-morse
DEPEND_ABI.py-morse?=	${PKGTAG.python-}morse>=0.6
DEPEND_DIR.py-morse?=	../../wip/py-morse

SYSTEM_SEARCH.py-morse=\
	'${PYTHON_SYSLIBSEARCH}/morse.py'

include ../../mk/sysdep/python.mk

endif # PYMORSE_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
