# output information about installation-directories and locations

message("")
message("* Install core to        : ${CMAKE_INSTALL_PREFIX}")
message("")

message("* Libraries :")
message("  - Boost : ${BOOST_INCLUDE_DIR}")
message("  - CryptoPP : ${CRYPTOPP_INCLUDE_DIRS}")
message("  - MySQL : ${MYSQL_INCLUDE_DIR}")
message("  - OpenSSL : ${OPENSSL_INCLUDE_DIR}")
message("")

# Show infomation about the options selected during configuration

if( GAME )
  message("* Build Game server       : Yes (default)")
else()
  message("* Build Game server : No")
endif()

message("")

