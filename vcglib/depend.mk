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
VCGLIB_DEPEND_MK:=		${VCGLIB_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		vcglib
endif

ifeq (+,$(VCGLIB_DEPEND_MK)) # -----------------------

PREFER.vcglib?=		robotpkg

SYSTEM_SEARCH.vcglib=\
	include/vcglib/vcg/complex/all_types.h											\
	include/vcglib/vcg/connectors/hedge.h											\
	include/vcglib/vcg/container/container_allocation_table.h	\
	include/vcglib/vcg/math/base.h															\
	include/vcglib/vcg/simplex/vertex/base.h										\
	include/vcglib/vcg/space/space.h

DEPEND_USE+=				vcglib

DEPEND_ABI.vcglib?=	vcglib>=20100824
DEPEND_DIR.vcglib?=	../../modeling/vcglib

DEPEND_METHOD.vcglib?=	build

endif # VCGLIB_DEPEND_MK -----------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
