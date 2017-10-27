#-------------------------------------------------
#
# Project created by QtCreator 2016-07-27T09:14:07
#
#-------------------------------------------------

QT       += core gui core network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

include(cutelogger/cutelogger.pri)
CONFIG += c++11 link_pkgconfig
PKGCONFIG += dtkwidget dtkbase

DEFINES += QT_MESSAGELOGCONTEXT

isEmpty(TARGET) {
    TARGET = deepin-shortcut-viewer
}


TEMPLATE = app


SOURCES += main.cpp\
    view/shortcutscene.cpp \
    view/mainwidget.cpp \
    commandlinemanager.cpp \
    singleapplication.cpp

HEADERS  += \
    view/shortcutscene.h \
    view/mainwidget.h \
    commandlinemanager.h \
    singleapplication.h


SUBDIRS += \
    QLogger/test/test.pro

DISTFILES += \
    QLogger/LICENSE \
    QLogger/README.md


isEmpty(PREFIX){
    PREFIX = /usr
}
BINDIR = $$PREFIX/bin

target.path = $$BINDIR

INSTALLS += target

