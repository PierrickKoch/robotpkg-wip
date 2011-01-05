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
#                                          Severin Lemaignan on Tue, 04 Jan 2011


PKGNAME= 			move3d-assets-${PKG_DATE}
PKG_DATE=				20110105

DISTNAME=			${PKGNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=move3d-assets/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/move3d-assets.git

CATEGORIES=	wip
LICENSE=	isc
MAINTAINER=	biomove3dgitrepo@laas.fr
COMMENT=	Public 3D assets for the Move3D geometric planner

WRKSRC=${WRKDIR}/move3d-assets

NO_CONFIGURE=	yes
NO_BUILD=		yes

include ../../pkgtools/pax/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/robotpkg.mk

do-install:
	install -d ${PREFIX}/share/move3d/assets
	cd ${WRKSRC} && ${PAX} -rwp ma . ${PREFIX}/share/move3d/assets


