# robotpkg depend.mk for:	simulation/morse
# Created:			Séverin Lemaignan on Fri, 28 May 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MORSE_DEPEND_MK:=	${MORSE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		morse
endif

ifeq (+,$(MORSE_DEPEND_MK)) # ----------------------------------------------

PREFER.morse?=		robotpkg

SYSTEM_SEARCH.morse=\
	'bin/morse:1s/[^0-9.]//gp:% --version' \
	share/data/morse/morse_default.blend

DEPEND_USE+=		morse

DEPEND_ABI.morse?=	morse>=0.2
DEPEND_DIR.morse?=	../../wip/morse

endif # MORSE_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
