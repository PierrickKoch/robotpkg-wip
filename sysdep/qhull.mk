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

# Qhull is a general dimension convex hull program that reads a set
# of points from stdin, and outputs the smallest convex set that
# contains the points to stdout.  It also generates Delaunay
# triangulations, Voronoi diagrams, furthest-site Voronoi diagrams,
# and halfspace intersections about a point.

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
QHULL_DEPEND_MK:=	${QHULL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		qhull
endif

ifeq (+,$(QHULL_DEPEND_MK)) # ---------------------------------------------

PREFER.qhull?=		system
DEPEND_USE+=		qhull
DEPEND_ABI.qhull?=	qhull>=2003.1

SYSTEM_SEARCH.qhull=	\
	include/qhull/qhull.h \
	lib/libqhull.so

SYSTEM_PKG.Linux-fedora.qhull=qhull-devel

endif # QHULL_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
