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
COLDMAN-GENOM_DEPEND_MK:=	${COLDMAN-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		coldman-genom
endif

ifeq (+,$(COLDMAN-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.coldman-genom?=	robotpkg

SYSTEM_SEARCH.coldman-genom=\
	include/??	\
	lib/??

DEPEND_USE+=		coldman-genom

DEPEND_ABI.coldman-genom?=coldman-genom>=1.0
DEPEND_DIR.coldman-genom?=../../wip/coldman-genom

endif # COLDMAN-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
