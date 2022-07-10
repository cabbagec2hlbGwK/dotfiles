syntax enable
set number
set relativenumber
"plugin section ----------------------------------------

call plug#begin('~/.config/nvim/plugged')
source $HOME/.config/nvim/plugin_config/pluginslist.vim
call plug#end()

source  $HOME/.config/nvim/visuals/looks.vim "Looks related configs 
source  $HOME/.config/nvim/plugin_config/coc.vim
