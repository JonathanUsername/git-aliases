# git-aliases

Some git aliases I use. 

Made for mac, so might need tweaking (eg. the sed flags) for Linux machines.

## git-pr
Opens the relevant PR for my current branch.

Installation:
```
sudo ln -s $(pwd)/git-pr.sh /usr/local/bin/git-pr
git config --global alias.pr '!git-pr'
```

Requirements:
- jq https://github.com/stedolan/jq
- a ~/secrets.json file with your github api token replacing `MYTOKEN`:
```
{"token": "MYTOKEN"}
```


## git-repo
Opens the github repo page of my current directory.

Installation:
```
sudo ln -s $(pwd)/git-repo.sh /usr/local/bin/git-repo
git config --global alias.repo '!git-repo'
```

### TODO:
- add http to the repo regex
