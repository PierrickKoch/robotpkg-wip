# robotpkg depend.mk for:	supervision/lua-rfsm
# Created:			Arnaud Degroote on Thu, 12 Dec 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LUA_RFSM_DEPEND_MK:=	${LUA_RFSM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		lua-rfsm
endif

ifeq (+,$(LUA_RFSM_DEPEND_MK)) # -----------------------------------------------

PREFER.lua-rfsm?=		robotpkg

DEPEND_USE+=		lua-rfsm
DEPEND_ABI.lua-rfsm?=	lua-rfsm>=20131212
DEPEND_DIR.lua-rfsm?=	../../wip/lua-rfsm

SYSTEM_SEARCH.lua-rfsm=\
	lib/lua/rfsm/rfsm.lua

endif # LUA_RFSM_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
