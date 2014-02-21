# robotpkg Makefile for:	hardware/can-utils
# Created:			Matthieu Herrb on Fri, 21 Feb 2014
#

DISTNAME=	can-utils-20140201
CATEGORIES=	hardware

DISTFILES=		110af11db13d7ab62684da5c0fd03fbb497645c9.tar.gz
MASTER_SITES=		https://gitorious.org/linux-can/can-utils/archive/
MASTER_REPOSITORY=	git git://gitorious.org/linux-can/can-utils.git

MAINTAINER=	matthieu.herrb@laas.fr
HOMEPAGE=	https://gitorious.org/linux-can/can-utils/
COMMENT=	Linux Socket-CAN userspace utilities and tools

LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/linux-can-can-utils/

MAKE_FLAGS=		PREFIX=${PREFIX}
ONLY_FOR_PLATFORM=	Linux-%

include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
