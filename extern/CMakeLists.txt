set(FT_DISABLE_HARFBUZZ ON CACHE BOOL "Disable freetype's huarbuzz depence")
set(FT_DISABLE_PNG ON CACHE BOOL "Disable support of PNG compressed OpenType embedded bitmaps.")
set(FT_DISABLE_ZLIB ON CACHE BOOL "Disable use of system zlib and use internal zlib library instead.")
set(FT_DISABLE_BZIP2 ON CACHE BOOL "Disable support of bzip2 compressed fonts.")
set(FT_DISABLE_BROTLI ON CACHE BOOL "Disable support of compressed WOFF2 fonts.")


add_subdirectory(freetype)
add_subdirectory(rlottie)

set(BUILD_LUA_BINDINGS ON CACHE BOOL "Build Lua bindings")
set(ENABLE_LOTTIE_PLUGIN ON CACHE BOOL "Build rottie bindings")

include(BuildLua)

add_subdirectory(RmlUi)
