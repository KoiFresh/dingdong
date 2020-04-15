#############################################################################
# Makefile for building: mate
# Generated by qmake (3.1) (Qt 5.9.5)
# Project:  mate.pro
# Template: app
# Command: /usr/lib/qt5/bin/qmake -o Makefile mate.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_DEPRECATED_WARNINGS -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_MULTIMEDIA_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -O2 -std=gnu++11 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/arm-linux-gnueabihf/qt5 -isystem /usr/include/arm-linux-gnueabihf/qt5/QtQuick -isystem /usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -isystem /usr/include/arm-linux-gnueabihf/qt5/QtGui -isystem /usr/include/arm-linux-gnueabihf/qt5/QtQml -isystem /usr/include/arm-linux-gnueabihf/qt5/QtNetwork -isystem /usr/include/arm-linux-gnueabihf/qt5/QtCore -I. -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++
QMAKE         = /usr/lib/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/lib/qt5/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/lib/qt5/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = mate1.0.0
DISTDIR = /home/user/Schreibtisch/dingdong/.tmp/mate1.0.0
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS) -llinphone -lmediastreamer_base -lQt5Quick -lQt5Multimedia -lQt5Gui -lQt5Qml -lQt5Network -lQt5Core -lGLESv2 -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = backend.cpp \
		config.cpp \
		main.cpp \
		phone.cpp \
		server.cpp \
		tcpsocket.cpp qrc_qml.cpp \
		moc_backend.cpp \
		moc_config.cpp \
		moc_phone.cpp \
		moc_server.cpp \
		moc_tcpsocket.cpp
OBJECTS       = backend.o \
		config.o \
		main.o \
		phone.o \
		server.o \
		tcpsocket.o \
		qrc_qml.o \
		moc_backend.o \
		moc_config.o \
		moc_phone.o \
		moc_server.o \
		moc_tcpsocket.o
DIST          = ding-dong.wav \
		sign.conf \
		user.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickcontrols2.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		mate.pro backend.h \
		config.h \
		phone.h \
		server.h \
		tcpsocket.h backend.cpp \
		config.cpp \
		main.cpp \
		phone.cpp \
		server.cpp \
		tcpsocket.cpp
QMAKE_TARGET  = mate
DESTDIR       = 
TARGET        = mate


first: all
####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: mate.pro /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimedia.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickcontrols2.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf \
		/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf \
		mate.pro \
		qml.qrc \
		/usr/lib/arm-linux-gnueabihf/libQt5Quick.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Multimedia.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Qml.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Network.prl \
		/usr/lib/arm-linux-gnueabihf/libQt5Core.prl
	$(QMAKE) -o Makefile mate.pro
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/linux.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/sanitize.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-base.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/qconfig.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_egl_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_kms_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimedia.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_multimediawidgets.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickcontrols2.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/toolchain.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_pre.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/default_post.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/warn_on.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qt.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/resources.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/moc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/qmake_use.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/file_copies.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/exceptions.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/yacc.prf:
/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/lex.prf:
mate.pro:
qml.qrc:
/usr/lib/arm-linux-gnueabihf/libQt5Quick.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Multimedia.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Gui.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Qml.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Network.prl:
/usr/lib/arm-linux-gnueabihf/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile mate.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents qml.qrc $(DISTDIR)/
	$(COPY_FILE) --parents /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/data/dummy.cpp $(DISTDIR)/
	$(COPY_FILE) --parents backend.h config.h phone.h server.h tcpsocket.h $(DISTDIR)/
	$(COPY_FILE) --parents backend.cpp config.cpp main.cpp phone.cpp server.cpp tcpsocket.cpp $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all: qrc_qml.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qml.cpp
qrc_qml.cpp: qml.qrc \
		/usr/lib/qt5/bin/rcc \
		PageLockscreen.qml \
		SmallObjectClapper.qml \
		bell.png \
		Back.qml \
		ObjectButton.qml \
		PageMain.qml \
		ObjectDoorbellSign.qml \
		ObjectBell.qml \
		SmallObjectBell.qml \
		ObjectPasscode.qml \
		key.png \
		CreatorObjectDoorbellSign.js \
		main.qml
	/usr/lib/qt5/bin/rcc -name qml qml.qrc -o qrc_qml.cpp

compiler_moc_predefs_make_all: moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) moc_predefs.h
moc_predefs.h: /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/data/dummy.cpp
	g++ -pipe -O2 -std=gnu++11 -Wall -W -dM -E -o moc_predefs.h /usr/lib/arm-linux-gnueabihf/qt5/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all: moc_backend.cpp moc_config.cpp moc_phone.cpp moc_server.cpp moc_tcpsocket.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_backend.cpp moc_config.cpp moc_phone.cpp moc_server.cpp moc_tcpsocket.cpp
