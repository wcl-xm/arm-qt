QT       += core gui
QT       += serialport
QT       += multimedia multimediawidgets
QT       += network  widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    network.cpp \
    camera.cpp \
    imagesettings.cpp \
    videosettings.cpp \
    metadatadialog.cpp \
    chatdialog.cpp \
    client.cpp \
    connection.cpp \
    peermanager.cpp \
    server.cpp \
    seriport.cpp

HEADERS += \
    mainwindow.h \
    network.h \
    camera.h \
    imagesettings.h \
    videosettings.h \
    metadatadialog.h \
    chatdialog.h \
    client.h \
    connection.h \
    peermanager.h \
    server.h \
    seriport.h

FORMS += \
    imagesettings.ui \
    mainwindow.ui \
    chatdialog.ui \
    seriport.ui

android|ios {
    FORMS += \
        camera_mobile.ui \
        videosettings_mobile.ui
} else {
    FORMS += \
        camera.ui \
        videosettings.ui
}

TARGET = serialport
TEMPLATE = app

requires(qtConfig(udpsocket))
requires(qtConfig(listwidget))
# install
target.path = $$[QT_INSTALL_EXAMPLES]/network/network-chat
INSTALLS += target

RESOURCES += camera.qrc
target.path = $$[QT_INSTALL_EXAMPLES]/multimediawidgets/camera
INSTALLS += target
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
