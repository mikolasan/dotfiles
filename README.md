# mikolasan's dotfiles

## Prepare tools

Clone repository and init submodules

```
git clone git@github.com:mikolasan/dotfiles.git ~/dotfiles
cd ~/dotfiles
git submodule update --init
```

I'm using [Bonclay](https://github.com/talal/bonclay) to restore/backup dotfiles.
The simplest way to install Bonclay on Linux is to run:

```
sudo -s
sh -c "$(curl -sL git.io/getbonclay)"
```

## Additional system packages

TODO

### Ubuntu 18.04

### Arch


## Set my dotfiles

Then just do:

```
bonclay sync bonclay.conf.yaml
```
