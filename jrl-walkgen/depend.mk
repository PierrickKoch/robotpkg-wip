# $Id: depend.mk 2010/01/14 12:26:19 mallet $

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
JRL_WALKGEN_DEPEND_MK:=	${JRL_WALKGEN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jrl-walkgen
endif

ifeq (+,$(JRL_WALKGEN_DEPEND_MK))
PREFER.jrl-walkgen?=	robotpkg

DEPEND_USE+=		jrl-walkgen

DEPEND_ABI.jrl-walkgen?=jrl-walkgen>=3.0.1
DEPEND_DIR.jrl-walkgen?=../../wip/jrl-walkgen
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
