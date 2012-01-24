#############################################################################
# Makefile for building: QMLIrc
# Generated by qmake (2.01a) (Qt 4.7.4) on: Mon 23. Jan 23:22:28 2012
# Project:  QMLIrc.pro
# Template: app
# Command: c:\qtsdk\simulator\qt\mingw\bin\qmake.exe -spec ..\..\QtSDK\Simulator\Qt\mingw\mkspecs\win32-g++ QMLJSDEBUGGER_PATH=C:/QtSDK/QtCreator/qtc-qmldbg/52302495 -o Makefile QMLIrc.pro
#############################################################################

first: debug
install: debug-install
uninstall: debug-uninstall
MAKEFILE      = Makefile
QMAKE         = c:\qtsdk\simulator\qt\mingw\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = $(COPY)
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = del
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = move
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
SUBTARGETS    =  \
		debug \
		release

debug: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_default: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-make_first: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug first
debug-all: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_default: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-make_first: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release first
release-all: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: QMLIrc.pro  ../../QtSDK/Simulator/Qt/mingw/mkspecs/win32-g++/qmake.conf ../../QtSDK/Simulator/Qt/mingw/mkspecs/qconfig.pri \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/modules/qt_webkit_version.pri \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/qt_functions.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/qt_config.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/exclusive_builds.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/default_pre.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/default_pre.prf \
		../../QtSDK/QtCreator/qtc-qmldbg/52302495/qmljsdebugger-lib.pri \
		qmlapplicationviewer/qmlapplicationviewer.pri \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/debug.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/debug_and_release.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/default_post.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/default_post.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/qt-components-config.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/qt-components.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/rtti.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/exceptions.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/stl.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/shared.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/warn_on.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/qt.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/thread.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/moc.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/win32/windows.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/resources.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/uic.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/yacc.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/lex.prf \
		../../QtSDK/Simulator/Qt/mingw/mkspecs/features/include_source_dir.prf \
		c:/QtSDK/Simulator/Qt/mingw/lib/qtmaind.prl
	$(QMAKE) -spec ..\..\QtSDK\Simulator\Qt\mingw\mkspecs\win32-g++ QMLJSDEBUGGER_PATH=C:/QtSDK/QtCreator/qtc-qmldbg/52302495 -o Makefile QMLIrc.pro
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\qconfig.pri:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\modules\qt_webkit_version.pri:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\qt_functions.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\qt_config.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\exclusive_builds.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\default_pre.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\default_pre.prf:
..\..\QtSDK\QtCreator\qtc-qmldbg\52302495\qmljsdebugger-lib.pri:
qmlapplicationviewer\qmlapplicationviewer.pri:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\debug.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\debug_and_release.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\default_post.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\default_post.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\qt-components-config.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\qt-components.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\rtti.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\exceptions.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\stl.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\shared.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\warn_on.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\qt.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\thread.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\moc.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\win32\windows.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\resources.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\uic.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\yacc.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\lex.prf:
..\..\QtSDK\Simulator\Qt\mingw\mkspecs\features\include_source_dir.prf:
c:\QtSDK\Simulator\Qt\mingw\lib\qtmaind.prl:
qmake: qmake_all FORCE
	@$(QMAKE) -spec ..\..\QtSDK\Simulator\Qt\mingw\mkspecs\win32-g++ QMLJSDEBUGGER_PATH=C:/QtSDK/QtCreator/qtc-qmldbg/52302495 -o Makefile QMLIrc.pro

qmake_all: FORCE

make_default: debug-make_default release-make_default FORCE
make_first: debug-make_first release-make_first FORCE
all: debug-all release-all FORCE
clean: debug-clean release-clean FORCE
distclean: debug-distclean release-distclean FORCE
	-$(DEL_FILE) Makefile

check: first

debug-mocclean: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
