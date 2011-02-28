#
# Created by:                  Severin Lemaignan on Tue, 04 Jan 2011


PKGNAME= 		hri-simulation
VERSION=		1.1

DISTNAME=		${PKGNAME}-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hri-simulation/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/hri-simulation

MAINTAINER=		slemaign@laas.fr

CATEGORIES=		simulation
COMMENT=		Simulation environment for Human Robot Interaction

LICENSE=		isc

USE_LANGUAGES+=		python
PYTHON_REQUIRED=	>=2.5<3

PYDISTUTILSPKG=		yes

# Required dependencies
include ../../localization/pom-genom/depend.mk

include ../../hardware/platine-genom/depend.mk
include ../../wip/lwr-genom/depend.mk

REQD_BUILD_OPTIONS.spark-genom+=jido
include ../../wip/spark-genom/depend.mk

REQD_BUILD_OPTIONS.pilo-genom+=fake
include ../../wip/mhp-genom/depend.mk
include ../../wip/move3d-assets/depend.mk

REQD_BUILD_OPTIONS.morse+= pocolibs-hri
include ../../wip/morse/depend.mk

include ../../sysutils/alog/depend.mk

include ../../wip/pypoco/depend.mk

include ../../mk/sysdep/py-setuptools.mk
include ../../mk/robotpkg.mk
