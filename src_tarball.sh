#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=libpng.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a liblibpng ${TMPDIR}/libpng-1.6.10
cd ${TMPDIR}
rm -rf libpng-1.6.10/.git*
tar zcvf libpng-1.6.10.tar.gz libpng-1.6.10
mv libpng-1.6.10.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
