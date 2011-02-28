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
#                                    N Ouadah and A. Mekonnen 28/02/2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VISUSERV-GENOM_DEPEND_MK:=	${VISUSERV-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		visuserv-genom
endif

ifeq (+,$(VISUSERV-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.visuserv-genom?=	robotpkg

SYSTEM_SEARCH.visuserv-genom=\
	include/visuserv/visuservStruct.h	\
	lib/pkgconfig/visuserv.pc	\
	bin/visuserv

DEPEND_USE+=		visuserv-genom

DEPEND_ABI.visuserv-genom?=visuserv-genom>=1.0
DEPEND_DIR.visuserv-genom?=../../wip/visuserv-genom

endif # VISUSERV-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
