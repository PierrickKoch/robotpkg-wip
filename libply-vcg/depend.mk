# $LAAS: depend.mk 2009/02/15 14:05:46 tho $
#
# Copyright (c) 2008-2009 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                      Anthony Mallet on Fri Oct 10 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VCG_PLY_DEPEND_MK:=		${VCG_PLY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		vcg-libply
endif

ifeq (+,$(VCG_PLY_DEPEND_MK)) # -----------------------

PREFER.vcg-libply?=		robotpkg

SYSTEM_SEARCH.vcg-libply=\
										include/ply/plylib.h	 \
										include/ply/plystuff.h
										lib/libply.so
DEPEND_USE+=				vcg-libply

DEPEND_ABI.vcg-libply?=	vcg-libply>=20100814
DEPEND_DIR.vcg-libply?=	../../modeling/vcg-libply

DEPEND_METHOD.vcg-libply?=	build

endif # VCG_PLY_DEPEND_MK -----------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
