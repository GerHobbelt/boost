#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Boost::serialization" for configuration "MinSizeRel"
set_property(TARGET Boost::serialization APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Boost::serialization PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/libboost_serialization-vc143-mt-x64-1_80.lib"
  )

list(APPEND _cmake_import_check_targets Boost::serialization )
list(APPEND _cmake_import_check_files_for_Boost::serialization "${_IMPORT_PREFIX}/lib/libboost_serialization-vc143-mt-x64-1_80.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
