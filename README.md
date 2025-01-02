# INSTALL NEOVIM
Dont use apt!!!

Download image from:
    https://github.com/neovim/neovim/releases/tag/v0.10.3

Or run:
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

Extract (without fuse)
./nvim.appimage --appimage-extract
./squashfs-root/usr/bin/nvim

Exposing nvim globally
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim


# NVIM CONFIG (deprecated, now using nvchad)

Ubicar este archivo en:
    ~/.config/nvim/init.vim

Si la carpeta no esta creada crearla y nvim debería reconocer el archivo automáticamente.

:scriptnames dentro de vim muestra todos los scripts que ejecuta nvim
    por alguna razón nvim lee el archivo de configuracion sin estar establecida ninguna variable de entorno


# TMUX CONFIG

Configuracion util

set -g status-bg blue 
set -g set-clipboard on
set -g mouse on


Tmux config file location:
/etc/.tmux.conf
~/.tmux.conf // los logs quedan en el home, medio choto

Check if tmux is reading conf file
tmux show-options -g
tmux show -g <some_option>

FALTA
 instalar tmux-yank
 instalar tpm

# Install NvChad

## INSTALL NERD FONT (required for nvchad)
run install_jbm.sh

## REMOVE OLD FILES
run rm_vim_data.sh

## INSTALL NvCHAd
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

get font working
