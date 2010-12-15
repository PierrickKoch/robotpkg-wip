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
#                                   N. Ouadah & A Mekonnen 15 14 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ICU-GENOM_DEPEND_MK:=	${ICU-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		icu-genom
endif

ifeq (+,$(ICU-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.icu-genom?=	robotpkg

SYSTEM_SEARCH.icu-genom=\
	include/icu/icuStruct.h	\
	lib/pkgconfig/icu.pc	\
	bin/icu

DEPEND_USE+=		icu-genom

DEPEND_ABI.icu-genom?=icu-genom>=1.0
DEPEND_DIR.icu-genom?=../../wip/icu-genom

endif # ICU-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
