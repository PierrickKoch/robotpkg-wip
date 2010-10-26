#
# Copyright (c) 2010 CNRS/LAAS
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#



# robotpkg Makefile for:	meta-pkgs/jido-pickObject
# Created:			Xavier BROQUERE on Mon, 25 Oct 2010
#
JIDO_DATE=      	20101026

# can't it be named jido-pick-object to be more consistent with other pkgs?
# the directory name should reflect the pkg name as much as possible
DISTNAME=		laas-jido-pickObject-${JIDO_DATE}

CATEGORIES=		meta-pkg

META_PACKAGE=	yes

MAINTAINER=	xavier.broquere@laas.fr
COMMENT=	Meta-package for package needed for the jido-pickObject demo

REQD_BUILD_OPTIONS.pilo-genom=	jido

# Those are user options
# PKG_OPTIONS.sick-genom=	h2
# PKG_OPTIONS.viam-libs=	opencv
# PKG_DEFAULT_OPTIONS=	openprs

# PREFER.festival=	robotpkg
# PREFER.OGIlexicon=      robotpkg
# PREFER.festlex-poslex=		robotpkg
# PREFER.boost=	robotpkg

include ../../hardware/sahand-libs/depend.mk
include ../../wip/kukaFri-libs/depend.mk
include ../../graphics/pqp/depend.mk
include ../../motion/pilo-genom/depend.mk
include ../../localization/segloc-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../hardware/platine-genom/depend.mk
include ../../hardware/sahand-genom/depend.mk
include ../../graphics/coldman-genom/depend.mk
include ../../motion/softMotion-libs/depend.mk
include ../../image/viman-genom/depend.mk

include ../../wip/mhp-genom/depend.mk

include ../../shell/eltclsh/depend.mk
include ../../mk/sysdep/tcl.mk
include ../../mk/sysdep/tk.mk
include ../../mk/robotpkg.mk
