let mapleader = ","

if !1 | finish | endif

" ==================
" PLUGIN MANAGEMENT
" ==================
"------------------------------------
" Install Vim Plug if not installed
"------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
"------------------------------------
"------------------------------------
" Make bindings and documentation
"------------------------------------
call plug#begin('~/.config/nvim/autoload/plugged')

" Solarized colorscheme
Plug 'vim-scripts/L9'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'seebi/dircolors-solarized',{'do': 'mkdir -p ~/.dir_colors && cp dircolors.256dark $HOME/.dir_colors/'}

" Directory structure
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Status line
Plug 'vim-airline/vim-airline'

" Tags display
Plug 'majutsushi/tagbar'

" Generating tags file automatically
Plug 'ludovicchabant/vim-gutentags'

" Git repository management
Plug 'tpope/vim-fugitive'

" Surround
Plug 'tpope/vim-surround'

" Line commenter
Plug 'vim-scripts/tComment'

"Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'
Plug 'filipekiss/ncm2-look.vim'
Plug 'yuki-ycino/ncm2-dictionary'
Plug 'fgrsnau/ncm2-aspell'
Plug 'fgrsnau/ncm2-otherbuf'

" Use tab for completion
Plug 'ervandew/supertab'

" Miscelaneous vim functions
Plug 'xolox/vim-misc'

" Automatic close of quotes, paranthesis, brackets etc.
Plug 'jiangmiao/auto-pairs'

" Snippet solution for vim
Plug 'SirVer/ultisnips'

" Snippet files for various languages
Plug 'honza/vim-snippets'

" Navitgation between tmux and vim
Plug 'christoomey/vim-tmux-navigator'

" Quick find based on the letter
Plug 'Lokaltog/vim-easymotion'

" Fuzzy finder for vim
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" Echo documentation
Plug 'Shougo/echodoc.vim'

" Code formatting
Plug 'sbdchd/neoformat'

" Virtualenv wrapper for python
Plug 'jmcantrell/vim-virtualenv'

" Yank highlighter
Plug 'machakann/vim-highlightedyank'
call plug#end()


" ----------
" Solarized colorscheme
" ----------
set termguicolors
set background=dark
colorscheme solarized
" ----------


" ----------
" NERDTree
" ----------
" Let quit work as expected if after entering :q the only window left open is NERD Tree itself
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show file path from the home directory in the status line
let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" ignore files
let NERDTreeIgnore=['\.swp$', '\.pyc$', '^__pycache__$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="left"
let NERDTreeShowFiles=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=45

" Open nerd tree and move cursor to the file position
autocmd VimEnter * NERDTree | wincmd p

" Find current file in the nerd tree
nmap <leader>nf :NERDTreeFind<CR>

" Toggle nerd tree
nnoremap <silent> <leader>nt :NERDTreeToggle<CR><C-W>l
" ----------

" ----------
" tagbar
" ----------
autocmd VimEnter * TagbarOpen | wincmd p
let g:tagbar_autoclose=0
" ----------

" ----------
" vim-airline
" ----------
set noshowmode
" ----------

" ----------
" tComment
" ----------
vnoremap <leader>c :TCommentMaybeInline<CR>
nnoremap <leader>c :TComment<CR>
" ----------

" Relax compatibility
set nocompatible

" Disable beep/flash
set vb t_vb=

" Set numbering
set nu

" filetype recognition
filetype on
filetype plugin on
filetype indent on
" set shiftwidth=4
set shiftwidth=2

" sourcing nvim config on save
autocmd! BufWritePost /home/luka/.config/nvim/init.vim source %

" ----------

" ----------
" ultisnips
" ----------
set runtimepath+=~/.config/nvim
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDir=$HOME.'/.config/nvim/UltiSnips'
let g:UltiSnipsPythonVersion=3
let g:UltiSnipsJumpForwardTrigger="<leader>a"
let g:UltiSnipsJumpBackwardTrigger="<leader>b"
let g:UltiSnipsExpandTrigger="<leader>e"
" ----------


" ----------
" gutentags
" ----------
set statusline+=%{gutentags#statusline()}
let g:gutentags_exclude_filetypes=['yml', 'yaml',  'html', 'json']
let g:gutentags_ctags_exclude=['*.yml', '*yaml', '*.html', '*.json']
let g:gutentags_file_list_command={
      \ "markers": {
        \  '.git': 'git ls-files',
        \},
\}
" ----------

" ----------
" easymotion
" ----------
map <leader>j <Plug>(easymotion-f)
map <leader>J <Plug>(easymotion-F)
" ----------

" ----------
" ncm2
" ----------
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect,preview
set shortmess+=c
let g:ncm2#matcher="substrfuzzy"
" ----------

" ----------
" supertab
" ----------
let g:SuperTabMappingForward= '<s-tab>'
let g:SuperTabMappingBackward= '<tab>'
" ----------

" ----------
"  FZF
" ----------
nnoremap <silent> <leader>L :Lines<cr>
nnoremap <silent> <leader>F :Files<cr>
nnoremap <silent> <leader>G :GFiles<cr>
" ----------

" ----------
"  echodoc
" ----------
" set noshowmode
set cmdheight=2
let g:echodoc_enable_at_startup=1
" ----------

" ----------
"  neoformat
" ----------
let g:neoformat_enabled_python = ['yapf']
" noremap <silent> <leader>p :Neoformat<cr>

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" ----------

set backspace=2
set hlsearch

" Visual aids
set cul
set list
set lcs=tab:> ,eol:ר,trail:-
set expandtab
set tabstop=4

" Unmap the arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
vno <down> <Nop>
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>

" Coursor line centering
set nostartofline

" Save and quit command remapping
nnoremap <C-s> :wa<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-Q> :q!<cr>
inoremap <C-s> <ESC>:w<CR>
inoremap <C-q> <ESC>:q<CR>
inoremap <C-Q> <ESC>:q<CR>

" Highlight turn off after search
nnoremap <leader><esc> :noh<return><esc>

" Center lines
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=(winheight(win_getid())/2 + 1)
augroup END

" Buffer navigation
nnoremap <C-b> :bnext<CR>
nnoremap <C-B> :bNext<CR>

" Goto definition
nnoremap <leader>g <C-]>
nnoremap <leader>b <C-o>

" Remove trailing whitespaces
autocmd BufWritePre *.py %s/\s\+$//e

" quickfix window
nmap <leader>q :bel cw<CR>
nmap <leader>en :cn<CR>
nmap <leader>ep :cp<CR>

" Preview window config: down and close on exit
set splitbelow
autocmd InsertLeave * if pumvisible() == 0| pclose|endif

" Scrolling speedup
set nocursorline

" Shifting visual block of texts
vnoremap > >gv
vnoremap < <gv

" Healthcheck
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
