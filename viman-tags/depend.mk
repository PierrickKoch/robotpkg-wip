#
#                                    Severin Lemaignan on Tue 04 Jan 2011

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VIMANTAGS_DEPEND_MK:=	${VIMANTAGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		viman-tags
endif

ifeq (+,$(VIMANTAGS_DEPEND_MK)) # -----------------------------------------------

PREFER.viman-tags?=		robotpkg

DEPEND_USE+=		viman-tags
DEPEND_ABI.viman-tags?=	viman-tags>=20120125
DEPEND_DIR.viman-tags?=	../../wip/viman-tags

SYSTEM_SEARCH.viman-tags=\
	share/viman/tags/objectList_cfg

endif # VIMANTAGS_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
