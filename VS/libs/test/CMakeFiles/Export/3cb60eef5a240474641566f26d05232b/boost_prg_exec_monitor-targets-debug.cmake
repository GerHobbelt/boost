#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Boost::prg_exec_monitor" for configuration "Debug"
set_property(TARGET Boost::prg_exec_monitor APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Boost::prg_exec_monitor PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libboost_prg_exec_monitor-vc143-mt-gd-x64-1_80.lib"
  )

list(APPEND _cmake_import_check_targets Boost::prg_exec_monitor )
list(APPEND _cmake_import_check_files_for_Boost::prg_exec_monitor "${_IMPORT_PREFIX}/lib/libboost_prg_exec_monitor-vc143-mt-gd-x64-1_80.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
