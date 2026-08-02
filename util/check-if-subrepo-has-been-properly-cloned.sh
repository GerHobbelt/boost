#! /bin/bash
#
# Expected to be executed as `gpp -x` argument, f.e.:
#
#      gpp -x  $( pwd )/util/check-if-subrepo-has-been-properly-cloned.sh
#
# Checks if we did any work at all in the given subrepo (i.e. tracking head commit under my name) and then
# barf a hairball when we haven't cloned/forked the subrepo yet: we MUST do that in order to be able
# to push our commits to remote!
#

BASEDIR=$( dirname "$0" )

if test "$( git log -1 --format="%an" )" == "Ger Hobbelt" ; then
	echo "Work has been done... Checking if we are the owner of this clone/fork..."
	ID=$( basename $( pwd ) )
	echo "BASENAME = $ID"
	if grep -w $ID   $BASEDIR/../.gitmodules ; then
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!! OK !!!!!!!!!!!!!!!!!!!!!!!!"
	else
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@ MUST CLONE: $ID"
		echo "$ID"       >> $BASEDIR/../MUST-FORK-THESE-SUBMODULES.lst
	fi
else
	echo "Nothing happened here... Moving on..."
fi
