#!/bin/bash
all=$(ls)
REPO="master"

echo ${#}


if [ ${#} -gt 0 ] ; then
	REPO=${1}
fi

for i in $all ; do
	if [ -d $i/.git ] ; then
		cd $i && git clean -f && git stash && git pull && git checkout ${REPO} && git pull --ff && cd .. ;
	fi
done
for i in $all ; do
    if [ -d "$i/.git" ] ; then
        echo "updating $i ..."
	cd $i && git clean -f && git stash && git pull && git checkout ${REPO} && git pull --ff && cd .. ;
    elif [ "$i" == "framework" ] ; then
        echo "handling framework ..."
        cd "$i" && sub=$(ls) && cd .. ;
        for j in $sub ; do
            if [ -d "$i/$j/.git" ] ; then
                echo "update $j ..."
                cd "$i/$j" git clean -f && git stash && git pull && git checkout ${REPO} && git pull --ff && cd - ;
            fi
        done
    fi
done
