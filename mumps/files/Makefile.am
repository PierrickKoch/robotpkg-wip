# automake file for MUMPS

AM_CPPFLAGS=	-IMUMPS/include -IMUMPS/libseq

lib_LTLIBRARIES= libmumps_common_seq.la
lib_LTLIBRARIES+= libsmumps_seq.la
lib_LTLIBRARIES+= libdmumps_seq.la
lib_LTLIBRARIES+= libcmumps_seq.la
lib_LTLIBRARIES+= libzmumps_seq.la

docdir=		${datadir}/mumps
doc_DATA=\
	MUMPS/ChangeLog				\
	MUMPS/LICENSE				\
	MUMPS/README				\
	MUMPS/VERSION

mumpsdir=	${includedir}/mumps
mumps_HEADERS=\
	MUMPS/include/mumps_c_types.h		\
	MUMPS/include/mumps_compat.h		\
						\
	MUMPS/include/smumps_c.h		\
	MUMPS/include/smumps_root.h		\
	MUMPS/include/smumps_struc.h		\
						\
	MUMPS/include/dmumps_c.h		\
	MUMPS/include/dmumps_root.h		\
	MUMPS/include/dmumps_struc.h		\
						\
	MUMPS/include/cmumps_c.h		\
	MUMPS/include/cmumps_root.h		\
	MUMPS/include/cmumps_struc.h		\
						\
	MUMPS/include/zmumps_c.h		\
	MUMPS/include/zmumps_root.h		\
	MUMPS/include/zmumps_struc.h

libmumps_common_seq_la_SOURCES=\
	MUMPS/src/mumps_part9.F			\
	MUMPS/src/mumps_common.c		\
	MUMPS/src/mumps_ooc_common.F		\
	MUMPS/src/mumps_orderings.c		\
	MUMPS/src/mumps_size.c			\
	MUMPS/src/mumps_io.c			\
	MUMPS/src/mumps_io_basic.c		\
	MUMPS/src/mumps_io_thread.c		\
	MUMPS/src/mumps_io_err.c		\
	MUMPS/src/mumps_static_mapping.F	\
	MUMPS/src/mumps_sol_es.F		\
	MUMPS/src/tools_common_mod.F		\
						\
	MUMPS/libseq/mpi.f 			\
	MUMPS/libseq/mpic.c			\
	MUMPS/libseq/elapse.c
libmumps_common_seq_la_LIBADD=${FCLIBS}
libmumps_common_seq_la_LDFLAGS=-release ${PACKAGE_VERSION}

libsmumps_seq_la_SOURCES=\
	MUMPS/src/smumps_part1.F		\
        MUMPS/src/smumps_part2.F		\
        MUMPS/src/smumps_part3.F		\
        MUMPS/src/smumps_part4.F		\
        MUMPS/src/smumps_part5.F		\
        MUMPS/src/smumps_part6.F		\
        MUMPS/src/smumps_part7.F		\
        MUMPS/src/smumps_part8.F		\
        MUMPS/src/smumps_comm_buffer.F		\
        MUMPS/src/smumps_load.F			\
        MUMPS/src/smumps_c.c			\
        MUMPS/src/smumps_ooc_buffer.F		\
        MUMPS/src/smumps_ooc.F			\
        MUMPS/src/smumps_struc_def.F
libsmumps_seq_la_LIBADD=libmumps_common_seq.la
libsmumps_seq_la_LDFLAGS=-release ${PACKAGE_VERSION}

smumps_part1.lo smumps_part2.lo: smumps_load.lo smumps_ooc.lo
smumps_part3.lo smumps_part4.lo: smumps_load.lo smumps_ooc.lo
smumps_part5.lo smumps_part6.lo: smumps_load.lo smumps_ooc.lo smumps_part2.lo
smumps_part7.lo smumps_part8.lo: smumps_load.lo smumps_ooc.lo

smumps_ooc.lo smumps_load.lo: smumps_comm_buffer.lo
smumps_ooc.lo smumps_load.lo: smumps_struc_def.lo
smumps_ooc.lo smumps_load.lo: smumps_ooc_buffer.lo

libdmumps_seq_la_SOURCES=\
	MUMPS/src/dmumps_part1.F		\
        MUMPS/src/dmumps_part2.F		\
        MUMPS/src/dmumps_part3.F		\
        MUMPS/src/dmumps_part4.F		\
        MUMPS/src/dmumps_part5.F		\
        MUMPS/src/dmumps_part6.F		\
        MUMPS/src/dmumps_part7.F		\
        MUMPS/src/dmumps_part8.F		\
        MUMPS/src/dmumps_comm_buffer.F		\
        MUMPS/src/dmumps_load.F			\
        MUMPS/src/dmumps_c.c			\
        MUMPS/src/dmumps_ooc_buffer.F		\
        MUMPS/src/dmumps_ooc.F			\
        MUMPS/src/dmumps_struc_def.F
