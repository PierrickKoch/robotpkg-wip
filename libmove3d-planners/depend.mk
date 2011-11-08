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
LIBMOVE3D_PLANNERS_DEPEND_MK:=	${LIBMOVE3D_PLANNERS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libmove3d-planners
endif

ifeq (+,$(LIBMOVE3D_PLANNERS_DEPEND_MK)) # ----------------------------------

PREFER.libmove3d-planners?=	robotpkg

SYSTEM_SEARCH.libmove3d-planners=\
	include/libmove3d/planners/planner/planner.hpp	\
	lib/libmove3d-planners.so \
	lib/pkgconfig/libmove3d-planners.pc

DEPEND_USE+=		libmove3d-planners

DEPEND_ABI.libmove3d-planners?=libmove3d-planners>=1.1.0
DEPEND_DIR.libmove3d-planners?=../../wip/libmove3d-planners

#include ../../wip/??

endif # libmove3d_planners_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
