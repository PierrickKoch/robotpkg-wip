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

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBXPM_DEPEND_MK:=	${LIBXPM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libXpm
endif

ifeq (+,$(LIBXPM_DEPEND_MK)) # ---------------------------------------------

PREFER.libXpm?=		system
DEPEND_USE+=		libXpm
DEPEND_ABI.libXpm?=	libXpm>=3.5.7

SYSTEM_SEARCH.libXpm=	\
	include/X11/xpm.h \
	lib/libXpm.so

SYSTEM_PKG.Fedora.libXpm=libXpm-devel
SYSTEM_PKG.Ubuntu.libXpm=libxpm-dev
SYSTEM_PKG.Debian.libXpm=libXpm-dev
SYSTEM_PKG.NetBSD.libXpm=x11/libXpm

endif # LIBXPM_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
