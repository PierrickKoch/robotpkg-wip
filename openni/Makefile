# robotpkg Makefile for:	hardware/openni
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMENT= Primesense OpenNI framework for Natural Interaction
CATEGORIES = hardware image
LICENSE = gnu-lgpl-v3

PKG_VERSION= 43c256

DISTNAME= openni-${PKG_VERSION}
HOMEPAGE= http://openni.org

FETCH_BEFORE_ARGS= -v
FETCH_METHOD= git
MASTER_SITES= https://github.com/OpenNI/OpenNI.git@${PKG_VERSION}

#WRKSRC=${WRKDIR}/${DISTNAME}/Platform/Linux-x86/Build

USE_LANGUAGES= c c++

OPENNI= $(PREFIX)/bin
OPENNI_LIB= $(PREFIX)/lib

SUBST_CLASSES += main-makefile
SUBST_STAGE.main-makefile = post-patch
SUBST_MESSAGE.main-makefile = "### Patching the main Makefile for OpenNI..."
SUBST_SED.main-makefile = -e 's/CFG=$$(CFG)//g'
SUBST_FILES.main-makefile = Platform/Linux-x86/Build/Makefile

SUBST_CLASSES += output-lib
SUBST_STAGE.output-lib = post-patch
SUBST_MESSAGE.output-lib = "### Patching the output library for OpenNI..."
SUBST_SED.output-lib = \
    -e 's!BIN_DIR = ../../Bin!CFG=lib\nCFLAGS+=-O3 -msse3\nBIN_DIR=$(OPENNI)!g'
SUBST_FILES.output-lib = \
	Platform/Linux-x86/Build/OpenNI/Makefile \
	Platform/Linux-x86/Build/Modules/nimCodecs/Makefile \
	Platform/Linux-x86/Build/Modules/nimMockNodes/Makefile \
	Platform/Linux-x86/Build/Modules/nimRecorder/Makefile

SUBST_CLASSES += samples
SUBST_STAGE.samples = post-patch
SUBST_MESSAGE.samples = "### Patching the output location for all samples..."
SUBST_SED.samples = -e 's!BIN_DIR = ../../../Bin!CFG=bin\nCFLAGS+=-O3 -msse3\nLDFLAGS+=-Wl,-rpath,$(OPENNI_LIB)\nLIB_DIRS=$(OPENNI_LIB)\nBIN_DIR=$(OPENNI)!g'
SUBST_FILES.samples = \
	Platform/Linux-x86/Build/Samples/NiAudioSample/Makefile \
	Platform/Linux-x86/Build/Samples/NiBackRecorder/Makefile \
	Platform/Linux-x86/Build/Samples/NiConvertXToONI/Makefile \
	Platform/Linux-x86/Build/Samples/NiCRead/Makefile \
	Platform/Linux-x86/Build/Samples/NiRecordSynthetic/Makefile \
	Platform/Linux-x86/Build/Samples/NiSampleModule/Makefile \
	Platform/Linux-x86/Build/Samples/NiSimpleCreate/Makefile \
	Platform/Linux-x86/Build/Samples/NiSimpleRead/Makefile \
	Platform/Linux-x86/Build/Samples/NiSimpleViewer/Makefile \
	Platform/Linux-x86/Build/Samples/NiUserTracker/Makefile \
	Platform/Linux-x86/Build/Utils/niLicense/Makefile \
	Platform/Linux-x86/Build/Utils/niReg/Makefile 

SUBST_CLASSES += xml
SUBST_STAGE.xml = post-patch
SUBST_MESSAGE.xml = "### Patching the location of modules.xml..."
SUBST_SED.xml = -e 's!/var/lib/ni/modules.xml!$(OPENNI_SHARE)/modules.xml!g'
SUBST_FILES.modules-xml = \
	Source/OpenNI/XnModuleLoader.cpp \
	Source/OpenNI/XnLicensing.cpp \

SUBST_CLASSES += data-xml
SUBST_STAGE.data=xml = post-patch
SUBST_MESSAGE.data-xml = ### Patching the location of SamplesConfig.xml..."
SUBST_SED.data-xml = \
	-e 's!/var/lib/ni/licenses.xml!$(OPENNI_SHARE)/licenses.xml!g' 
SUBST_FILES.data-xml = \
	Samples/NiAudioSample/NiAudioSample.cpp \
	Samples/NiViewer/NiViewer.cpp \
	Samples/NiRecordSynthetic/NiRecordSynthetic.cpp \
	Samples/NiSimpleViewer/NiSimpleViewer.cpp \
	Samples/NiSimpleRead/NiSimpleRead.cpp \
	Samples/NiUserTracker/main.cpp

BUILD_DIRS = Platform/Linux-x86/Build

include ../../pkgtools/install-sh/depend.mk
include ../../mk/robotpkg.mk
