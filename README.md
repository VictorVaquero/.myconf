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

## Backup arch

When you want to migrate to another pc [Archlinux wiki](https://wiki.archlinux.org/title/migrate_installation_to_new_hardware)

```console
pacman -Qqen > pkglist.txt
pacman -Qqem > pkglist_aur.txt
```

To restore them (may need to delete some package not needed in the new system)

```console
pacman -S --needed - < pkglist.txt
```
