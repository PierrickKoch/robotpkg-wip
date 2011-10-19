# robotpkg depend.mk for:	graphics/oro-view
# Created:			Xavier Broquere on Fri, 29 Oct 2010
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OROVIEW_DEPEND_MK:=		${OROVIEW_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		oro-view
endif

ifeq (+,$(OROVIEW_DEPEND_MK)) # ------------------------------------------------

PREFER.oro-view?=		robotpkg

SYSTEM_SEARCH.oro-view=\
	bin/oroview

DEPEND_USE+=		oro-view

DEPEND_ABI.oro-view?=	oro-view>=1.0
DEPEND_DIR.oro-view?=	../../wip/oro-view

endif # OROVIEW_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
