# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice, this list of conditions and the following disclaimer.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice,  this list of  conditions and  the following disclaimer in
#      the  documentation   and/or  other  materials   provided with  the
#      distribution.
#
#                                    Severin Lemaignan on Fri 24 Sep 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SPARK-GENOM_DEPEND_MK:=	${SPARK-GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		spark-genom
endif

ifeq (+,$(SPARK-GENOM_DEPEND_MK)) # ----------------------------------

PREFER.spark-genom?=	robotpkg

SYSTEM_SEARCH.spark-genom=\
	include/spark/sparkStruct.h	\
	lib/pkgconfig/spark.pc	\
	bin/spark

DEPEND_USE+=		spark-genom

DEPEND_ABI.spark-genom?=spark-genom>=3.0
DEPEND_DIR.spark-genom?=../../wip/spark-genom

endif # SPARK-GENOM_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
