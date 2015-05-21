#/bin/bash
ORIGDIR=`pwd`
cd ..
(mkdir -p rpmbuild && cd rpmbuild && mkdir -p SOURCES BUILD BUILDROOT i386 x86_64 SPECS)

cp ${ORIGDIR}/redhat/*.spec rpmbuild/SPECS/.
cp ${ORIGDIR}/redhat/*.patch rpmbuild/SOURCES/.
cp ${ORIGDIR}/pngusr.dfa rpmbuild/SOURCES/.
cp ${ORIGDIR}/*.gz rpmbuild/SOURCES/.

rpmbuild --define "_topdir %(pwd)/rpmbuild" \
  --define "_rpmdir %{_topdir}" \
  --define "_srcrpmdir %{_topdir}" \
  -ba rpmbuild/SPECS/libpng16.spec
