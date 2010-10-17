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
#                                    Severin Lemaignan on Fri 24 Sep 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SPARKYARP-GENOM_DEPEND_MK:=	${SPARKYARP-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sparkyarp-genom
endif

ifeq (+,$(SPARKYARP-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.sparkyarp-genom?=	robotpkg

SYSTEM_SEARCH.sparkyarp-genom=\
	include/sparkyarp/sparkyarpStruct.h	\
	lib/pkgconfig/sparkyarp.pc	\
	bin/sparkyarp

DEPEND_USE+=		sparkyarp-genom

DEPEND_ABI.sparkyarp-genom?=sparkyarp-genom>=0.4
DEPEND_DIR.sparkyarp-genom?=../../wip/sparkyarp-genom

endif # SPARKYARP-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
