TEMPLATE = app
TARGET = demo1

QT -= core gui

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c

DESTDIR += $$PWD/

demo1.path = /usr/bin/
demo1.files = $$PWD/demo1

INSTALLS += demo1
