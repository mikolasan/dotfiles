# mikolasan's dotfiles

![Demo tmux, fuzzy search, vim theme and ranger file manager](screenshot_1.png)

## How to

Get your new system ready

**Ubuntu**
```
sudo apt-get install --assume-yes git curl
```

**openSUSE**
```
sudo zypper install --no-confirm git curl
```

**Arch**
```
sudo pacman -S --noconfirm git curl
```

Clone the repository and init submodules

```
git clone https://github.com/mikolasan/dotfiles.git ~/dotfiles
cd ~/dotfiles
git submodule update --init
```

I'm using [Bonclay](https://github.com/talal/bonclay) to restore/backup dotfiles.
The simplest way to install Bonclay on Linux is to run

```
sudo ~/dotfiles/get-bonclay.sh
```

Then create symlinks

```
bonclay sync bonclay.conf.yaml
```

And follow commands from `install-<DISTRO>.sh` or run them all at once

## Windows

- **Alacritty**: copy `Windows\alacritty.yml` to `%APPDATA%\alacritty\alacritty.yml`
- **Git**: copy `Windows\git-prompt.sh` to `C:\Program Files\Git\etc\profile.d\git-prompt.sh`
- **VS Code**: copy `Windows\settings.json` to `C:\Users\neupo\AppData\Roaming\Code\User\settings.json`
