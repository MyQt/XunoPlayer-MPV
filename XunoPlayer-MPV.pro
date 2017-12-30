CONFIG -= app_bundle
#CONFIG += console
CONFIG += windeployqt

QT += widgets
QT += webenginewidgets
QT += sql
QT += winextras

QT_CONFIG -= no-pkg-config
CONFIG += link_pkgconfig
#PKGCONFIG += mpv
QT_CONFIG -= no-pkg-config

#CONFIG += link_pkgconfig
#CONFIG += console
#PKGCONFIG += pkgconfig/mpv.pc

PROJECTROOT = $$PWD
TARGET = XunoPlayer-MPV
VER_MAJ = 0
VER_MIN = 0
VER_PAT = 4
VERSION = $${VER_MAJ}.$${VER_MIN}.$${VER_PAT}

GIT_VERSION = $$system(git --git-dir $$PWD/.git --work-tree $$PWD describe --always --tags)
GIT_VERSION += \{$$system(git rev-parse --abbrev-ref HEAD)\}
VERGITSTR = '\\"$${GIT_VERSION}\\"'

DEFINES += VER_MAJ_STRING=$${VER_MAJ}
DEFINES += VER_MIN_STRING=$${VER_MIN}
DEFINES += VER_PAT_STRING=$${VER_PAT}
DEFINES += VERSION_STRING=\\\"$${VER_MAJ}.$${VER_MIN}.$${VER_PAT}\\\"
DEFINES += VERGIT=\"$${VERGITSTR}\"

RC_ICONS = $${PROJECTROOT}/XunoPlayer-MPV_128x128.ico
QMAKE_TARGET_COMPANY = "Aaex Corp. http://www.xuno.com. https://github.com/Xuno/XunoPlayer-MPV"
QMAKE_TARGET_DESCRIPTION = "XunoPlayer-MPV. Aaex Corp. http://www.xuno.com."
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2012-2017 Aaex Corp."
QMAKE_TARGET_PRODUCT = "XunoPlayer-MPV $$1 VERSION GIT_VERSION"
export(RC_ICONS)
export(QMAKE_TARGET_COMPANY)
export(QMAKE_TARGET_DESCRIPTION)
export(QMAKE_TARGET_COPYRIGHT)
export(QMAKE_TARGET_PRODUCT)





HEADERS = \
    mpvwidget.h \
    ClickableMenu.h \
    Slider.h \
    ClickableMenu.h \
    mpvwidget.h \
    Slider.h \
    XunoBrowser.h \
    common/Config.h \
    common/common.h \
    common/common_export.h \
    common/Config.h \
    common/qoptions.h \
    common/ScreenSaver.h \
    EventFilter.h \
    XunoBrowser.h \
    config/ConfigDialog.h \
    config/configwebmemu.h \
    config/WebConfigPage.h \
    config/ConfigDialog.h \
    config/ConfigPageBase.h \
    config/configwebmemu.h \
    config/WebConfigPage.h \
    XunoPlayerMpv.h \
    config/MiscPage.h \
    playlist/PlayList.h \
    playlist/PlayListDelegate.h \
    playlist/PlayListItem.h \
    playlist/PlayListModel.h \
    config/VideoEQConfigPage.h \
    StatisticsView.h \
    Statistics.h \
    mpv/client.h \
    mpv/opengl_cb.h \
    mpv/qthelper.hpp \
    mpv/stream_cb.h \
    DarkStyle.h

#    playlist/PlayList.h \
#    playlist/PlayListDelegate.h \
#    playlist/PlayListItem.h \
#    playlist/PlayListModel.h \


SOURCES = main.cpp \
    mpvwidget.cpp \
    ClickableMenu.cpp \
    Slider.cpp \
    ClickableMenu.cpp \
    main.cpp \
    mpvwidget.cpp \
    Slider.cpp \
    XunoBrowser.cpp \
    common/Config.cpp \
    common/common.cpp \
    common/Config.cpp \
    common/qoptions.cpp \
    common/ScreenSaver.cpp \
    EventFilter.cpp \
    XunoBrowser.cpp \
    config/ConfigDialog.cpp \
    config/configwebmemu.cpp \
    config/WebConfigPage.cpp \
    config/ConfigDialog.cpp \
    config/ConfigPageBase.cpp \
    config/configwebmemu.cpp \
    config/WebConfigPage.cpp \
    XunoPlayerMpv.cpp \
    config/MiscPage.cpp \
    playlist/PlayList.cpp \
    playlist/PlayListDelegate.cpp \
    playlist/PlayListItem.cpp \
    playlist/PlayListModel.cpp \
    config/VideoEQConfigPage.cpp \
    StatisticsView.cpp \
    Statistics.cpp \
    DarkStyle.cpp

#    playlist/PlayList.cpp \
#    playlist/PlayListDelegate.cpp \
#    playlist/PlayListItem.cpp \
#    playlist/PlayListModel.cpp \

win32:CONFIG(release, debug|release): LIBS += -LD:/develop-tools/mpv/mpvlib/mpv-dev-x86_64-20171104-git-d46c9c2/ -llibmpv
else:win32:CONFIG(debug, debug|release): LIBS += -LD:/develop-tools/mpv/mpvlib/mpv-dev-x86_64-20171104-git-d46c9c2/ -llibmpv
else:unix:!macx: LIBS += -LD:/develop-tools/mpv/mpvlib/mpv-dev-x86_64-20171104-git-d46c9c2/ -llibmpv

INCLUDEPATH += D:/develop-tools/mpv/mpvlib/mpv-dev-x86_64-20171104-git-d46c9c2/include
DEPENDPATH += D:/develop-tools/mpv/mpvlib/mpv-dev-x86_64-20171104-git-d46c9c2/include

RESOURCES += \
    theme.qrc \
    darkstyle.qrc

FORMS += \
    config/configwebmemu.ui \
    config/configwebmemu.ui \

message("XunoPlayer-MPV DEFINES: "$$DEFINES)

DISTFILES += \
    darkstyle/icon_branch_closed.png \
    darkstyle/icon_branch_end.png \
    darkstyle/icon_branch_more.png \
    darkstyle/icon_branch_open.png \
    darkstyle/icon_checkbox_checked.png \
    darkstyle/icon_checkbox_checked_disabled.png \
    darkstyle/icon_checkbox_checked_pressed.png \
    darkstyle/icon_checkbox_indeterminate.png \
    darkstyle/icon_checkbox_indeterminate_disabled.png \
    darkstyle/icon_checkbox_indeterminate_pressed.png \
    darkstyle/icon_checkbox_unchecked.png \
    darkstyle/icon_checkbox_unchecked_disabled.png \
    darkstyle/icon_checkbox_unchecked_pressed.png \
    darkstyle/icon_close.png \
    darkstyle/icon_radiobutton_checked.png \
    darkstyle/icon_radiobutton_checked_disabled.png \
    darkstyle/icon_radiobutton_checked_pressed.png \
    darkstyle/icon_radiobutton_unchecked.png \
    darkstyle/icon_radiobutton_unchecked_disabled.png \
    darkstyle/icon_radiobutton_unchecked_pressed.png \
    darkstyle/icon_undock.png \
    darkstyle/icon_vline.png \
    images/icon_window_close.png \
    images/icon_window_maximize.png \
    images/icon_window_minimize.png \
    images/icon_window_restore.png \
    darkstyle/darkstyle.qss
