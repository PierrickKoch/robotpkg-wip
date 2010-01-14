# $LAAS: depend.mk 2010/01/14 12:17:51 mallet $
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
JRL_DYNAMICS_DEPEND_MK:=${JRL_DYNAMICS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jrl-dynamics
endif

ifeq (+,$(JRL_DYNAMICS_DEPEND_MK)) # ---------------------------------

PREFER.jrl-dynamics?=	robotpkg

DEPEND_USE+=		jrl-dynamics

DEPEND_ABI.jrl-dynamics?=jrl-dynamics>=1.16.1
DEPEND_DIR.jrl-dynamics?=../../wip/jrl-dynamics

SYSTEM_SEARCH.jrl-dynamics=\
	include/dynamicsJRLJapan/dynamicsJRLJapanFactory.h	\
	lib/pkgconfig/dynamicsJRLJapan.pc

endif # JRL_DYNAMICS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
