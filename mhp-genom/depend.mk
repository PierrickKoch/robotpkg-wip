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
MHP-GENOM_DEPEND_MK:=	${MHP-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		mhp-genom
endif

ifeq (+,$(MHP-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.mhp-genom?=	robotpkg

SYSTEM_SEARCH.mhp-genom=\
	include/mhp/mhpStruct.h	\
	lib/pkgconfig/mhp.pc	\
	bin/mhp

DEPEND_USE+=		mhp-genom

DEPEND_ABI.mhp-genom?=mhp-genom>=3.2
DEPEND_DIR.mhp-genom?=../../wip/mhp-genom

#include ../../wip/??

endif # MHP-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
