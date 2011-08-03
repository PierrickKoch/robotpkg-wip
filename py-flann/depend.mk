# robotpkg depend.mk for:	math/py-flann
# Created:			Nizar Sallem on Wed, 20 Jul 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_FLANN_DEPEND_MK:=	${PY_FLANN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-flann
endif

ifeq (+,$(PY_FLANN_DEPEND_MK)) # -------------------------------------------

PREFER.py-flann?=	robotpkg

DEPEND_USE+=		py-flann
DEPEND_ABI.py-flann?=	${PKGTAG.python-}flann>=1.6.11
DEPEND_DIR.py-flann?=	../../wip/py-flann

SYSTEM_SEARCH.py-flann=\
	'${PYTHON_SYSLIBSEARCH}/pyflann/index.py'

include ../../wip/flann/depend.mk
include ../../mk/sysdep/python.mk

endif # PY_FLANN_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
