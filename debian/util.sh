#!/bin/bash

if [ $# -eq 1 ]; then
	CHANGELOG=/tmp/changelog.tmp.$$

	cat >> $CHANGELOG << EOF
libpng1.6 (1.6.10-$1) stable; urgency=low

  * AutoBuild Revision Update

 -- FreeSWITCH Autobuild <autobuild@freeswitch.org> `date -R`

EOF
	cat debian/changelog >> $CHANGELOG
	cp $CHANGELOG debian/changelog
	rm $CHANGELOG

fi

git-buildpackage --git-upstream-tree=origin/master -us -uc -sa --git-ignore-new
