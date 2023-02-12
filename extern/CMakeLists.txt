add_subdirectory(freetype)
add_subdirectory(rlottie)

set(RMLUI_FREETYPE_EXTERNAL ON CACHE BOOL "Use external FreeType instead of by find_package")
set(RMLUI_RLOTTIE_EXTERNAL ON CACHE BOOL "Use external RLOTTIE")
set(RMLUI_LUA_EXTERNAL ON CACHE BOOL "Use external LUA, this ask RmlUi_External::Lua target be set")
set(BUILD_LUA_BINDINGS ON CACHE BOOL "Build Lua bindings")

find_package(Lua REQUIRED)
add_library(Lua_LIB INTERFACE)
add_library(RmlUi_External::Lua ALIAS Lua_LIB)
target_link_libraries(Lua_LIB INTERFACE ${LUA_LIBRARIES})
target_include_directories(Lua_LIB INTERFACE ${LUA_INCLUDE_DIR})

add_subdirectory(RmlUi)
