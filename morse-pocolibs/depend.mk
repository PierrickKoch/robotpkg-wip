# robotpkg depend.mk for:	simulation/morse-pocolibs
# Created:			Anthony Mallet on Thu, 31 Mar 2011
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MORSE_POCOLIBS_DEPEND_MK:=	${MORSE_POCOLIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			morse-pocolibs
endif

ifeq (+,$(MORSE_POCOLIBS_DEPEND_MK)) # -------------------------------------

PREFER.morse-pocolibs?=		robotpkg

DEPEND_USE+=		morse-pocolibs

DEPEND_ABI.morse-pocolibs?=	morse-pocolibs>=0.2
DEPEND_DIR.morse-pocolibs?=	../../wip/morse-pocolibs

SYSTEM_SEARCH.morse-pocolibs=\
	lib/python*/{site,dist}-packages/morse/middleware/pocolibs_datastream.py

include ../../mk/sysdep/python.mk

endif # MORSE_POCOLIBS_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
