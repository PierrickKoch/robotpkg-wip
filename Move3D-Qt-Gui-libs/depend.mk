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
#                                        Jim Mainprice on Thu 12 Nov 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVE3D-MOTIONPLANNER-LIBS_DEPEND_MK:=	${MOVE3D-MOTIONPLANNER-LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		Move3D-motionPlanner-libs
endif

ifeq (+,$(MOVE3D-MOTIONPLANNER-LIBS_DEPEND_MK)) # ----------------------------------

PREFER.Move3D-motionPlanner-libs?=	robotpkg

SYSTEM_SEARCH.Move3D-motionPlanner-libs=\
	include/Move3D-motionPlanner-libs/include/planner/planner.hpp	\
	lib/libMove3D-motionPlanner-libs.so

DEPEND_USE+=		Move3D-motionPlanner-libs

DEPEND_ABI.Move3D-motionPlanner-libs?=Move3D-motionPlanner-libs>=0.0.1
DEPEND_DIR.Move3D-motionPlanner-libs?=../../wip/Move3D-motionPlanner-libs

#include ../../wip/??

endif # Move3D-motionPlanner-libs_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
