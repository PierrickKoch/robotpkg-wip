# robotpkg Makefile for:	wip/boost-python
# Created:			Patrick Bechon
#


DEPEND_DEPTH:=		${DEPEND_DEPTH}+
BOOST_PYTHON_DEPEND_MK:=	${BOOST_PYTHON_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
  DEPEND_PKG+=		boost-python
endif

ifeq (+,$(BOOST_PYTHON_DEPEND_MK)) # -----------------------------------

DEPEND_USE+=		boost-python

PREFER.boost?=		system
PREFER.boost-python?=	${PREFER.boost}

DEPEND_ABI.boost-python?=	boost-python>=1.34.1
DEPEND_DIR.boost-python?=	../../wip/boost-python

SYSTEM_SEARCH.boost-python= \
	'lib/libboost_python-mt.so'

# For cmake/FindBoost users
CMAKE_ARGS+=	'-DBOOST_LIBRARYDIR=${PREFIX.boost-python:=/lib}'


endif # BOOST_PYTHON_DEPEND_MK -----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
