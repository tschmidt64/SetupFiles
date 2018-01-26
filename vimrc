set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'amdt/vim-niji'
" Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'jacoborus/tender.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'morhetz/gruvbox'
Plugin 'quanganhdo/grb256'
Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wincent/Command-T'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set column 80 to highlight in active split
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set colorcolumn=80
    autocmd WinLeave * set colorcolumn=0
augroup END
" Open new vertical splits on right side and horizontal splits below
set splitright
set splitbelow



let mapleader=" "
nnoremap <Leader> <C-w>

nnoremap <c-y> 5<c-y>
nnoremap <c-e> 5<c-e>
nnoremap <D-F8> :RandomColorScheme <cr>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
"
" always uses spaces instead of tab characters
set expandtab
" Backup file.x with file.x~
set backup
set backupdir=~/.backup,/tmp
" Highlight while searching
set incsearch
" Ignore case
set ignorecase
" Unless you type all caps
set smartcase

" Some settings to enable themes
set relativenumber
set number

syntax enable
if has("gui_running")
    color materialbox
    set background=dark
else
    color grb256
endif
" colorscheme badwolf
" colorscheme base16-atelierdune
" colorscheme base16-atelierlakeside
" colorscheme base16-atelierseaside
" colorscheme tender
" colorscheme oxeded
" set foldmethod=syntax
set path=$PWD/**


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_c_checkers = ['gcc']

" IndentLine Settings:
let g:indentLine_color_term = 237
let g:indentLine_char = '︙'

" CtrlP Settings:
let g:ctrlp_working_path_mode = 'a'

" NERDTree Settings:
nnoremap <leader>d :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <F7> :tabp<cr>
nnoremap <F8> :tabn<cr>
inoremap <F7> :tabp<cr>
inoremap <F8> :tabn<cr>

" Command_T Settings:
let g:CommandTMaxHeight=10
let g:CommandTTraverseSCM='pwd'
let g:CommandTMatchWindowReverse=1
let g:CommandTSmartCase=1
let g:CommandTAcceptSelectionSplitMap = '<C-x>'
let g:CommandTHighlightColor = 'IncSearch'
let g:ycm_extra_conf_globlist = ['~/.ycm_extra_conf.py']

if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap = ['<ESC>', '<C-c>']
endif
" set mouse=a
" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>

let g:jsx_ext_required = 0

" SLIMV settings
let g:lisp_rainbow=1 " rainbow parens
let g:slimv_leader = ','
let g:paredit_leader = ','

" Prolog Settings
let g:filetype_pl="prolog"

" Font settings
if has('gui_running')
    set macligatures
    " set guifont=Monoid\ Retina:h12
    set guifont=Hasklug\ Nerd\ Font\ Complete\ Mono:h14
endif

" Airline (Powerline) Settings
" (see: https://github.com/ryanoasis/powerline-extra-symbols)
let g:airline_theme="simple"
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0BC"
let g:airline_right_sep = "\uE0BA"
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

" Jedi Vim Autocomplete Settings
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = ""
let g:jedi#use_splits_not_buffers = "right"

"Supertab Settings
let g:SuperTabDefaultCompletionType = "<c-n>"
