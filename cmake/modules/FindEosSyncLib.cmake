# Find EOSSYNCLIB - JSON handling library for Qt
#
# This module defines
#  EOSSYNCLIB_FOUND - whether the qsjon library was found
#  EOSSYNCLIB_LIBRARIES - the qjson library
#  EOSSYNCLIB_INCLUDE_DIR - the include path of the qjson library
#

if (EOSSYNCLIB_INCLUDE_DIR AND EOSSYNCLIB_LIBRARIES)

  # Already in cache
  set (EOSSYNCLIB_FOUND TRUE)

else (EOSSYNCLIB_INCLUDE_DIR AND EOSSYNCLIB_LIBRARIES)


  find_library (EOSSYNCLIB_LIBRARIES
    NAMES
    eossynclib
    PATHS
    ${LIB_INSTALL_DIR}
  )

  find_path (EOSSYNCLIB_INCLUDE_DIR
    NAMES
    EosLog.h
    PATHS
    ${INCLUDE_INSTALL_DIR}/EosSyncLib
  )

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(EOSSYNCLIB DEFAULT_MSG EOSSYNCLIB_LIBRARIES EOSSYNCLIB_INCLUDE_DIR)

endif (EOSSYNCLIB_INCLUDE_DIR AND EOSSYNCLIB_LIBRARIES)
