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
LWR-GENOM_DEPEND_MK:=	${LWR-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		lwr-genom
endif

ifeq (+,$(LWR-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.lwr-genom?=	robotpkg

SYSTEM_SEARCH.lwr-genom=\
	include/lwr/lwrStruct.h	\
	lib/pkgconfig/lwr.pc	\
	bin/lwr

DEPEND_USE+=		lwr-genom

DEPEND_ABI.lwr-genom?=lwr-genom>=2.3
DEPEND_DIR.lwr-genom?=../../wip/lwr-genom

endif # LWR-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
