# NVIM CONFIG

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

# INSTALL NERD FONT (required for nvchad)
just run install_jbm.sh
