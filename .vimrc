" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" afer adding plugin:
" 	source file: ':source %'
" 	install plugins: ':PlugInstall'	

Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
"	usage: ':w and :PlantumlOpen'
"	:PlantumlSave diagram.png"

" Initialize plugin system
call plug#end()


" Diable error bell
set visualbell

" Allow scrolling
set mouse=a

" Show line numbers
set number

" Enable syntax coloring
syntax on

" Remap hjlk movement keys
noremap ; l
noremap l j
noremap j h

" Set colors for vimdiff

if &diff
    colorscheme vimdiffcolors
endif
