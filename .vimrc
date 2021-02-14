" .vimrc file
" Maintainer: idling-mind

"{{{ Plugin Settings -----------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-repeat'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'idling-mind/vim-color-subtle'
Plugin 'idling-mind/vim-ansys-syntax'
Plugin 'tpope/vim-commentary'
Plugin 'joshdick/onedark.vim'
Plugin 'lrvick/Conque-Shell'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" lightline settings
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"}}} ---------------------------------------------------------------------
"
"{{{ Set commands --------------------------------------------------------
" Disabling compatibility with Vi
set nocompatible
" Enablilng mouse in all modes
set mouse=a

" Enable syntax highlighting
syntax on

" Highlight searches 
set hlsearch 

" Set the title of the console to the name of the file being edited
set title

" Show tab and space characters
set list
set listchars=tab:?\ ,eol:¬

" Automatical indentation
set smartindent

" Convert tabs to 4 spaces 
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" Status line
    set laststatus=2
    set statusline=
    "set statusline+=%-3.3n\                      " buffer number
    set statusline+=%t\                          " filename
    set statusline+=%h%m%r%w                     " status flags
    set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
    set statusline+=%=                           " right align remainder
    "set statusline+=0x%-8B                       " character value
    set statusline+=%-14(%l,%c%V%)               " line, character
    set statusline+=%<%P                         " file position
" Tab label
    set guitablabel=%t

" Show line number, cursor position
set ruler
 
" Ignore case and also, use smartcase (use case sensitive search when caps)
set ignorecase
set smartcase
 
" Display incolmplete commands
set showcmd

" Search as you type
set incsearch

" Dont move the cursor to start of the line
set nostartofline
" Error bells are displayed visually
set visualbell

" Turn on line numbers
set number
set nowrap

" Show matching brackets
set showmatch

" Setting filetype plugin on such that omni complete can work
filetype plugin on

set cursorline
set cursorcolumn

if has('gui_running')
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set guifont=Monospace\ 12
else
    set t_Co=256 
endif

colors subtle
" colors onedark
"}}} ---------------------------------------------------------------------
"
"{{{ Keyboard Mappings ---------------------------------------------------
"
" Keyboard Mappings
    " Leader key set to comma
    let g:mapleader=','
    " Map double escape to remove highlighting - Press in quick succession
    nnoremap <Esc><Esc> :nohlsearch<CR> 
    " Mapping to change the current directory to the current file's path
    nnoremap <Leader>cd :lcd %:p:h<CR>:pwd<CR>
    " Mapping to show the syntax highlighting of the current color theme
    nnoremap <Leader>cprint :so /usr/share/vim/vim70/syntax/hitest.vim<CR>
    " Mapping to run a script from a register
    " Type in the name of the register at the end and press enter
    nnoremap <Leader>r :silent! @"
    " Mapping to open put current date/time
    nnoremap  <Leader>d "=strftime("%c")<CR>P
    " Mapping to open NERDTree
    nnoremap <Leader>e :NERDTreeToggle<CR>
    " Mapping to open vimrc
    nnoremap <Leader>vrc :e ~/.vimrc<CR>
    " Toggling mouse
    nnoremap <Leader>m :set mouse=<CR>
    nnoremap <Leader>ma :set mouse=a<CR>
    " Mapping to open new tab
    nnoremap <Leader>t :tabnew<CR>
    " Mapping to put current name
    nnoremap <Leader>f i<C-R>=expand("%p:t")<CR><Esc>
    nnoremap <Leader>p i<C-R>=expand("%p")<CR><Esc>
    " Mapping to delete the buffer
    nnoremap <Leader>bd :bd!
    " Mapping to set file type as apdl
    nnoremap <Leader>an :set ft=apdl<CR>
    " Mapping for scrolling window up or down
    nnoremap - <C-e>
    nnoremap + <C-y>
    " Mapping to more around in windows
    nnoremap <C-h> <C-w><C-h> 
    nnoremap <C-j> <C-w><C-j> 
    nnoremap <C-k> <C-w><C-k> 
    nnoremap <C-l> <C-w><C-l> 

    " Visual Mode mappings
    " Surround selected text with quotes
    vnoremap <Leader>' "zdi'<C-R>z'<ESC>
    vnoremap <Leader>" "zdi"<C-R>z"<ESC>

"}}} ---------------------------------------------------------------------
"
"{{{ Custom Functions ----------------------------------------------------

" Function to enable smart tab completion
" Press tab in insert mode to do a completion
function! Smart_TabComplete()
    let line = getline('.')                       " current line

    let substr = strpart(line, -1, col('.')+1)    " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
    let substr = matchstr(substr, "[^ \t]*$")     " word till cursor
    if (strlen(substr)==0)                        " nothing to match on empty string
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1    " position of period, if any
    let has_slash = match(substr, '\/') != -1     " position of slash, if any
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"                     " existing text matching
    elseif ( has_slash )
        return "\<C-X>\<C-F>"                     " file matching
    else
        return "\<C-X>\<C-O>"                     " plugin matching
    endif
endfunction
" Keyboard mapping to do the tab completion
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
" Custom Commands
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

"}}} ---------------------------------------------------------------------
"
"{{{ Auto Commands --------------------------------------------------------
" APDL filetype
au BufNewFile,BufRead *.ans set ft=apdl
au BufNewFile,BufRead *.mac set ft=apdl
au FileType apdl set syntax=apdl

" Highlight current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn

" .vimrc specific changes
au BufRead .vimrc set colorcolumn=80 | hi ColorColumn ctermbg=240
au BufRead .vimrc set foldmethod=marker
au BufWrite .vimrc source %
"}}} ---------------------------------------------------------------------
