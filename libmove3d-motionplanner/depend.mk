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
DEPEND_PKG+=		libmove3d-motionplanner
endif

ifeq (+,$(MOVE3D-MOTIONPLANNER-LIBS_DEPEND_MK)) # ----------------------------------

PREFER.libmove3d-motionplanner?=	robotpkg

SYSTEM_SEARCH.libmove3d-motionplanner=\
	include/libmove3d-motionplanner/src/planner/planner.hpp	\
	lib/libmove3d-motionplanner.so

DEPEND_USE+=		libmove3d-motionplanner

DEPEND_ABI.limoved3d-motionplanner?=libmove3d-motionplanner>=1.0.0
DEPEND_DIR.libmove3d-motionplanner?=../../wip/libmove3d-motionplanner

#include ../../wip/??

endif # Move3D-motionPlanner-libs_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
