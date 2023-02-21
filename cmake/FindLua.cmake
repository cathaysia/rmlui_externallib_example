# requires LUA_INCLUDE_DIR, LUA_LIBRARIES
# have target lualib

if(NOT TARGET lualib)
    include(BuildLua)
endif()

set(LUA_LIBRARIES lualib)
set(LUA_INCLUDE_DIR ${LUA_DIR})
set(Lua_FOUND ON)
