# robotpkg Makefile for:	hardware/openni-nite
# Created:			Matthieu Herrb on Tue, 14 Dec 2010
#

ifeq (${MACHINE_ARCH},x86_64)
	NI_ARCH=x64
	NI_BITS=64
endif
ifeq (${MACHINE_ARCH},i386)
	NI_ARCH=x86
	NI_BITS=32
endif

PKG_VERSION=1.3.0.17
PKGNAME= openni-nite-${PKG_VERSION}
DISTNAME= NITE-Bin-Ubuntu-${NI_ARCH}-${PKG_VERSION}
COMMENT= Primesense OpenNI nite binary blob
EXTRACT_SUFX=	.tar.bz2
CATEGORIES= hardware devel
MASTER_SITES= http://www.openni.org/downloadfiles/openni-compliant-middleware-binaries/stable/54-primesense-nite-beta-build-for-for-ubuntu-10-10-${NI_ARCH}-${NI_BITS}-bit-v1-3-0/download
LICENSE = gnu-lgpl-v3

FETCH_METHOD=   custom
FETCH_CMD=      wget
FETCH_BEFORE_ARGS= --content-disposition

WRKSRC= ${WRKDIR}/Nite-${PKG_VERSION}

NO_CONFIGURE = yes

NO_BUILD = yes

INSTALLATION_DIRS = \
	${PREFIX}/lib \
	${PREFIX}/include/nite \
	${PREFIX}/share/openni/XnVFeatures \
	${PREFIX}/share/openni/XnVHandGenerator

do-install:
	${INSTALL} ${WRKSRC}/Bin/libXnVNite.so ${PREFIX}/lib
	cd ${WRKSRC}/Include; ${PAX} -rwp ma . ${PREFIX}/include/nite
	cd ${WRKSRC}/XnVFeatures/Bin; ${PAX} -rwp ma . ${PREFIX}/lib
	cd ${WRKSRC}/XnVFeatures/Data; \
		${PAX} -rwp ma . ${PREFIX}/share/openni/XnVFeatures
	niReg ${PREFIX}/lib/libXnVFeatures.so \
		${PREFIX}/share/openni/XnVFeatures
	cd ${WRKSRC}/XnVHandGenerator/Bin; ${PAX} -rwp ma . ${PREFIX}/lib
	cd ${WRKSRC}/XnVHandGenerator/Data; \
		${PAX} -rwp ma . ${PREFIX}/share/openni/XnVHandGenerator
	niReg ${PREFIX}/lib/libXnVHandGenerator.so \
		${PREFIX}/share/openni/XnVHandGenerator
	niLicense PrimeSense 0KOIk2JeIBYClPWVnMoRKn5cdY4=

include ../../wip/openni/depend.mk
include ../../wip/openni-sensor/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/robotpkg.mk
