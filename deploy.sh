#!/usr/bin/env bash
cd ./librarywithsherlock/
mvn -Phome -DaltDeploymentRepository=snapshot-repo::default::file:/Users/googolmo/project/lib/rep/snapshots clean deploy
cd /Users/googolmo/project/lib/rep/
git status
git add .
git commit -a -m'update slidingmenu'
git push origin master
