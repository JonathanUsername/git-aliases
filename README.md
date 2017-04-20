# git-aliases

## git-pr
alias for opening the relevant PR for my current branch

```
sudo ln -s ~/src/github.com/JonathanUsername/git-aliases/git-pr.sh /usr/local/bin/git-pr
git config --global alias.pr '!git-pr'
```


## git-repo
alias for opening the github repo page of my current directory
```
sudo ln -s ~/src/github.com/JonathanUsername/git-aliases/git-repo.sh /usr/local/bin/git-repo
git config --global alias.repo '!git-repo'
```

### TODO:
- add http to the repo regex
