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
MOVE3D_MAIN_DEPEND_MK:=	${MOVE3D-MAIN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		Move3D-main
endif

ifeq (+,$(MOVE3D_MAIN_DEPEND_MK)) # ----------------------------------

PREFER.Move3D-main?=	robotpkg

SYSTEM_SEARCH.Move3D-main=\
	bin/Move3D

DEPEND_USE+=		Move3D-main

DEPEND_ABI.Move3D-main?=Move3D-main>=1.0.0
DEPEND_DIR.Move3D-main?=../../wip/Move3D-main

endif # Move3D-main_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
