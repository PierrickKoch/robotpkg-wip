#
# Copyright (c) 2013 LAAS/CNRS
# All rights reserved.
#
# Permission to use, copy, modify, and distribute this software for any purpose
# with or without   fee is hereby granted, provided   that the above  copyright
# notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL  IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR  BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER RESULTING  FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION,   ARISING OUT OF OR IN    CONNECTION WITH THE USE   OR
# PERFORMANCE OF THIS SOFTWARE.
#
#                                            Raphaël Lallement on Thu May 30 2013
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ANTLR_DEPEND_MK:=	${ANTLR_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		antlr2
endif

ifeq (+,$(ANTLR_DEPEND_MK)) # ---------------------------------------------

PREFER.antlr2?=		system

DEPEND_USE+=		antlr2

DEPEND_ABI.antlr2?=	antlr2>=2<3

SYSTEM_SEARCH.antlr2= 'bin/{,run}antlr'\
			'include/antlr/ANTLRException.hpp'\
			'lib/libantlr.a'
export ANTLR_INCLUDE=$(word 2,${SYSTEM_FILES.antlr2})
export ANTLR_BIN=$(word 1,${SYSTEM_FILES.antlr2})
export ANTLR_LIB=$(word 3,${SYSTEM_FILES.antlr2})

SYSTEM_PKG.Fedora.antlr2=	antlr-C++ antlr-tool
SYSTEM_PKG.Ubuntu.antlr2=	antlr libantlr-dev
SYSTEM_PKG.Debian.antlr2=	antlr libantlr-dev

endif # ANTLR_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
