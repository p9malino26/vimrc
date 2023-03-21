
" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
"other plugins
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'dominikduda/vim_current_word'
"Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'brooth/far.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" All of your Plugins must be added before the following line
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


set wrap!
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set wildmode=longest:full,full " Display Vim command mode autocompletion list
set number

"autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
nmap <F5> :NERDTreeToggle<CR>
nmap <F9> :TerminalSplit bash<CR>

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.

" Use `:Format` to format current buffer

"START vimtex
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","
"END vimtex

"START syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_pylint_args = '-E'
"let g:syntastic_quiet_messages = { "type": "style" }
"END syntastic
"START ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
"END ctrlp
set ignorecase
set incsearch
"START farf
nnoremap <silent> <c-f>  :Farf<cr>
nnoremap <silent> <c-s>  :wa\|!pdflatex main.tex <cr>
imap <c-n> <c-o>j
imap <c-p> <c-o>k
imap <c-f> <c-o>l
imap <c-b> <c-o>h
imap <c-e> <c-o>$
imap <c-a> <c-o>^
"END farf
syntax enable
"tagbar
nmap <F8> :TagbarToggle<CR>
"ycm
nnoremap <F6> :YcmCompleter GoTo<CR>
nnoremap <F7> :YcmCompleter GoToReferences<CR>
"vim-cpp-modern
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all strd C ander Vim's highlight)group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

vnoremap <s-b> xi()<Esc>hp
noremap <c-b> %x<c-o>x
noremap 9 f(
noremap ( F(
noremap 0 f)
noremap ) F)
