# robotpkg depend.mk for:	motion/py-sot-tools
# Created:			Olivier Stasse on Mon, 15 Apr 2013
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
PY_SOT_TOOLS_DEPEND_MK:=	${PY_SOT_TOOLSDEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			py-sot-tools
endif

ifeq (+,$(PY_SOT_TOOLS_DEPEND_MK)) # -----------------------------------

PREFER.py-sot-tools?=	robotpkg

DEPEND_USE+=			py-sot-tools
DEPEND_ABI.py-sot-tools?=	${PKGTAG.python-}sot-tools>=1.0
DEPEND_DIR.py-sot-tools?=	../../motion/py-sot-tools

SYSTEM_SEARCH.py-sot-core=\
	'lib/pkgconfig/sot-tools.pc:/Version/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk

endif # PY_SOT_TOOLS_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=			${DEPEND_DEPTH:+=}
