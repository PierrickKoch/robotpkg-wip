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

# GTS provides a set of useful functions to deal with 3D surfaces
# meshed with interconnected triangles including collision detection,
# multiresolution models, constrained Delaunay triangulations and
# robust set operations (union, intersection, differences).

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GTS_DEPEND_MK:=	${GTS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		gts
endif

ifeq (+,$(GTS_DEPEND_MK)) # ---------------------------------------------

PREFER.gts?=		system
DEPEND_USE+=		gts
DEPEND_ABI.gts?=	gts>=2003.1

SYSTEM_SEARCH.gts=	\
	include/gts.h \
	lib/libgts.so

SYSTEM_PKG.Fedora.gts=gts-devel
SYSTEM_PKG.Ubuntu.gts=libgts-dev
SYSTEM_PKG.Debian.gts=libgts-dev
SYSTEM_PKG.NetBSD.gts=wip/gts


endif # GTS_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
