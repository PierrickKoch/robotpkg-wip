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
VIMANTAGS_DEPEND_MK:=	${VIMANTAGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		viman-tags
endif

ifeq (+,$(VIMANTAGS_DEPEND_MK)) # -----------------------------------------------

PREFER.viman-tags?=		robotpkg

DEPEND_USE+=		viman-tags
DEPEND_ABI.viman-tags?=	viman-tags>=20110106
DEPEND_DIR.viman-tags?=	../../wip/viman-tags

SYSTEM_SEARCH.viman-tags=\
	share/viman/tags/objectList_cfg

endif # VIMANTAGS_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
