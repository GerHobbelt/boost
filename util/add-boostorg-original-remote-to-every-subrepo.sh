#! /bin/bash
#
# Making sure every subrepo has a boost-original remote added to it at least, so our merge tooling will pick up changes from the mainline master branches.
#

if [ -z "$1" ] ; then
	echo EMPTY
	cat .gitmodules | sed -E -e 's#/GerHobbelt/#/boostorg/#g' | grep -E -e 'url =|path =' |  sed -E -e '$!N;s/\n/    /' -e 's/[\t ]+/ /g'  | cut -d ' ' -f 4,7 | xargs -L 1 "$0" 
else
	echo "LINE: $*"
	cd "$1"
	pwd
	if { git remote -v | grep 'boost-original' ; } ; then
		echo "boost-original git remote already present... SKIPPING!"
	else
		echo ">>> MUST-ADD-ORIGINAL:"
		git remote add boost-original   "$2"
	fi
fi
