# $LAAS: depend.mk 2010/01/14 13:54:20 mallet $
#
# Copyright (c) 2008-2010 LAAS/CNRS
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
#                                      Anthony Mallet on Mon Oct 13 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
STACKOFTASKS_DEPEND_MK:=${STACKOFTASKS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		stackoftasks
endif

ifeq (+,$(STACKOFTASKS_DEPEND_MK)) # ---------------------------------

PREFER.stackoftasks?=	robotpkg

DEPEND_USE+=		stackoftasks

DEPEND_ABI.stackoftasks?=stackoftasks>=1.2.3
DEPEND_DIR.stackoftasks?=../../wip/stackoftasks

SYSTEM_SEARCH.stackoftasks=				\
	'include/sot/sotSignalAbstract.h'		\
	'lib/pkgconfig/StackOfTasks.pc:/Version/s/[^.0-9]//gp'

endif # STACKOFTASKS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
