#!/usr/bin/env bash
# -* - coding: UTF-8 -* -


# delete current diretory Makefile files
if [ -e "Makefile" ]; then
    make clean; rm -f Makefile
fi

if [ -e "demo3" ]; then
    rm -f demo3
fi

# delete debian/ files
del1="debian/tmp"
del2="debian/demo3"

if [ -d "${del1}" ]; then
    rm -rf debian/tmp
fi

if [ -d "${del2}" ]; then
    rm -rf debian/demo3
fi


# delete deb info files
deblist=`ls ../demo3_1.0.0* ../demo3-lib_1.0.0*  ../demo3-dbgsym* ../demo3-lib-dbgsym*`
for file in ${deblist}
do
    #echo ${file}
    rm -f ${file}
done

