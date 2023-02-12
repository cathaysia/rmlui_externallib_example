# What is this

this is a example for https://github.com/mikke89/RmlUi/pull/397

in this pr, add three option:

- RMLUI_FREETYPE_EXTERNAL: Use external FreeType instead of by find_package
- RMLUI_RLOTTIE_EXTERNAL: Use external RLOTTIE"
- RMLUI_LUA_EXTERNAL: Use external LUA, this ask RmlUi_External::Lua target be set

please read extern/CMakeLists.txt for more.

# Build

```bash
cmake -B build
cmake --build build
```

