# robotpkg depend.mk for:	graphics/robotModelParser-libs
# Created:			Francois Lancelot Fri, 16 Sep 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROBOTMODELPARSER_LIBS_DEPEND_MK:=${ROBOTMODELPARSER_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		robotModelParser-libs
endif

ifeq (+,$(ROBOTMODELPARSER_LIBS_DEPEND_M)) # ---------------------------------

PREFER.robotModelParser-libs?=	robotpkg

DEPEND_USE+=		robotModelParser-libs

DEPEND_ABI.robotModelParser-libs?=robotModelParser-libs>=1.0
DEPEND_DIR.robotModelParser-libs?=../../graphics/robotModelParser-libs

SYSTEM_SEARCH.robotModelParser-libs=\
	include/robotModelParser/urdf_model.h	\
	lib/librobotModelParser.so

endif # ROBOTMODELPARSER_LIBS_DEPEND_MK ---------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}

