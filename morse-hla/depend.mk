# robotpkg depend.mk for:	simulation/morse-hla
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MORSE_HLA_DEPEND_MK:=	${MORSE_HLA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			morse-hla
endif

ifeq (+,$(MORSE_HLA_DEPEND_MK)) # -------------------------------------

PREFER.morse-hla?=		robotpkg

DEPEND_USE+=		morse-hla

DEPEND_ABI.morse-hla?=	morse-hla>=1.0
DEPEND_DIR.morse-hla?=	../../wip/morse-hla

SYSTEM_SEARCH.morse-hla=\
	lib/python*/{site,dist}-packages/morse/multinode/hla.py

include ../../mk/sysdep/python.mk

endif # MORSE_HLA_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
