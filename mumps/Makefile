# robotpkg Makefile for:	optimization/mumps
# Created:			Antonio El Khoury on Wed, 7 Mar 2012
#

DISTNAME=	  MUMPS_${VERSION} Mumps
PKGNAME=	  mumps-${VERSION}
VERSION=	  4.10.0

CATEGORIES=	  optimization
MASTER_SITES=			  \
	http://mumps.enseeiht.fr/ \
	${MASTER_SITE_OPENROBOTS:=mumps/}

MAINTAINER=	  
HOMEPAGE=	  http://graal.ens-lyon.fr/MUMPS/
COMMENT=	  MUMPS : a parallel sparse direct solver
LICENSE=	  public-domain

USE_LANGUAGES=	  c c++ fortran
GNU_CONFIGURE=	  yes
CONFIGURE_DIRS=   ../

CPPFLAGS+= 					\
	-I${PREFIX.blas}/include/		\
	-I${PREFIX.lapack}/include/
LDFLAGS+= 					\
	-L${PREFIX.blas}/lib/			\
	-L${PREFIX.lapack}/lib/
LIBS+= -lblas -llapack -lpthread

# --------------------------------------------------------------------

include ../../math/lapack/depend.mk
include ../../math/blas/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/latex.mk
include ../../mk/robotpkg.mk

post-extract:
	cd ${WRKDIR} && ${LN} -s MUMPS_${VERSION} MUMPS

