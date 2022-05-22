<<<<<<< HEAD
#############################################################################
# Makefile for building: Compiler
# Generated by qmake (3.1) (Qt 6.2.2)
# Project:  Compiler.pro
# Template: app
# Command: /home/egor/Qt/6.2.2/gcc_64/bin/qmake -o Makefile Compiler.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
#############################################################################

MAKEFILE      = Makefile

EQ            = =

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_QML_DEBUG
CFLAGS        = -pipe -g -Wall -Wextra -fPIC $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -Wextra -fPIC $(DEFINES)
INCPATH       = -I. -I../../../Qt/6.2.2/gcc_64/mkspecs/linux-g++
QMAKE         = /home/egor/Qt/6.2.2/gcc_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /home/egor/Qt/6.2.2/gcc_64/bin/qmake -install qinstall
QINSTALL_PROGRAM = /home/egor/Qt/6.2.2/gcc_64/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = Compiler1.0.0
DISTDIR = /home/egor/Документы/Qt_projects/Compiler/.tmp/Compiler1.0.0
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)    
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp 
OBJECTS       = main.o
DIST          = lexemes.txt \
		main.txt \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_pre.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/linux.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/sanitize.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base-unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-base.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/qconfig.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_ext_libpng.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_tools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_functions.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_config.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/linux-g++/qmake.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/exclusive_builds.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/toolchain.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/default_pre.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/resolve_config.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/default_post.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qml_debug.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/warn_on.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qmake_use.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/file_copies.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/testcase_targets.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/exceptions.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/yacc.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/lex.prf \
		Compiler.pro  main.cpp
QMAKE_TARGET  = Compiler
DESTDIR       = 
TARGET        = Compiler


first: all
####### Build rules

Compiler:  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Compiler.pro ../../../Qt/6.2.2/gcc_64/mkspecs/linux-g++/qmake.conf ../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_pre.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/linux.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/sanitize.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base-unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-base.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-unix.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/qconfig.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_ext_libpng.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_tools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_functions.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_config.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/linux-g++/qmake.conf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/exclusive_builds.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/toolchain.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/default_pre.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/resolve_config.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/default_post.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qml_debug.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/warn_on.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/qmake_use.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/file_copies.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/testcase_targets.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/exceptions.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/yacc.prf \
		../../../Qt/6.2.2/gcc_64/mkspecs/features/lex.prf \
		Compiler.pro
	$(QMAKE) -o Makefile Compiler.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_pre.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/unix.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/linux.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/sanitize.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/gcc-base-unix.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-base.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/common/g++-unix.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/qconfig.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_ext_libpng.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_fb_support_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_input_support_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_kms_support_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsanimation_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsfolderlistmodel_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labsqmlmodels_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssettings_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labssharedimage_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_labswavefrontmesh_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_linguist_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_openglwidgets_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_packetprotocol_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcompiler_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlcore_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldebug_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmldom_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmllocalstorage_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlmodels_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlworkerscript_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_qmlxmllistmodel_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrols2impl_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickcontrolstestutilsprivate_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2quickimpl_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickdialogs2utils_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicklayouts_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickshapes_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quicktestutilsprivate_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_svgwidgets_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_tools_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wayland_egl_client_hw_integration_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_waylandclient_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_wl_shell_integration_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_functions.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/qt_config.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/linux-g++/qmake.conf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/spec_post.prf:
.qmake.stash:
../../../Qt/6.2.2/gcc_64/mkspecs/features/exclusive_builds.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/toolchain.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/default_pre.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/resolve_config.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/default_post.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/qml_debug.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/warn_on.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/qmake_use.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/file_copies.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/testcase_targets.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/exceptions.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/yacc.prf:
../../../Qt/6.2.2/gcc_64/mkspecs/features/lex.prf:
Compiler.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile Compiler.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug

qmake_all: FORCE


all: Makefile Compiler

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

check: first

benchmark: first

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

=======
all: main.o
	g++ main.o -o Compiler
	
main.o: main.cpp
	g++ -c main.cpp
	
clean:
	rm -rf *~ *.o
>>>>>>> bea0c50 (ЛА v.1)
