packadd minpac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minpac plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('itchyny/lightline.vim')
" call minpac#add('altercation/vim-colors-solarized')
" call minpac#add('joshdick/onedark.vim')
" call minpac#add('rakr/vim-one')
call minpac#add('mhartington/oceanic-next')
call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })
call minpac#add('junegunn/fzf.vim')
call minpac#add('junegunn/vim-peekaboo')
call minpac#add('mileszs/ack.vim')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-rails')
call minpac#add('ntpeters/vim-better-whitespace')
call minpac#add('pangloss/vim-javascript')
call minpac#add('elmcast/elm-vim')
call minpac#add('elixir-lang/vim-elixir')
call minpac#add('mxw/vim-jsx')
call minpac#add('mattn/emmet-vim')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-endwise')
call minpac#add('w0rp/ale')
call minpac#add('scrooloose/nerdtree')
call minpac#add('Xuyuanp/nerdtree-git-plugin')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('janko-m/vim-test')
call minpac#add('jgdavey/tslime.vim') " Allows vim to access tmux sessions
" call minpac#add('godlygeek/tabular')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('wincent/terminus') " Change cursor on INSERT

call minpac#add('ryanoasis/vim-devicons') " MUST load after NERDTREE and other NERD-enabled plugins
" You must build the extension: ~/.vim/pack/minpac/start/YouCompleteMe
" call minpac#add('Valloric/YouCompleteMe', {'do' : './install.py' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins. Needed for matchit
if !(has("nvim"))
  packadd matchit     " Enable built-in plugin for extended % matching
  runtime macros/matchit.vim
endif

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set encoding=UTF-8 " BOM often causes trouble
set nolist              " performance - don't render special chars (tabs, trails, ...)
set listchars=nbsp:☠,eol:¬,tab:▸␣,extends:»,precedes:«,trail:·
",tab:▸␣ •¶
set number         " Show line numbers
set relativenumber " Turn both on for Hybrid mode - PERFORMANCE LOSS
set numberwidth=3  " Width of gutter column used for numbering
" set colorcolumn=80

" Speed
set lazyredraw
set ttyfast
if !has('nvim')
  set ttyscroll=3
endif

set autoindent                     " Copy indent from last line when starting new line
set backspace=indent,eol,start
set clipboard=unnamed
set cursorline                     " Highlight current line - PERFORMANCE LOSS
"set formatoptions-=cro
set autoread                       " If a file is changed outside of vim, automatically reload it without asking
set diffopt=filler                 " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite                " Ignore whitespace changes (focus on code changes)
set expandtab                      " Expand tabs to spaces
set foldcolumn=0                   " Column to show folds
set foldenable                     " Enable folding
set foldlevel=99                   " Open all folds by default
set foldmethod=syntax              " Syntax are used to specify folds
set foldminlines=0                 " Allow folding single lines
set foldnestmax=5                  " Set max fold nesting level
" set guicursor=                     " dont change cursor in insert mode in nvim
set wrap                           " Soft wrap
set linebreak                      " Wrap at words
set history=1000                   " Increase history from 20 default to 1000
set hidden                         " Allow hiding buffers with unsaved changes
set hlsearch                       " Highlight searches
set incsearch                      " Highlight dynamically as pattern is typed
set ignorecase                     " Ignore case of searches
set laststatus=2                   " Always show status line
set matchtime=2                    " (for only .2 seconds).
set noerrorbells                   " Disable error bells
set ofu=syntaxcomplete#Complete    " Set omni-completion method
set report=0                       " Show all changes
set ruler                          " Show the cursor position
set scrolloff=3                    " Start scrolling three lines before horizontal border of window
set smartcase                      " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab                       " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set shiftwidth=2                   " The # of spaces for indenting
set softtabstop=2                  " Tab key results in 2 spaces
set sidescrolloff=3                " Start scrolling three columns before vertical border of window
"set showtabline=2                 " Always show tab bar
set showmatch                      " Briefly jump to a paren once it's balanced
set splitbelow                     " New window goes below
set splitright                     " New windows goes right
set title                          " Show the filename in the window titlebar
set undofile                       " Persistent Undo
set visualbell                     " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB>                 " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu              " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0        " Allow splits to be reduced to a single line
set wrapscan              " Searches wrap around end of file
" Strip whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

if has('nvim')
  " Hack to get C-h working in NeoVim
  nmap <BS> <C-W>h

  let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " for colorschemes that still rely on this value
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set inccommand=nosplit " show results while typing a :substitute command
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ','

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

" map <C-a> <esc>ggVG<CR> " Select all
nmap <leader>c :nohl<CR>      " Clear search highlights

" invisibles
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=white guibg=#cc0000
nmap <leader>l :set list!<CR> " Shortcut to rapidly toggle `set list`

" Quick save
noremap <Leader>w :update<CR>

" Replace word under cursor /global confirm
" nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<Left><Left>

