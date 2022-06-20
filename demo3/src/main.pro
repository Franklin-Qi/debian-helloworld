TEMPLATE = app
TARGET = demo3

QT -= gui core

CONFIG +=

# INCLUDEPATH += \

# LIBS += \
#     -ldemo3-lib

SOURCES += \
    $$PWD/main.c \
    ../library/demo3-lib.cpp \
    ../library/demo3-lib.h

DESTDIR = $$PWD/

demo3.path = /usr/bin/
demo3.files = $$PWD/demo3

INSTALLS += demo3
