#
# Copyright (c) 2010 LAAS/CNRS
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
#                                     Thomas Moulard on Mon Jan  7 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
PYOPENGL_DEPEND_MK:=	${PYOPENGL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		pyopengl
endif

ifeq (+,$(PYOPENGL_DEPEND_MK)) # ----------------------------------------

PREFER.pyopengl?=	system
DEPEND_USE+=		pyopengl
DEPEND_ABI.pyopengl?=	pyopengl>=3.0.0

SYSTEM_PKG.Linux-fedora.pyopengl=PyOpenGL
#SYSTEM_PKG.Linux-ubuntu.pyopengl=
#SYSTEM_PKG.Linux-debian.pyopengl=
#SYSTEM_PKG.NetBSD.pyopengl=

SYSTEM_SEARCH.pyopengl=	\
	'lib/python2.6/site-packages/OpenGL/__init__.py'	\
	'lib/python2.6/site-packages/OpenGL/version.py:/__version__ = /s/[^.0-9]//gp'

endif # PYOPENGL_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
