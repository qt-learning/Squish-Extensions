cmake_minimum_required(VERSION 3.16)

project(App_squish_extensions_section_2_to_3 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(App_squish_extensions_section_2_to_3
    main.cpp
)

qt_add_qml_module(App_squish_extensions_section_2_to_3
    URI App_squish_extensions_section_2_to_3
    VERSION 1.0
    QML_FILES
        Main.qml
        CustomButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(App_squish_extensions_section_2_to_3 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.App_squish_extensions_section_2_to_3
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(App_squish_extensions_section_2_to_3
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS App_squish_extensions_section_2_to_3
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
