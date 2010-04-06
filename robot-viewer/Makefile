# $LAAS: Makefile 2009/02/27 18:09:51 mallet $
#
# Copyright (c) 2007-2009 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice  and this list of  conditions in the documentation   and/or
#      other materials provided with the distribution.
#
#                                       Anthony Mallet on Tue Jun 28 2007
#

DISTNAME=	robot-viewer-${VERSION}
PKGNAME=	robot-viewer-${VERSION}
VERSION=	0.3

CATEGORIES=	path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=robot-viewer/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}gui/robot-viewer

MAINTAINER=	hpp@laas.fr
COMMENT=	A simple robot viewer/motion player

USE_LANGUAGES= Python

GNU_CONFIGURE=		no
NO_CONFIGURE= 		yes
NO_CHECKSUM= yes	# FIXME
DOXYGEN_PLIST_DIR+=	

#include ../../mk/sysdep/python.mk
#include ../../pkgtools/libtool/depend.mk
#include ../../pkgtools/pkg-config/depend.mk
#include ../../mk/sysdep/doxygen.mk
#include ../../mk/sysdep/graphviz.mk
#include ../../mk/sysdep/pdflatex.mk
include ../../mk/robotpkg.mk
