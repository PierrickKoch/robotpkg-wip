# robotpkg Makefile for:	devel/antlr2
# Created:			Raphaël Lallement on Mon, 07 Jul 201
#

PKGNAME=	antlr-${VERSION}
DISTNAME=	antlr-${VERSION}
VERSION=	2.7.7
MASTER_SITES=	http://www.antlr2.org/download.html/

CATEGORIES=	devel
HOMEPAGE=	http://www.antlr2.org
MAINTAINER=	rlalleme@laas.fr
COMMENT=	Antlr2 is a tool to generate parsers
LICENSE=	public-domain

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-make=${MAKE}
CONFIGURE_ARGS+=--with-java=${JAVA}
CONFIGURE_ARGS+=--with-jar=${JAR}
CONFIGURE_ARGS+=--with-javac=${JAVAC}
CONFIGURE_ARGS+=--with-pyhton=${PYTHON}
CONFIGURE_ARGS+=--disable-csharp

include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/java.mk
include ../../mk/robotpkg.mk
