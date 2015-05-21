#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=libpng.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a libpng ${TMPDIR}/libpng16-1.6.16
cd ${TMPDIR}
rm -rf libpng16-1.6.16/.git*
tar zcvf libpng16-1.6.16.tar.gz libpng16-1.6.16
mv libpng16-1.6.16.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
