# Copyright (c) 2010 LAAS/CNRS
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
#                                                  Duong Dang June 1 2010
#

DISTNAME=	sot-gui-${VERSION}
PKGNAME=	sot-gui-${VERSION}
VERSION=	0.1

CATEGORIES=	gui
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-gui/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}gui/sot-gui

MAINTAINER=	hpp@laas.fr
COMMENT=

USE_LANGUAGES+= python

GNU_CONFIGURE=		no
NO_CONFIGURE= 		yes
# DOXYGEN_PLIST_DIR+=	share/doc/sot-gui

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/robotpkg.mk
#include ../stackoftasks/depend.mk