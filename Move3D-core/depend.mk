# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice, this list of conditions and the following disclaimer.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice,  this list of  conditions and  the following disclaimer in
#      the  documentation   and/or  other  materials   provided with  the
#      distribution.
#
#                                    Severin Lemaignan on Tue 31 Aug 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVE3D_CORE_DEPEND_MK:=	${MOVE3D_CORE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		Move3D-core
endif

ifeq (+,$(MOVE3D_CORE_DEPEND_MK)) # ----------------------------------

PREFER.Move3d-core?=	robotpkg

SYSTEM_SEARCH.Move3D-core=\
	include/Move3D-core/include/move3d.h	\
	lib/libMove3D-core.so

DEPEND_USE+=		Move3D-core

DEPEND_ABI.Move3D-core?=Move3D-core>=3.7.14
DEPEND_DIR.Move3D-core?=../../wip/Move3D-core

#include ../../wip/??

endif # MOVE3D_CORE_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

