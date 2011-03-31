# robotpkg depend.mk for:	simulation/morse-yarp
# Created:			Anthony Mallet on Thu, 31 Mar 2011
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MORSE_YARP_DEPEND_MK:=		${MORSE_YARP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			morse-yarp
endif

ifeq (+,$(MORSE_YARP_DEPEND_MK)) # -----------------------------------------

PREFER.morse-yarp?=		robotpkg

DEPEND_USE+=			morse-yarp

DEPEND_ABI.morse-yarp?=		morse-yarp>=0.2
DEPEND_DIR.morse-yarp?=		../../wip/morse-yarp

SYSTEM_SEARCH.morse-yarp=\
	${PYTHON_SITELIB}/morse/middleware/yarp_mw.py

DEPEND_METHOD.python3+=		bootstrap
include ../../lang/python3/depend.mk

endif # MORSE_YARP_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
