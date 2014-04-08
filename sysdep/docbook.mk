
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
DOCBOOK_DEPEND_MK:=	${DOCBOOK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		docbook
endif

ifeq (+,$(DOCBOOK_DEPEND_MK)) # ---------------------------------------------

PREFER.docbook?=	system
DEPEND_USE+=		docbook
DEPEND_ABI.docbook?=	docbook>=0.6

SYSTEM_SEARCH.docbook=	\
	bin/docbook2pdf

SYSTEM_PKG.Ubuntu.docbook=docbook-utils
SYSTEM_PKG.Debian.docbook=docbook-utils
SYSTEM_PKG.Fedora.docbook=docbook-utils

endif # DOCBOOK_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
