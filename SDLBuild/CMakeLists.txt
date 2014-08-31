cmake_minimum_required(VERSION 3.0)

execute_process(
        COMMAND ${CMAKE_C_COMPILER} -dumpmachine
        OUTPUT_VARIABLE ARCH_TRIPLET
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

include(ExternalProject)
ExternalProject_Add(EP_LIBSDL2
        URL http://libsdl.org/release/SDL2-2.0.3.tar.gz
        URL_HASH SHA512=b6d2485154fbc07ab86a4305485e116d35fac25a97033b9e1c65ee0eb8251a18209cb1de3a914d9c0ddc53aa1ffac66c865b111d218e79eb5a10ed00dfec7540
        CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR> --host=${ARCH_TRIPLET} --disable-directx CC=${CMAKE_C_COMPILER} CXX=${CMAKE_CXX_COMPILER}
        INSTALL_DIR ${INSTALL_DIR}
)

