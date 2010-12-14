# robotpkg Makefile for:	hardware/openni
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#
ifeq (${MACHINE_ARCH},x86_64)
	NI_ARCH=x64
endif
ifeq (${MACHINE_ARCH},i386)
	NI_ARCH=x86
endif

PKG_VERSION=1.3.0.17
DISTNAME= NITE-Bin-Ubuntu-${NI_ARCH}-${PKG_VERSION}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES= hardware devel
MASTER_SITES= http://downloads.primesense.com/
LICENSE = gnu-lgpl-v3

WRKSRC= ${WRKDIR}/Nite-${PKG_VERSION}

NO_CONFIGURE = yes

NO_BUILD = yes


do-install:
	mkdir -p ${PREFIX}/lib
	${INSTALL} ${WRKSRC}/Bin/libXnVNite.so ${PREFIX}/lib
	mkdir -p ${PREFIX}/include/nite
	cd ${WRKSRC}/Include; ${PAX} -rwp ma . ${PREFIX}/include/nite
	cd ${WRKSRC}/XnVFeatures/Bin; ${PAX} -rwp ma . ${PREFIX}/lib
	mkdir -p ${PREFIX}/share/openni/XnVFeatures
	cd ${WRKSRC}/XnVFeatures/Data; \
		${PAX} -rwp ma . ${PREFIX}/share/openni/XnVFeatures
	niReg ${PREFIX}/lib/libXnVFeatures.so \
		${PREFIX}/share/openni/XnVFeatures
	cd ${WRKSRC}/XnVHandGenerator/Bin; ${PAX} -rwp ma . ${PREFIX}/lib
	mkdir -p ${PREFIX}/share/openni/XnVHandGenerator
	cd ${WRKSRC}/XnVHandGenerator/Data; \
		${PAX} -rwp ma . ${PREFIX}/share/openni/XnVHandGenerator
	niReg ${PREFIX}/lib/libXnVHandGenerator.so \
		${PREFIX}/share/openni/XnVHandGenerator
	niLicense PrimeSense 0KOIk2JeIBYClPWVnMoRKn5cdY4=

include ../../wip/openni/depend.mk
include ../../wip/openni-sensor/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/robotpkg.mk
