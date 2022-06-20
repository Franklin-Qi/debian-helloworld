#!/usr/bin/env bash
# -* - coding: UTF-8 -* -


# delete current diretory Makefile files
if [ -e "Makefile" ]; then
    make clean; rm -f Makefile
fi

if [ -e "demo1" ]; then
    rm -f demo1
fi

# delete debian/ files
del1="debian/tmp"
del2="debian/demo1"

if [ -d "${del1}" ]; then
    rm -rf debian/tmp
fi

if [ -d "${del2}" ]; then
    rm -rf debian/demo1
fi


# delete deb info files
deblist=`ls ../demo1_1.0.0* ../demo1-dbgsym*`
for file in ${deblist}
do
    rm -f ${file}
done

