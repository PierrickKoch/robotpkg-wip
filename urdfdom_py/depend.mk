# robotpkg depend.mk for:	graphics/urdfdom_py
# Created:			Olivier Stasse on Wed, 19 Jun 2015
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
URDFDOM_PY_DEPEND_MK:=	${URDFDOM_PY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		urdfdom-py
endif

ifeq (+,$(ROMEO_DEPEND_MK)) # -------------------------------------------

PREFER.urdfdom-py?=	robotpkg

SYSTEM_SEARCH.urdfdom-py=\
	'lib/pkgconfig/urdfdom-py.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		urdfdom-py

DEPEND_ABI.urdfdom-py?=	urdfdom-py>=1.0.0
DEPEND_DIR.urdfdom-py?=	../../robots/urdfdom-py

endif # URDFDOM_PY_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