moc_backend.cpp: backend.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include ./moc_predefs.h -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/user/Schreibtisch/dingdong -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtQuick -I/usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtQml -I/usr/include/arm-linux-gnueabihf/qt5/QtNetwork -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/7 -I/usr/include/arm-linux-gnueabihf/c++/7 -I/usr/include/c++/7/backward -I/usr/lib/gcc/arm-linux-gnueabihf/7/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/7/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include backend.h -o moc_backend.cpp

moc_config.cpp: config.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include ./moc_predefs.h -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/user/Schreibtisch/dingdong -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtQuick -I/usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtQml -I/usr/include/arm-linux-gnueabihf/qt5/QtNetwork -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/7 -I/usr/include/arm-linux-gnueabihf/c++/7 -I/usr/include/c++/7/backward -I/usr/lib/gcc/arm-linux-gnueabihf/7/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/7/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include config.h -o moc_config.cpp

moc_phone.cpp: phone.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include ./moc_predefs.h -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/user/Schreibtisch/dingdong -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtQuick -I/usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtQml -I/usr/include/arm-linux-gnueabihf/qt5/QtNetwork -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/7 -I/usr/include/arm-linux-gnueabihf/c++/7 -I/usr/include/c++/7/backward -I/usr/lib/gcc/arm-linux-gnueabihf/7/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/7/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include phone.h -o moc_phone.cpp

moc_server.cpp: server.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include ./moc_predefs.h -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/user/Schreibtisch/dingdong -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtQuick -I/usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtQml -I/usr/include/arm-linux-gnueabihf/qt5/QtNetwork -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/7 -I/usr/include/arm-linux-gnueabihf/c++/7 -I/usr/include/c++/7/backward -I/usr/lib/gcc/arm-linux-gnueabihf/7/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/7/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include server.h -o moc_server.cpp

moc_tcpsocket.cpp: tcpsocket.h \
		moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include ./moc_predefs.h -I/usr/lib/arm-linux-gnueabihf/qt5/mkspecs/linux-g++ -I/home/user/Schreibtisch/dingdong -I/usr/include/arm-linux-gnueabihf/qt5 -I/usr/include/arm-linux-gnueabihf/qt5/QtQuick -I/usr/include/arm-linux-gnueabihf/qt5/QtMultimedia -I/usr/include/arm-linux-gnueabihf/qt5/QtGui -I/usr/include/arm-linux-gnueabihf/qt5/QtQml -I/usr/include/arm-linux-gnueabihf/qt5/QtNetwork -I/usr/include/arm-linux-gnueabihf/qt5/QtCore -I/usr/include/c++/7 -I/usr/include/arm-linux-gnueabihf/c++/7 -I/usr/include/c++/7/backward -I/usr/lib/gcc/arm-linux-gnueabihf/7/include -I/usr/local/include -I/usr/lib/gcc/arm-linux-gnueabihf/7/include-fixed -I/usr/include/arm-linux-gnueabihf -I/usr/include tcpsocket.h -o moc_tcpsocket.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_predefs_clean compiler_moc_header_clean 

####### Compile

backend.o: backend.cpp backend.h \
		phone.h \
		config.h \
		tcpsocket.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o backend.o backend.cpp

config.o: config.cpp config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o config.o config.cpp

main.o: main.cpp backend.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

phone.o: phone.cpp phone.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o phone.o phone.cpp

server.o: server.cpp server.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o server.o server.cpp

tcpsocket.o: tcpsocket.cpp tcpsocket.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tcpsocket.o tcpsocket.cpp

qrc_qml.o: qrc_qml.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_qml.o qrc_qml.cpp

moc_backend.o: moc_backend.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_backend.o moc_backend.cpp

moc_config.o: moc_config.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_config.o moc_config.cpp

moc_phone.o: moc_phone.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_phone.o moc_phone.cpp

moc_server.o: moc_server.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_server.o moc_server.cpp

moc_tcpsocket.o: moc_tcpsocket.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_tcpsocket.o moc_tcpsocket.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/mate/bin || mkdir -p $(INSTALL_ROOT)/opt/mate/bin
	-$(QINSTALL_PROGRAM) $(QMAKE_TARGET) $(INSTALL_ROOT)/opt/mate/bin/$(QMAKE_TARGET)
	-$(STRIP) $(INSTALL_ROOT)/opt/mate/bin/$(QMAKE_TARGET)

uninstall_target: FORCE
	-$(DEL_FILE) $(INSTALL_ROOT)/opt/mate/bin/$(QMAKE_TARGET)
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/mate/bin/ 


install: install_target  FORCE

uninstall: uninstall_target  FORCE

FORCE:
