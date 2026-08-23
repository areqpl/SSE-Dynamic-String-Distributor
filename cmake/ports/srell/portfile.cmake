string(REPLACE "." "_" VERSION ${VERSION})

vcpkg_download_distfile(
    ARCHIVE
    URLS "https://akenotsuki.pages.dev/misc/srell/releases/srell${VERSION}.zip"
         "https://www.akenotsuki.com/misc/srell/releases/srell${VERSION}.zip"
    FILENAME "srell${VERSION}.zip"
    SHA512 056adc3a22bd44ba559dc5ab5c956d2e24a5e490d7c35324f2d566604dd32e9ebc9954eb879726bbb8bf333a28b27db4ebc124dbe4093914307dd9128c784164
)

vcpkg_extract_source_archive(
    SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
    NO_REMOVE_ONE_LEVEL
)

file(INSTALL
    "${SOURCE_PATH}/srell.hpp"
    "${SOURCE_PATH}/srell_ucfdata2.h"
    "${SOURCE_PATH}/srell_updata3.h"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
)

file(INSTALL "${SOURCE_PATH}/license.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