libdmumps_seq_la_LIBADD=libmumps_common_seq.la
libdmumps_seq_la_LDFLAGS=-release ${PACKAGE_VERSION}

dmumps_part1.lo dmumps_part2.lo: dmumps_load.lo dmumps_ooc.lo
dmumps_part3.lo dmumps_part4.lo: dmumps_load.lo dmumps_ooc.lo
dmumps_part5.lo dmumps_part6.lo: dmumps_load.lo dmumps_ooc.lo dmumps_part2.lo
dmumps_part7.lo dmumps_part8.lo: dmumps_load.lo dmumps_ooc.lo

dmumps_ooc.lo dmumps_load.lo: dmumps_comm_buffer.lo
dmumps_ooc.lo dmumps_load.lo: dmumps_struc_def.lo
dmumps_ooc.lo dmumps_load.lo: dmumps_ooc_buffer.lo

libcmumps_seq_la_SOURCES=\
	MUMPS/src/cmumps_part1.F		\
        MUMPS/src/cmumps_part2.F		\
        MUMPS/src/cmumps_part3.F		\
        MUMPS/src/cmumps_part4.F		\
        MUMPS/src/cmumps_part5.F		\
        MUMPS/src/cmumps_part6.F		\
        MUMPS/src/cmumps_part7.F		\
        MUMPS/src/cmumps_part8.F		\
        MUMPS/src/cmumps_comm_buffer.F		\
        MUMPS/src/cmumps_load.F			\
        MUMPS/src/cmumps_c.c			\
        MUMPS/src/cmumps_ooc_buffer.F		\
        MUMPS/src/cmumps_ooc.F			\
        MUMPS/src/cmumps_struc_def.F
libcmumps_seq_la_LIBADD=libmumps_common_seq.la
libcmumps_seq_la_LDFLAGS=-release ${PACKAGE_VERSION}

cmumps_part1.lo cmumps_part2.lo: cmumps_load.lo cmumps_ooc.lo
cmumps_part3.lo cmumps_part4.lo: cmumps_load.lo cmumps_ooc.lo
cmumps_part5.lo cmumps_part6.lo: cmumps_load.lo cmumps_ooc.lo cmumps_part2.lo
cmumps_part7.lo cmumps_part8.lo: cmumps_load.lo cmumps_ooc.lo

cmumps_ooc.lo cmumps_load.lo: cmumps_comm_buffer.lo
cmumps_ooc.lo cmumps_load.lo: cmumps_struc_def.lo
cmumps_ooc.lo cmumps_load.lo: cmumps_ooc_buffer.lo

libzmumps_seq_la_SOURCES=\
	MUMPS/src/zmumps_part1.F		\
        MUMPS/src/zmumps_part2.F		\
        MUMPS/src/zmumps_part3.F		\
        MUMPS/src/zmumps_part4.F		\
        MUMPS/src/zmumps_part5.F		\
        MUMPS/src/zmumps_part6.F		\
        MUMPS/src/zmumps_part7.F		\
        MUMPS/src/zmumps_part8.F		\
        MUMPS/src/zmumps_comm_buffer.F		\
        MUMPS/src/zmumps_load.F			\
        MUMPS/src/zmumps_c.c			\
        MUMPS/src/zmumps_ooc_buffer.F		\
        MUMPS/src/zmumps_ooc.F			\
        MUMPS/src/zmumps_struc_def.F
libzmumps_seq_la_LIBADD=libmumps_common_seq.la
libzmumps_seq_la_LDFLAGS=-release ${PACKAGE_VERSION}

zmumps_part1.lo zmumps_part2.lo: zmumps_load.lo zmumps_ooc.lo
zmumps_part3.lo zmumps_part4.lo: zmumps_load.lo zmumps_ooc.lo
zmumps_part5.lo zmumps_part6.lo: zmumps_load.lo zmumps_ooc.lo zmumps_part2.lo
zmumps_part7.lo zmumps_part8.lo: zmumps_load.lo zmumps_ooc.lo

zmumps_ooc.lo zmumps_load.lo: zmumps_comm_buffer.lo
zmumps_ooc.lo zmumps_load.lo: zmumps_struc_def.lo
zmumps_ooc.lo zmumps_load.lo: zmumps_ooc_buffer.lo

libsmumps_seq.la libdmumps_seq.la libcmumps_seq.la libzmumps_seq.la: \
	libmumps_common_seq.la
MUMPS/src/%mumps_c.c: MUMPS/src/mumps_c.c
	echo '#define MUMPS_ARITH MUMPS_ARITH_$*' >$@
	${SED} -e '' $< >>$@
