TARGET = LabCompass
TEMPLATE = app
CONFIG += precompile_header c++14
CONFIG -= debug_and_release debug_and_release_target

QT += qml quick quickcontrols2 widgets svg quickwidgets
win32:RC_ICONS += resources/LabCompass.ico

INCLUDEPATH += \
    src \
    ../common/src \
    ../vendor/QtSuperMacros

DEPEND_LIBS += common
DEPEND_VENDOR_LIBS += QtSuperMacros
include(../config/dependencies.pri)

win32 {
    LIBS += -lPsapi
    dlls.path = $${OUT_PWD}
    dlls.files = win32-dlls/*
    INSTALLS += dlls
}

HEADERS += \
    src/application.h \
    src/window/window.h \
    src/window/headerwindow.h \
    src/window/toolbarwindow.h \
    src/window/compasswindow.h \
    src/window/instructionlistwindow.h \
    src/window/plannerwindow.h \
    src/window/puzzlewindow.h \
    src/window/optionswindow.h

SOURCES += \
    src/main.cpp \
    src/application.cpp \
    src/window/window.cpp \
    src/window/headerwindow.cpp \
    src/window/toolbarwindow.cpp \
    src/window/compasswindow.cpp \
    src/window/instructionlistwindow.cpp \
    src/window/plannerwindow.cpp \
    src/window/puzzlewindow.cpp \
    src/window/optionswindow.cpp

RESOURCES += \
    resources/labcompass.qrc
