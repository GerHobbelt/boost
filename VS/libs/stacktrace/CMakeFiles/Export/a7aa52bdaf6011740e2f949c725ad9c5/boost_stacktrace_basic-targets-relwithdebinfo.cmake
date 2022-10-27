#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Boost::stacktrace_basic" for configuration "RelWithDebInfo"
set_property(TARGET Boost::stacktrace_basic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Boost::stacktrace_basic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libboost_stacktrace_basic-vc143-mt-x64-1_80.lib"
  )

list(APPEND _cmake_import_check_targets Boost::stacktrace_basic )
list(APPEND _cmake_import_check_files_for_Boost::stacktrace_basic "${_IMPORT_PREFIX}/lib/libboost_stacktrace_basic-vc143-mt-x64-1_80.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
