Git clone, add, commit, pull, push
-------------
```
git clone https://.....git
git clone -b <branchname> https://.....git
git status -s
git add README.md | git add lib/* log/* | git add .
git status -s commit -m "updated readme"
git pull origin master
git push origin master | git push https://.....git master

/** remove after git add **/
git add README.md | git add lib/* log/* | git add .
git rm -rf README.rdoc 
```

Git Branch
-------------
```
git branch -a  /** To see the available branches **/
git pull origin <branch-name>  /** to pull from specific branch **/
git checkout <local-branch-name>  /** to switch to another branch **/
git checkout -b <local-branch-name> origin/<remote-branch-name>  /** to create a local branch **/
git checkout config/locales/*.yml  /** revert changes **/
git clone -b <branch-name> https://github.....  /** clone from specific branch **/
git fetch --all  /** Unhide the hidden branch **/

/** alternate method to create a local branch **/
git branch <your_new_branch_to_be_created>
git checkout <your_new_branch_to_be_created>

/** to revert **/
git checkout app/scss/precompiles/application/_base.scss
git checkout config/routes.rb
git checkout config/routes.txt
```

Git delete
-------------
```
git branch
git branch -D <local_branch_name>
git push origin --delete <remote_branch_name>
git branch -a
```

Git restore branch in local as in remote
-------------
```
git fetch origin
git reset --hard
git reset --hard origin/<branch name>
```

Git Difference
-------------
```
git differ <filename>
git mergetool -t gvimdiff
git diff <yourfile.txt>

/** after git add **/
git diff --cached <yourfile.txt>

/** normal merge conflict for **/
git config --global mergetool.[tool].trustExitCode true
```

Git logs
-------------
```
git diff --stat
git log --author="prashanth-sams" --stat
git log --numstat --pretty="%H" --author="prashanth-sams"
git log --author="prashanth-sams" --oneline --shortstat
```

Git squash
-------------
```
git log
git rebase -i HEAD~9
git log
git pull --rebase origin master
git rebase --continue
git push -f origin api_refactor
```

Git revert
-------------
```
git log
git reset --hard a4f11aab1ac9d79088fa8e80b995ad746881b61f
```

Git fork
-------------
```
git remote -v
git remote add my-fork git@github.com:username/repo.git
```

Git rename origin
-------------
```
git remote rename origin upstream
git remote -v
```

Set url
-------------
```
git remote set-url my-fork https://github.com/<repo>.git
```

Edit local username
-------------
```
vi ~/.gitconfig

$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com

[user]
        name = name
        email = name@gmail.com
```

Git flow
-------------
```
git fetch upstream master
git rebase upstream/master

`after fixing conflicts`
git rebase --continue
```

Create new branch after creating a PR in upstream
-------------
```
git fetch upstream master
git checkout -b newbranchname upstream/master
```
