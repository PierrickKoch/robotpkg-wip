# robotpkg Makefile for:	meta-pkgs/laas-rackham
# Created:			Matthieu Herrb on Fri,  3 Dec 2010
#

RACKHAM_DATE=		20101203
DISTNAME=       laas-rackham-${RACKHAM_DATE}
CATEGORIES=     meta-pkgs
COMMENT=        Rackham Software
META_PACKAGE=	yes

REQD_BUILD_OPTIONS.pilo-genom=		b21r
REQD_BUILD_OPTIONS.libp3d=		b21r
REQD_BUILD_OPTIONS.rflex-genom=		b21r
REQD_BUILD_OPTIONS.sick-genom=		xr4000

# space
include ../../robots/rflex-genom/depend.mk
include ../../localization/segloc-genom/depend.mk
include ../../path/ndd-genom/depend.mk

# city
include ../../image/viam-genom/depend.mk
include ../../hardware/platine-genom/depend.mk
include ../../audio/clone-genom/depend.mk

include ../../mk/robotpkg.mk
