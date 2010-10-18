#
# Copyright (c) 2009 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                    Severin Lemaignan on Wed 1 Sep 2010
#

# The GLPK (GNU Linear Programming Kit) package is intended for
# solving large-scale linear programming (LP), mixed integer
# programming (MIP), and other related problems. It is a set of
# routines written in ANSI C and organized in the form of a callable
# library.

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GLPK_DEPEND_MK:=	${GLPK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		glpk
endif

ifeq (+,$(GLPK_DEPEND_MK)) # ---------------------------------------------

PREFER.glpk?=		system
DEPEND_USE+=		glpk
DEPEND_ABI.glpk?=	glpk>=4.36

SYSTEM_SEARCH.glpk=	\
	'include/{,glpk/}glpk.h' \
	lib/libglpk.so

SYSTEM_PKG.Linux-fedora.glpk=glpk-devel
SYSTEM_PKG.Linux-ubuntu.glpk=glpk
SYSTEM_PKG.Linux-debian.glpk=glpk

endif # GLPK_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
