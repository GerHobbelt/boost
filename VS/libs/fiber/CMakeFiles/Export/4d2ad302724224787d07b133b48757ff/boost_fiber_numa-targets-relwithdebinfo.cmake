#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Boost::fiber_numa" for configuration "RelWithDebInfo"
set_property(TARGET Boost::fiber_numa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Boost::fiber_numa PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libboost_fiber_numa-vc143-mt-x64-1_80.lib"
  )

list(APPEND _cmake_import_check_targets Boost::fiber_numa )
list(APPEND _cmake_import_check_files_for_Boost::fiber_numa "${_IMPORT_PREFIX}/lib/libboost_fiber_numa-vc143-mt-x64-1_80.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
