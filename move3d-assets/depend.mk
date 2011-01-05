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
#                                    Severin Lemaignan on Tue 04 Jan 2011

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MOVE3DASSETS_DEPEND_MK:=	${MOVE3DASSETS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		move3d-assets
endif

ifeq (+,$(MOVE3DASSETS_DEPEND_MK)) # -----------------------------------------------

PREFER.move3d-assets?=		robotpkg

DEPEND_USE+=		move3d-assets
DEPEND_ABI.move3d-assets?=	move3d-assets>=20110104
DEPEND_DIR.move3d-assets?=	../../wip/move3d-assets

SYSTEM_SEARCH.move3d-assets=\
	share/move3d/assets/ReadMeFirst

endif # MOVE3DASSETS_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
