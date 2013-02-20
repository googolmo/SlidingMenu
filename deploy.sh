#!/usr/bin/env bash
mvn -Phome -DaltDeploymentRepository=snapshot-repo::default::file:/Users/googolmo/project/lib/rep/snapshots clean deploy
cd /Users/googolmo/project/lib/rep/
rm -rvf /Users/googolmo/project/lib/rep/snapshots/com/slidingmenu/example/
git status
git add .
git commit -a -m'update slidingmenu'
git push origin master
