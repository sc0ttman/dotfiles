packadd minpac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minpac plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call minpac#init()
call minpac#add('itchyny/lightline.vim')
"call minpac#add('altercation/vim-colors-solarized')
call minpac#add('joshdick/onedark.vim')
"call minpac#add('rakr/vim-one')
call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('mileszs/ack.vim')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('pangloss/vim-javascript')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-rails')
call minpac#add('w0rp/ale')
call minpac#add('scrooloose/nerdtree')
call minpac#add('Xuyuanp/nerdtree-git-plugin')
call minpac#add('mattn/emmet-vim')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('janko-m/vim-test')
call minpac#add('jgdavey/tslime.vim')

" You must build the extension: ~/.vim/pack/minpac/start/YouCompleteMe
" call minpac#add('Valloric/YouCompleteMe', {'do' : './install.py' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins. Needed for matchit
packadd matchit " Enable built-in plugin for extended % matching

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set nolist " performance - don't render special chars (tabs, trails, ...)
set number " Show line numbers
set relativenumber " Turn both on for Hybrid mode - PERFORMANCE LOSS
set numberwidth=3 " Width of "gutter" column used for numbering
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set lazyredraw " performance gain
set ttyfast " performance gain

set autoindent " Copy indent from last line when starting new line
set backspace=indent,eol,start
set clipboard=unnamed
"set formatoptions-=cro
set autoread " If a file is changed outside of vim, automatically reload it without asking
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set expandtab " Expand tabs to spaces
set shiftwidth=2 " The # of spaces for indenting
set softtabstop=2 " Tab key results in 2 spaces
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed
set ignorecase " Ignore case of searches
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab  " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set cursorline " Highlight current line - PERFORMANCE LOSS
set laststatus=2 " Always show status line
set esckeys " Allow cursor keys in insert mode
" Folding is slow and sorta broken
set foldlevel=0 " Performance
set foldmethod=manual
"set foldcolumn=0 " Column to show folds
"set foldenable " Enable folding
"set foldlevelstart=20 " Close all folds by default
"set foldmethod=syntax " Syntax are used to specify folds
"set foldminlines=0 " Allow folding single lines
"set foldnestmax=2 " Set max fold nesting level
set history=1000 " Increase history from 20 default to 1000
set noerrorbells " Disable error bells
set ofu=syntaxcomplete#Complete " Set omni-completion method
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
"set showtabline=2 " Always show tab bar
set splitbelow " New window goes below
set splitright " New windows goes right
set title " Show the filename in the window titlebar
set undofile " Persistent Undo
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file

" Strip whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable this if you mistype :w as :W or :q as :Q.
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Buffers
nnoremap gp :bp<CR> " Move to the previous buffer with "gp"
nnoremap gn :bn<CR> " Move to the next buffer with "gn"
nnoremap gl :ls<CR> " List all possible buffers with "gl"
nnoremap gb :ls<CR> " List all possible buffers with "gb" and accept a new buffer argument [1]

map <C-a> <esc>ggVG<CR> " Select all

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " Syntax Highlighting - PERFORMANCE LOSS
set background=dark
"g:onedark_termcolors
colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Meslo\ LG\ S\ for\ Powerline
   endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy finding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let $FZF_DEFAULT_OPTS = '--reverse'
nnoremap <leader>f :FZF <cr>
nnoremap <leader>s :Ag <cr>
" nnoremap <leader>s :call KAg()<cr>
" nnoremap <leader><plug>(fzf-complete-file-ag)

function! KAg()
  call fzf#vim#ag({'left': '15%'})
endfunction

" https://robots.thoughtbot.com/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind '\ag' to search for word under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minpac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" \   'javascript': ['prettier'],
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \}

let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_lint_delay=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>nf :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw (If not using NERDTree)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:netrw_preview = 1
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitGutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim test
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#strategy = "tslime" " Use Send_to_Tmux() method in tslime.vim for tests
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tslime
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zm' : 'zc')<CR>
"inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_access_modifier_style = 'normal'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
