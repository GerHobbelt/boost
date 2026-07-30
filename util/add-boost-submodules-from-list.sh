#! /bin/bash

cd ..

while read p ; do
  p=$( echo "$p" | tr -d ' \r\n' )
  if [ -n "$p" ] ; then
    #echo "SUBREPO: [$p]"
    if { grep -A 3 "submodule \"$p\"" .gitmodules > /dev/null ; } ; then
      #echo "--- PRESENT: [$p]"
      true
    else
      # subrepo is not yet present in our list...
      if { grep -w "$p" ./util/boost-utility-repo-list.lst > /dev/null ; } ; then
        echo "+++ ADD UTILITY/TOOL SUBREPO: [$p]"
        cat >> .gitmodules    <<EOT

[submodule "$p"]
	path = tools/$p
	url = https://github.com/boostorg/$p.git
	fetchRecurseSubmodules = on-demand
	branch = .

EOT
      else
        echo "+++ ADD LIB SUBREPO: [$p]"
        cat >> .gitmodules    <<EOT

[submodule "$p"]
	path = libs/$p
	url = https://github.com/boostorg/$p.git
	fetchRecurseSubmodules = on-demand
	branch = .

EOT
      fi
    fi
  fi

done < ./util/boost-repo-list.lst
