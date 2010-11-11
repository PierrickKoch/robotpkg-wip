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
BIOMOVE3D_DEPEND_MK:=	${BIOMOVE3D_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		BioMove3D
endif

ifeq (+,$(BIOMOVE3D_DEPEND_MK)) # ----------------------------------

PREFER.BioMove3D?=	robotpkg

SYSTEM_SEARCH.BioMove3D=\
	include/BioMove3D/include/move3d.h	\
	lib/libBioMove3D.so

DEPEND_USE+=		BioMove3D

DEPEND_ABI.BioMove3D?=BioMove3D>=3.7.13
DEPEND_DIR.BioMove3D?=../../wip/BioMove3D

#include ../../wip/??

endif # BIOMOVE3D_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
