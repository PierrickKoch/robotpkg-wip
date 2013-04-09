#
# Created by:                  Severin Lemaignan on Tue, 04 Jan 2011


PKGNAME= 		hri-simulation
VERSION=		1.1
PKGREVISION= 	1

DISTNAME=		${PKGNAME_NOREV}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hri-simulation/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/hri-simulation

MAINTAINER=		slemaign@laas.fr

CATEGORIES=		simulation
COMMENT=		Simulation environment for Human Robot Interaction

LICENSE=		isc

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG= 	ON


REQD_BUILD_OPTIONS.pom-genom+=python
include ../../localization/pom-genom/depend.mk

REQD_BUILD_OPTIONS.platine-genom+=python
include ../../hardware/platine-genom/depend.mk

REQD_BUILD_OPTIONS.viman-genom+=python
include ../../image/viman-genom/depend.mk

REQD_BUILD_OPTIONS.lwr-genom+=python
include ../../wip/lwr-genom/depend.mk

REQD_BUILD_OPTIONS.genPos-genom+=python
include ../../interfaces/genPos-genom/depend.mk

REQD_BUILD_OPTIONS.spark-genom+=jido python
include ../../wip/spark-genom/depend.mk

REQD_BUILD_OPTIONS.pilo-genom+=fake
include ../../wip/mhp-genom/depend.mk
include ../../wip/move3d-assets/depend.mk

include ../../wip/morse-pocolibs/depend.mk

include ../../sysutils/alog/depend.mk

include ../../net/py-poco/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
