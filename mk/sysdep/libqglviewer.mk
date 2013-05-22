# robotpkg sysdep/libqglviewer.mk
# Created:			Arnaud Degroote on May 22 2013

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBQGLVIEWER_MM_DEPEND_MK:=		${LIBQGLVIEWER_MM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libqglviewer
endif

ifeq (+,$(LIBQGLVIEWER_MM_DEPEND_MK)) # ------------------------------------------------

PREFER.libqglviewer?=		system
DEPEND_USE+=				libqglviewer
DEPEND_ABI.libqglviewer?=	libqglviewer>=2.3

SYSTEM_SEARCH.libqglviewer=	\
	'lib/libqglviewer-qt4.so'

SYSTEM_PKG.Fedora.libqglviewer=	libQGLViewer-devel
SYSTEM_PKG.Ubuntu.libqglviewer=	libqglviewer-qt4-dev
SYSTEM_PKG.Debian.libqglviewer=	libqglviewer-qt4-dev

endif # LIBQGLVIEWER_MM_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
