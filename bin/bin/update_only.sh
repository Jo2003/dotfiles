#!/bin/bash
all=$(ls)
echo ${#}

for i in $all ; do
    if [ -d "$i/.git" ] ; then
	echo "updating $i ..."
	cd "$i" && git pull --ff && cd .. ;
    elif [ "$i" == "framework" ] ; then
	echo "handling framework ..."
	cd "$i" && sub=$(ls) && cd .. ;
	for j in $sub ; do
	    if [ -d "$i/$j/.git" ] ; then
		echo "update $j ..."
		cd "$i/$j" && git pull --ff && cd - ;
	    fi
	done
    fi
done
rm -rf .ivy2/cache

