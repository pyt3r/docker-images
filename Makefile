
git-merge: # if your changes are in develop...
	git checkout develop
	git pull
	git merge origin/master
	git push origin develop
