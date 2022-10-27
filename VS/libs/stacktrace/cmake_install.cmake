# Install script for directory: D:/Git/boost/libs/stacktrace

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Boost")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/boost-1_80" TYPE DIRECTORY FILES "D:/Git/boost/libs/stacktrace/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_noop-vc143-mt-gd-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_noop-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_noop-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_noop-vc143-mt-x64-1_80.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_noop-vc143-mt-gd-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_noop-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_noop-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_noop-vc143-mt-x64-1_80.pdb")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0/boost_stacktrace_noop-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0/boost_stacktrace_noop-targets.cmake"
         "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0/boost_stacktrace_noop-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0/boost_stacktrace_noop-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/786072a2163a03262b8b8a3ef15b70d9/boost_stacktrace_noop-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_noop-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_noop-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_noop-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/boost-1_80" TYPE DIRECTORY FILES "D:/Git/boost/libs/stacktrace/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_basic-vc143-mt-gd-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_basic-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_basic-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_basic-vc143-mt-x64-1_80.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_basic-vc143-mt-gd-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_basic-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_basic-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_basic-vc143-mt-x64-1_80.pdb")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0/boost_stacktrace_basic-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0/boost_stacktrace_basic-targets.cmake"
         "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0/boost_stacktrace_basic-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0/boost_stacktrace_basic-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/a7aa52bdaf6011740e2f949c725ad9c5/boost_stacktrace_basic-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_basic-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_basic-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_basic-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/boost-1_80" TYPE DIRECTORY FILES "D:/Git/boost/libs/stacktrace/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_windbg-vc143-mt-gd-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_windbg-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_windbg-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_windbg-vc143-mt-x64-1_80.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_windbg-vc143-mt-gd-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_windbg-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_windbg-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_windbg-vc143-mt-x64-1_80.pdb")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0/boost_stacktrace_windbg-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0/boost_stacktrace_windbg-targets.cmake"
         "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0/boost_stacktrace_windbg-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0/boost_stacktrace_windbg-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/d6ec51a55e6bcdc5cfd4b365d7ced32b/boost_stacktrace_windbg-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_windbg-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_windbg-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/boost-1_80" TYPE DIRECTORY FILES "D:/Git/boost/libs/stacktrace/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_windbg_cached-vc143-mt-gd-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Debug/libboost_stacktrace_windbg_cached-vc143-mt-gd-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/Release/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/MinSizeRel/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.pdb")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "D:/Git/boost/VS/stage/lib/RelWithDebInfo/libboost_stacktrace_windbg_cached-vc143-mt-x64-1_80.pdb")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0/boost_stacktrace_windbg_cached-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0/boost_stacktrace_windbg_cached-targets.cmake"
         "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0/boost_stacktrace_windbg_cached-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0/boost_stacktrace_windbg_cached-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/CMakeFiles/Export/7b8f3ff4cd572132f02237dbd5abae11/boost_stacktrace_windbg_cached-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_windbg_cached-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_stacktrace_windbg_cached-1.80.0" TYPE FILE FILES "D:/Git/boost/VS/libs/stacktrace/tmpinst/boost_stacktrace_windbg_cached-config-version.cmake")
endif()

