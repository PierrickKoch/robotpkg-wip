#
# Copyright (c) 2010 LAAS/CNRS
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
#                                    Akin Sisbot on 7 Nov 2010
#

# The Qwt library contains GUI Components and utility classes which are 
# primarily useful for programs with a technical background. Besides a 2D
# plot widget it provides scales, sliders, dials, compasses, thermometers, 
# wheels and knobs to control or display values, arrays or ranges of type double.

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
QWT_DEPEND_MK:=		${QWT_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		qwt
endif

ifeq (+,$(QWT_DEPEND_MK)) # ---------------------------------------------

PREFER.qwt?=		system
DEPEND_USE+=		qwt
DEPEND_ABI.qwt?=	qwt>=5.0

SYSTEM_SEARCH.qwt=	\
	include/qwt/qwt.h \
	lib/libqwt.so	\

SYSTEM_PKG.Linux-fedora.qwt=qwt
#SYSTEM_PKG.Linux-ubuntu.qwt=libforms-dev
#SYSTEM_PKG.Linux-debian.qwt=libforms-dev

endif # QWT_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
