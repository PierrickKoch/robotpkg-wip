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
KUKAFRI_LIBS_DEPEND_MK:=	${KUKAFRI_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		kukaFri-libs
endif

ifeq (+,$(KUKAFRI_LIBS_DEPEND_MK)) # ----------------------------------

PREFER.kukaFri-libs?=	robotpkg

SYSTEM_SEARCH.kukaFri-libs=\
	include/kukaFri-libs/friComm.h	\
	lib/libkukaFri-libs.so

DEPEND_USE+=		kukaFri-libs

DEPEND_ABI.kukaFri-libs?=kukaFri-libs>=1.1
DEPEND_DIR.kukaFri-libs?=../../wip/kukaFri-libs

endif # KUKAFRI_LIBS_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
