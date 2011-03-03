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
ATTENTIONAL-GENOM_DEPEND_MK:=	${ATTENTIONAL-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		attentional-genom
endif

ifeq (+,$(ATTENTIONAL-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.attentional-genom?=	robotpkg

SYSTEM_SEARCH.attentional-genom=\
	include/attentional/attentionalStruct.h	\
	lib/pkgconfig/attentional.pc	\
	bin/attentional

DEPEND_USE+=		attentional-genom

DEPEND_ABI.attentional-genom?=attentional-genom>=1.2
DEPEND_DIR.attentional-genom?=../../wip/attentional-genom

endif # ATTENTIONAL-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
