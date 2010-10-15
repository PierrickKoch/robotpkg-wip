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
COLDMAN-LIBS_DEPEND_MK:=	${COLDMAN-LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		coldman-libs
endif

ifeq (+,$(COLDMAN-LIBS_DEPEND_MK)) # ----------------------------------

PREFER.coldman-libs?=	robotpkg

SYSTEM_SEARCH.coldman-libs=\
	include/coldman-libs/coldman.h	\
	lib/libcoldman-libs.so

DEPEND_USE+=		coldman-libs

DEPEND_ABI.coldman-libs?=coldman-libs>=1.3
DEPEND_DIR.coldman-libs?=../../wip/coldman-libs

endif # COLDMAN-LIBS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
