# robotpkg Makefile for:	wip/boost-python
# Created:			Patrick Bechon
#

BOOST_PACKAGE=		python
BOOST_COMMENT=		(binary libraries)

PREFER.boost?=		robotpkg
include ../../meta-pkgs/boost/Makefile.common

BJAM_ARGS+=		--with-python
INSTALLATION_DIRS=	lib

include ../../mk/sysdep/python.mk
include ../../devel/boost-jam/depend.mk
include ../../archivers/bzip2/depend.mk
include ../../archivers/zlib/depend.mk
include ../../archivers/pax/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

do-configure:
	${RUN}exec >${WRKSRC}/tools/build/v2/site-config.jam; \
	${ECHO} 'using ${BOOST_TOOLSET} : : ${CXX} ; using python : ${PYTHON_VERSION} ;'

do-build: bjam-build
	@${TRUE}

do-install:
	${RUN}cd ${WRKSRC}/stage/lib && \
	  ${PAX} -rw -p mp libboost* ${PREFIX}/lib
