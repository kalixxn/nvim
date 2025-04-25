First you need to install g++, python, node for plugins to work

Ubuntu:
```sh
sudo apt update && sudo apt upgrade -y && sudo apt install -y g++ nodejs npm python3 python3-pip git neovim unzip
```

Arch:
```sh
sudo pacman -Syu --noconfirm && sudo pacman -S --noconfirm gcc nodejs npm python-pip git unzip neovim
```

then install packer

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Then nvim into [cloned dir]/lua/kali/packer.lua
and run these in order:
```
:so
:PackerSync
```

Restart neovim. Wait for everything to install. Enjoy.
