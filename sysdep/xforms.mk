#
# Copyright (c) 2009 LAAS/CNRS
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
#                                    Severin Lemaignan on Wed 1 Sep 2010
#

# XForms is a GUI toolkit based on Xlib for X Window Systems. It
# features a rich set of objects, such as buttons, sliders, and menus
# etc. integrated into an easy and efficient object/event callback
# execution model that allows fast and easy construction of
# X-applications. In addition, the library is extensible and new
# objects can easily be created and added to the library.

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
XFORMS_DEPEND_MK:=	${XFORMS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		xforms
endif

ifeq (+,$(XFORMS_DEPEND_MK)) # ---------------------------------------------

PREFER.xforms?=		system
DEPEND_USE+=		xforms
DEPEND_ABI.xforms?=	xforms>=1.0.90

SYSTEM_SEARCH.xforms=	\
	include/forms.h \
	lib/libforms.so	\
	lib/libformsGL.so	\

SYSTEM_PKG.Linux-fedora.xforms=xforms-devel
SYSTEM_PKG.Linux-ubuntu.xforms=libforms-dev libformsgl-dev
SYSTEM_PKG.Linux-debian.xforms=libforms-dev libformsgl-dev


endif # XFORMS_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
