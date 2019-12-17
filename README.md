# My dot files

## Basic setup

```console
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```


## Replicate

```console
git clone --separate-git-dir=~/.myconf /path/to/repo ~

```
        

## Un-empty Home
```console
git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
rm -r ~/myconf-tmp/
```
