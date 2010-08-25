# robotpkg Makefile for:	modeling/vcg-libply
# Created:			nksallem on Tue, 24 Aug 2010
#

PKGVERSION=	20100824
PKGNAME=		vcglib-${PKGVERSION}
DISTNAME=		vcglib-${PKGVERSION}.svn3811

CATEGORIES=		modeling devel
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=external/vcglib/}
MASTER_REPOSITORY=	\
	svn https://vcg.svn.sourceforge.net/svnroot/vcg/trunk/vcglib

MAINTAINER=		mallet@laas.fr
HOMEPAGE=		http://vcg.sourceforge.net/index.php/VCGLib
COMMENT=		C++ library for mesh manipulation.
LICENSE=		gnu-gpl-v2

INSTALLATION_DIRS=	include/vcglib

WRKSRC=			${WRKDIR}/vcglib
NO_CONFIGURE=			yes
NO_BUILD=					yes

PKG_SUPPORTED_OPTIONS+= doc
PKG_SUGGESTED_OPTIONS+= doc
PKG_OPTION_DESCR.doc?=  Install ${PKGBASE} documentation

define PKG_OPTION_SET.doc
	DOXYGEN_PLIST_DIR+= share/doc/${PKGBASE}
  do-install: vcglib-install-doc
endef

#apps option
PKG_SUPPORTED_OPTIONS+= apps
PKG_OPTION_DESCR.apps?=  Install ${PKGBASE} sample applications

define PKG_OPTION_SET.apps
	DOXYGEN_PLIST_DIR+= share/examples/${PKGBASE}	
  do-install: vcglib-install-apps
endef

include ../../mk/sysdep/doxygen.mk 
include ../../math/eigen2/depend.mk
include ../../wip/vcg-libply/depend.mk
include ../../pkgtools/pax/depend.mk
include ../../mk/robotpkg.mk

do-install: vcg-install-libs
	 	@:

.PHONY: vcg-install-libs
vcg-install-libs:	vcglib-install-img vcglib-install-vcg vcglib-install-wrap 

vcglib-install-img:	
		cd ${WRKSRC} && ${PAX} -rw -pm img ${PREFIX}/${INSTALLATION_DIRS}

vcglib-install-vcg:
	${INSTALL} -d ${PREFIX}/${INSTALLATION_DIRS}/vcg 
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm complex ${PREFIX}/${INSTALLATION_DIRS}/vcg
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm connectors ${PREFIX}/${INSTALLATION_DIRS}/vcg
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm container ${PREFIX}/${INSTALLATION_DIRS}/vcg
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm math ${PREFIX}/${INSTALLATION_DIRS}/vcg
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm simplex ${PREFIX}/${INSTALLATION_DIRS}/vcg
	cd ${WRKSRC}/vcg && ${PAX} -rw -pm space ${PREFIX}/${INSTALLATION_DIRS}/vcg

vcglib-install-wrap:
	${INSTALL} -d ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm *.h ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm bmt ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm dae ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm gl ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm gui ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm io_edgemesh ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm io_tetramesh ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm io_trimesh ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm math ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm minpack ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm mt ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm opensg ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm qt ${PREFIX}/${INSTALLATION_DIRS}/wrap
	cd ${WRKSRC}/wrap && ${PAX} -rw -pm system ${PREFIX}/${INSTALLATION_DIRS}/wrap

vcglib-install-doc:
	cd ${WRKSRC}/docs/Doxygen && ${DOXYGEN} doxyfile	
	${INSTALL} -d ${PREFIX}/share/doc/${PKGBASE}
	cd ${WRKSRC}/docs/Doxygen && ${PAX} -rw -pm html ${PREFIX}/share/doc/${PKGBASE}
	cd ${WRKSRC}/docs && ${PAX} -rw -pm *.* ${PREFIX}/share/doc/${PKGBASE}

.PHONY: vcglib-install-apps
vcglib-install-apps:
	${INSTALL} -d ${PREFIX}/share/examples/${PKGBASE}
	cd ${WRKSRC}/apps && ${PAX} -rw -pm . ${PREFIX}/share/examples/${PKGBASE}
