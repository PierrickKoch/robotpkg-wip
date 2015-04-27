# robotpkg depend.mk for:	simulation/jsbsim
# Created:			Arnaud Degroote on Mon, 27 Apr 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JSBSIM_DEPEND_MK:=${JSBSIM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jsbsim
endif

ifeq (+,$(JSBSIM_DEPEND_MK))
PREFER.jsbsim?=	robotpkg

DEPEND_USE+=		jsbsim

DEPEND_ABI.jsbsim?=	jsbsim>=1.0
DEPEND_DIR.jsbsim?=	../../wip/jsbsim

SYSTEM_SEARCH.jsbsim=\
	bin/JSBSim 	\
	include/JSBSim/FGFDMExec.h \
	lib/libJSBSim.so
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
