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
JOINTSTATEMAPPER_DEPEND_MK:=	${JOINTSTATEMAPPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jointStateMapper
endif

ifeq (+,$(JOINTSTATEMAPPER_DEPEND_MK)) # ----------------------------------

PREFER.jointStateMapper?=	robotpkg

SYSTEM_SEARCH.jointStateMapper=\
	include/jointStateMapper/jointStateMapper.hpp	\
	lib/libjointstatemapper.so

DEPEND_USE+=		jointStateMapper

DEPEND_ABI.jointStateMapper?=jointStateMapper>=0.99
DEPEND_DIR.jointStateMapper?=../../wip/jointStateMapper

endif # JOINTSTATEMAPPER_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
