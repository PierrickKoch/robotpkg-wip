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

#freeglut is a completely open source alternative to the OpenGL
# Utility Toolkit (GLUT) library with an OSI approved free software
# license. GLUT was originally written by Mark Kilgard to support the
# sample programs in the second edition OpenGL 'RedBook'. Since then,
# GLUT has been used in a wide variety of practical applications
# because it is simple, universally available and highly portable.

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
FREEGLUT_DEPEND_MK:=	${FREEGLUT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		freeglut
endif

ifeq (+,$(FREEGLUT_DEPEND_MK)) # ---------------------------------------------

PREFER.freeglut?=		system
DEPEND_USE+=		freeglut
DEPEND_ABI.freeglut?=	freeglut>=2.4.0

SYSTEM_SEARCH.freeglut=	\
	include/GL/glut.h \
	lib/libGLU.so

SYSTEM_PKG.Linux-fedora.freeglut=freeglut-devel
SYSTEM_PKG.Linux-ubuntu.freeglut=freeglut3-dev

endif # FREEGLUT_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
