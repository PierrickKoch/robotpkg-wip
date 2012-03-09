# robotpkg Makefile for:	optimization/mumps
# Created:			Antonio El Khoury on Wed, 7 Mar 2012
#

VERSION=	4.10.0
DISTNAME=	MUMPS_${VERSION}
PKGNAME=	mumps-${VERSION}
CATEGORIES=	math
MASTER_SITES=	http://mumps.enseeiht.fr/

COMMENT=	Parallel sparse direct solver
HOMEPAGE=	http://graal.ens-lyon.fr/MUMPS/
LICENSE=	public-domain
MAINTAINER=	openrobots@laas.fr

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	c c++ fortran
GNU_CONFIGURE=	yes

INCLUDE_DIRS.lapack=	include
LIBRARY_DIRS.lapack=	lib
RPATH_DIRS.lapack=	lib
LDFLAGS.lapack=		-llapack

INCLUDE_DIRS.blas=	include
LIBRARY_DIRS.blas=	lib
RPATH_DIRS.blas=	lib
LDFLAGS.blas=		-lblas

# require f90 compiler
DEPEND_ABI.gcc-fortran+=	gcc-fortran>=4

include ../../math/lapack/depend.mk
include ../../math/blas/depend.mk
include ../../mk/sysdep/autoconf.mk
include ../../mk/sysdep/automake.mk
include ../../mk/robotpkg.mk

post-extract:
	${RUN} cd ${WRKDIR};						\
	${LN} -s MUMPS_${VERSION} MUMPS;				\
	${SED} -e 's/@VERSION@/${VERSION}/g'				\
	  >configure.ac <${FILESDIR}/configure.ac;			\
	${CP} ${FILESDIR}/Makefile.am Makefile.am

pre-configure: autoreconf
