call plug#begin()

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Jedi
  "Plug 'davidhalter/jedi-vim'
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "Plug 'zchee/deoplete-jedi'
  

  Plug 'tpope/vim-surround'

  " Ale
  Plug 'dense-analysis/ale'

  " Language specifics
  Plug 'pearofducks/ansible-vim'

  " Nerdcommenter
  Plug 'preservim/nerdcommenter'

  "Plug 'sbdchd/neoformat'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Style
  Plug 'ryanoasis/vim-devicons'
  Plug 'morhetz/gruvbox'

  Plug 'mbbill/undotree'
  Plug 'dkarter/bullets.vim'
  Plug 'terryma/vim-multiple-cursors'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Markdown
  Plug 'mzlogin/vim-markdown-toc'

  " Sippets
  Plug 'SirVer/ultisnips'

  " Easymotion
  Plug 'easymotion/vim-easymotion'

  " auto-align
  Plug 'godlygeek/tabular'
call plug#end()

filetype plugin indent on

"enable deoplete on startup
let g:deoplete#enable_at_startup = 1

"autocomplete tweaks
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"airline theme
let g:airline_theme='wombat' " <theme> is a valid theme name

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

set shell=/bin/bash

set backspace=2   "   
set nocompatible  " use vim settings instead of vi
set modeline        " allow comments at the end of files to set vim variables
set number      " show line numbers
set showcmd     " show command in the last line of the screen
set wildmenu        " command-line completion in enhanced mode
set wildchar=<Tab>  " key for completion
set showmatch       " jump to the matching word
set incsearch       " while tipping the search, show where the pattern matches
set hlsearch    " highligth search

set laststatus=2  " Always display the status line


let mapleader=" "

set tabstop=2           " width of a tab character
set softtabstop=2       " tab will create (and backspace removes) that many spaces
set expandtab           " spaces not tabs 
set shiftwidth=2        " spaces for tab
set smarttab            "

map <F2> :set paste<CR>i                " key to insert mode with paste using F2 key
map <leader>n :NERDTreeToggle<CR>       " open/close nerdtree
au InsertLeave * set nopaste

set background=dark " or light
colorscheme gruvbox

" screen split {{{
set splitbelow
set splitright
" move between windows with ctrl+key
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <F5> :UndotreeToggle<CR>

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]


" ALE
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
" only for defined filetype (see directory ftplugin)
let g:ale_linters_explicit = 1

"" Fixers: :ALEFix
let g:ale_fixers = {
\   '*':    ['remove_trailing_lines', 'trim_whitespace'],
\   'yaml': ['prettier', 'remove_trailing_lines', 'trim_whitespace', 'yamlfix' ],  
\   'yaml.ansible': ['prettier', 'remove_trailing_lines', 'trim_whitespace', 'yamlfix' ],  
\}

" Ansible Vim
" If file ends with .pb or starts with pb it is a yaml.ansible file
au BufRead,BufNewFile *.pb set filetype=yaml.ansible
au BufRead,BufNewFile pb-* set filetype=yaml.ansible

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 0
nnoremap <F6> :GitGutterLineHighlightsToggle<CR>

 if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_powerline_fonts = 1

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'
    " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''    
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty='⚡'

  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'

