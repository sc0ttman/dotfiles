
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minpac plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packadd minpac
call minpac#init()
call minpac#add('itchyny/lightline.vim')
" call minpac#add('altercation/vim-colors-solarized')
" call minpac#add('joshdick/onedark.vim')
call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('rakr/vim-one')
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('pangloss/vim-javascript')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')

" You must build the extension: ~/.vim/pack/minpac/start/YouCompleteMe
call minpac#add('Valloric/YouCompleteMe', {'do' : './install.py' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set number " Show line numbers
set numberwidth=3 " Width of "gutter" column used for numbering
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set autoindent " Copy indent from last line when starting new line
set backspace=indent,eol,start
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
set cursorline " Highlight current line
set laststatus=2 " Always show status line
set esckeys " Allow cursor keys in insert mode
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
set showtabline=2 " Always show tab bar
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

" Enable this if you mistype :w as :W or :q as :Q.
nmap :W :w
nmap :W! :w!
nmap :Q :q
nmap :Q! :q!
nmap :Wq! :wq!
nmap :WQ! :wq!

autocmd BufEnter * EnableStripWhitespaceOnSave

" Buffers
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>

" List all possible buffers with "gl"
nnoremap gl :ls<CR>

" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark

"g:onedark_termcolors
colorscheme onedark

"let g:lightline = {
"      \ 'colorscheme': 'onedark',
"      \ }

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
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let $FZF_DEFAULT_OPTS = '--reverse'
nnoremap <leader>f :Files <cr>
nnoremap <leader>s :Ag <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minpac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zm' : 'zc')<CR>
inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"


augroup filetype_ruby
  autocmd!

  au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

  "let ruby_operators = 1
  "let ruby_space_errors = 1
  "let ruby_fold = 1
augroup END