" tnoremap <Esc> <C-\><C-n>
" Use Esc to exit out of terminal insert without breaking FZF esc
" https://github.com/junegunn/fzf/issues/576
if has('nvim')
  autocmd BufEnter term://* startinsert
  noremap <Leader>t :terminal<CR>
  tnoremap <expr> <esc> &filetype == 'fzf' ? "\<esc>" : "\<c-\>\<c-n>"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("termguicolors"))
  set termguicolors
endif

syntax enable " Syntax Highlighting - PERFORMANCE LOSS
" set background=dark
" set t_ut=
" let g:onedark_terminal_italics=1
" colorscheme onedark

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'oceanicnext',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename'
      \ },
      \ }

" Show path to file not just filename
function! LightlineFilename()
  return expand('%')
endfunction

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
     set guifont=SauceCodePro_Nerd_Font_Mono:h16
   endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy finding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/junegunn/fzf/wiki/Examples-(vim)

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let $FZF_DEFAULT_OPTS = '--reverse'
let g:fzf_files_options = '--preview "rougify {} --theme monokai | head -'.&lines.'"' " Preview with Rouge gem
" let g:fzf_layout = { 'window': 'enew' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" # Solarized Dark color scheme for fzf
" export FZF_DEFAULT_OPTS="
"   --color fg:-1,bg:-1,hl:$blue,fg+:$base2,bg+:$base02,hl+:$blue
"   --color info:$yellow,prompt:$yellow,Vpointer:$base3,marker:$base3,spinner:$yellow

" https://github.com/dkarter/dotfiles/blob/master/vimrc
function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction


nnoremap <leader>F :call FZFOpen(':call Fzf_dev()')<CR>
" nnoremap <leader>f :FZF <cr>
nnoremap <leader>f :call FZFOpen(':Files')<CR>
nnoremap <leader>s :call FZFOpen(':Ag')<cr>
nnoremap <leader>b :call FZFOpen(':Buffers')<CR>
nnoremap <leader>m :call FZFOpen(':Commands')<CR>
nnoremap <leader>i :call FZFOpen(':BLines')<CR>
" nnoremap <leader>s :call KAg()<cr>
" nnoremap <leader><plug>(fzf-complete-file-ag)

" function! KAg()
"   call fzf#run({'sink': 'e', 'bottom': '25%'})
" endfunction

function! Buffers()
  call fzf#run({'source': map(range(1, bufnr('$')), 'bufname(v:val)'),
            \ 'sink': 'e', 'down': '30%'})
endfunction

" bind '\ag' to search for word under cursor
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Show Ctags for current file
command! FZFTagFile if !empty(tagfiles()) | call fzf#run({
\   'source': "cat " . tagfiles()[0] . ' | grep "' . expand('%:@') . '"' . " | sed -e '/^\\!/d;s/\t.*//' ". ' |  uniq',
\   'sink':   'tag',
\   'options':  '+m',
\   'left':     60,
\ }) | else | echo 'No tags' | endif
nnoremap <silent> <Leader>v :FZFTagFile<cr>

" FZF + DevIcons https://github.com/dkarter/dotfiles/blob/master/vimrc
function! Fzf_dev()
 let l:fzf_files_options =
       \ '--preview "echo {} | tr -s \" \" \"\n\" | tail -1 | xargs rougify -t monokai | head -'.&lines.'"'
 function! s:files()
   let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
   return s:prepend_icon(l:files)
 endfunction

 function! s:prepend_icon(candidates)
   let l:result = []
   for l:candidate in a:candidates
     let l:filename = fnamemodify(l:candidate, ':p:t')
     let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
     call add(l:result, printf('%s %s', l:icon, l:candidate))
   endfor

   return l:result
 endfunction

 function! s:edit_file(item)
   let l:parts = split(a:item, ' ')
   let l:file_path = get(l:parts, 1, '')
   " TODO: not working
   let l:cmd = get({
              \ 'ctrl-x': 'split',
              \ 'ctrl-v': 'vertical split',
              \ 'ctrl-t': 'tabe'
              \ }, a:item[0], 'e')
   execute 'silent ' . l:cmd . ' ' . l:file_path
 endfunction

 call fzf#run({
       \ 'source': <sid>files(),
       \ 'sink':   function('s:edit_file'),
       \ 'options': '-m --expect=ctrl-t,ctrl-v,ctrl-x '.
       \            l:fzf_files_options,
       \ 'down':    '40%' })
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
      \ 'javascript': ['eslint']
      \}

let g:ale_linters = {
      \  'javascript': ['eslint', 'flow']
      \}

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:jsx_ext_required = 0
let g:ale_linter_aliases = {'javascript.jsx': 'javascript', 'jsx': 'javascript'}
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
" let test#strategy = "tslime" " Use Send_to_Tmux() method in tslime.vim for tests
" let test#strategy = "neovim" " Runs test commands with :terminal in a split window.
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
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
"inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_access_modifier_style = 'normal'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 " JSX can be in .js files
let g:javascript_plugin_flow = 1
hi def link jsObjectKey Label  " Highlight object keys

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Elm config (elm-vim)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emmet config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Devicons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusNodeColorization = 1
" 
let g:webdevicons_enable_denite = 0
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

