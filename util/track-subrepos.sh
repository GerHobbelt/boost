#! /bin/bash
#
# track the 'original' remotes of each submodule and auto-merge whenever possible, in order to keep up to date with the original "vanilla" repo of each.
#

GPP=/z/tools/git_pull_push.sh
SCRIPT=$( basename "$0" )

if [ "$1" != "TRACK-AND-MERGE" ] ; then
	${GPP} -x "$( realpath "$0" )" TRACK-AND-MERGE
else
	echo "PWD = $( pwd )"
	if [ -f ${SCRIPT} ] ; then
		echo "Skipping base directory..."
	else
		git checkout main
		git checkout master
		git pull
		git reset --hard
		git checkout develop
		if [ `git rev-parse --verify develop 2>/dev/null` ] ; then
			git branch --set-upstream-to=origin/develop develop
			git pull
			git reset --hard
			/z/tools/merge_tracked_git_original_4_branch.sh -m
		fi
		git reset --hard
		git checkout main
		git checkout master
		${GPP} -p
		git reset --hard
		/z/tools/merge_tracked_git_original_4_branch.sh -m
		git reset --hard
	fi
fi
