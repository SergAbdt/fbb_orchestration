# Introduction Sequence
# 1
git commit
# 2
git checkout -b bugFix
# 3
git checkout -b bugFix; git commit; git checkout main; git commit; git merge bugFix 
# 4
git checkout -b bugFix; git commit; git checkout main; git commit; git checkout bugFix; git rebase main
git commit; git checkout main^; git checkout -b bugFix; git commit; git rebase main


# Ramping Up
# 1
git checkout C4
# 2
git checkout HEAD^
# 3
git branch -f main C6; git branch -f bugFix HEAD~2; git checkout HEAD^
# 4
git reset HEAD^; git checkout pushed; git revert HEAD


# Moving and Staging Work
# 1
git cherry-pick C3 C4 C7
# 2
git rebase -i HEAD~4
# 3
git add app.js; git commit; git add styles.css; git commit
# 4
git restore --staged secret.env; git restore experiment.js; git commit


# A Mixed Bag
# 1
git checkout main; git cherry-pick bugFix
# 2
git rebase -i HEAD~2; git commit --amend; git rebase -i HEAD~2; git branch -f main caption
# 3
git checkout main; git cherry-pick newImage; git commit --amend; git cherry-pick caption
# 4
git tag v0 side~2; git tag v1 side~1; git checkout v1
# 5
git commit


# Advanced Topics
# 1
git rebase main bugFix; git rebase bugFix side; git rebase side another; git branch -f main another
# 2
git branch bugWork HEAD~^2~
# 3
git branch -f three main~3; git checkout one; git cherry-pick main~ main~2 main~3; git checkout two; git cherry-pick main one~2 one~ one


# Push & Pull -- Git Remotes!
# 1
git clone
# 2
git commit; git checkout o/main; git commit
# 3
git fetch
# 4
git pull
# 5
git clone; git fakeTeamwork 2; git commit; git pull
# 6
git commit; git commit; git push
# 7
git clone; git fakeTeamwork 1; git commit; git pull --rebase; git push
# 8
git checkout -b feature; git branch -f main main^; git push


# To Origin And Beyond -- Advanced Git Remotes!
# 1
git fetch; git rebase o/main side1; git rebase side1 side2; git rebase side2 side3; git checkout -B main side3; git push
# 2
git fetch; git checkout -B main side1; git merge o/main; git merge side2; git merge side3; git push
# 3
git checkout -b side o/main; git commit; git pull --rebase; git push
# 4
git push origin main; git push origin foo
# 5
git push origin foo:main; git push origin main^:foo
# 6
git fetch origin C6:main; git fetch origin C3:foo; git checkout foo; git merge main
# 7
git push origin :foo; git fetch origin :bar
# 8
git pull origin C3:foo; git pull origin C2:side
