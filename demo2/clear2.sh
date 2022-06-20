#!/usr/bin/env bash
# -* - coding: UTF-8 -* -


# delete current diretory Makefile files
if [ -e "Makefile" ]; then
    make clean; rm -f Makefile
fi

if [ -e "demo2" ]; then
    rm -f demo2
fi

# delete debian/ files
del1="debian/tmp"
del2="debian/demo2"

if [ -d "${del1}" ]; then
    rm -rf debian/tmp
fi

if [ -d "${del2}" ]; then
    rm -rf debian/demo2
fi


# delete deb info files
deblist=`ls ../demo2_1.0.0* ../demo2-doc_1.0.0*  ../demo2-dbgsym*`
for file in ${deblist}
do
    rm -f ${file}
done

