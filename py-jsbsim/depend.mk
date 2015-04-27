# robotpkg depend.mk for:	simulation/py-jsbsim
# Created:			Arnaud Degroote on Mon, 27 Apr 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PY_py-jsbsim_DEPEND_MK:=${PY_py-jsbsim_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		py-jsbsim
endif

ifeq (+,$(PY_py-jsbsim_DEPEND_MK))
PREFER.py-jsbsim?=	robotpkg

DEPEND_USE+=		py-jsbsim

DEPEND_ABI.py-jsbsim?=	py-jsbsim>=1.0
DEPEND_DIR.py-jsbsim?=	../../wip/py-jsbsim

SYSTEM_SEARCH.py-jsbsim=\
	${PYTHON_SYSLIBSEARCH}/jsbsim.so
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
