# robotpkg Makefile for:	interface/jointStateMapper
# Created:			Mokhtar Gharbi on Fri, 25 Mar 2011
#

DISTNAME=		jointStateMapper-0.99
CATEGORIES=		interface
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jointStateMapper/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/jointStateMapper

MAINTAINER=		mokhtar.gharbi@laas.fr
COMMENT=		Library to translate the joint state of a model to anoter one
LICENSE=                2-clause-bsd


USE_LANGUAGES+=		c++

##################################
#### JOINTSTATEMAPPER OPTIONS ####
#################################


include ../../interfaces/openrobots-pose/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
