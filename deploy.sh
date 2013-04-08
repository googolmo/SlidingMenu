#!/usr/bin/env bash
mvn -Phome -DaltDeploymentRepository=snapshot-repo::default::file:/Volumes/HDD/project/lib/rep/snapshots clean deploy
cd /Volumes/HDD/project/lib/rep/
rm -rvf ./snapshots/com/mo/slidingmenu/example/
git status
git add .
git commit -a -m'update slidingmenu'
git push origin master
