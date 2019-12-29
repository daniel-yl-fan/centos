" vim -c command -c 'command option' or vim +command 

set nocompatible

set shell=/usr/bin/bash

set shellcmdflag=-lc

set bs=eol,start,indent

" do not show start up info
set shortmess=atI

" Default to Unix LF line endings
set ffs=unix

" Use OS clipboard for copypasta
set clipboard=unnamed

set encoding=utf-8

set nobackup 

set noswapfile 

set bufhidden=hide 

highlight! signcolumn cterm=standout ctermfg=green ctermbg=red

"set signcolumn=yes

set showtabline=2

"set list

set showcmd

set t_Co=256

set timeout timeoutlen=2000 ttimeoutlen=0

autocmd FileType qf wincmd _

""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on

" set selection=exclusive

" set paste

" set linespace=0

" set number

set ruler

set laststatus=2

set noshowmode

set cmdheight=2

set ignorecase

set smartcase

set hlsearch

set incsearch

set wildmode=longest,list
set wildmenu

set lazyredraw

set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

syntax on

syntax enable

"set synmaxcol=0
"syntax sync minlines=10000
set redrawtime=10000
"syntax sync fromstart

au BufRead,BufNewFile *.diam set filetype=Diameter

set autoindent

set cindent

"set nowrap
set wrap linebreak nolist

set textwidth=120

set showmatch

set matchtime=2

set display=lastline

set tabpagemax=100

set switchbuf+=usetab,newtab

"set path+=$ROOT

"set statusline=
"set statusline+=\ %F
"set statusline+=\ [%1*%M%*%n%R%H]
"set statusline+=%=
"set statusline+=\ %y
"set statusline+=\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %v:%l/%L%)

highlight! clear SpellBad
highlight! clear SpellCap
highlight! clear SpellRare
highlight! clear SpellLocal
highlight! SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight! SpellCap term=underline cterm=underline
highlight! SpellRare term=underline cterm=underline
highlight! SpellLocal term=underline cterm=underline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=";"

imap <leader><leader> <Esc>

noremap  <leader>ww :write! <CR>
noremap  <leader>qq :quit! <CR>
noremap  <leader>xx :exit! <CR>

noremap <leader>nt :tabnew<CR>

noremap <leader>dp :diffput <CR>
noremap <leader>dg :diffget <CR>

map <C-[>s :tab cscope find s <C-R>=expand("<cword>")<CR><CR>
map <C-[>g :tab cscope find g <C-R>=expand("<cword>")<CR><CR>
map <C-[>c :tab cscope find c <C-R>=expand("<cword>")<CR><CR>
map <C-[>f :tab cscope find f <C-R>=expand("<cword>")<CR><CR>

map <C-\>s :cscope find s <C-R>=expand("<cword>")<CR><CR>
map <C-\>g :cscope find g <C-R>=expand("<cword>")<CR><CR>
map <C-\>c :cscope find c <C-R>=expand("<cword>")<CR><CR>
map <C-\>f :cscope find f <C-R>=expand("<cword>")<CR><CR>

colorscheme desert256

set grepprg=ag

call plug#begin('/usr/share/vim/vim80/plugged')

"Plug 'junegunn/vim-plug'

"Plug 'scrooloose/nerdtree'
Plug 'dhruvasagar/vim-zoom'
Plug 'easymotion/vim-easymotion'
Plug 'roxma/vim-paste-easy'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'skywind3000/asyncrun.vim'

Plug 'Yggdroot/LeaderF'
" ~/local/bin/fzf - fuzzy finder
Plug 'junegunn/fzf.vim'
" conflict with ycm
"Plug 'junegunn/vim-peekaboo'

Plug 'terryma/vim-multiple-cursors'
"Plug 'jiangmiao/auto-pairs'
"Plug 'dhruvasagar/vim-table-mode'

"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'mhinz/vim-signify'

Plug 'dyng/ctrlsf.vim',
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'vim-scripts/gtags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
Plug 'Valloric/ListToggle'

Plug 'tpope/vim-fugitive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'chrisbra/vim-diff-enhanced'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap ]l :lnext<CR>
noremap [l :lprev<CR>

let g:Lf_CursorBlink = 1
let g:Lf_RootMarkers = ['.git', '.root']
let g:Lf_WindowPosition = 'bottom'
let g:Lf_ShowRelativePath = 0
let g:Lf_CacheDiretory = '/tmp'

let NERDTreeWinSize=80          
"let NERDTreeWinPos="right"     
let NERDTreeShowHidden=1        
"let "NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrows=0       

let g:gundo_width = 80
let g:gundo_preview_height = 20
let g:gundo_right = 1

"let g:ackprg='rg'
let g:ackprg='ag'
let g:ctrlsf_regex_pattern=1
let g:ctrlsf_position='bottom'
let g:ctrlsf_winsize = '50%'
"let g:ctrlsf_winsize = '120'

let g:asyncrun_open = 30
let g:asyncrun_rootmarks = ['.git', '.root']
let g:asyncrun_bell = 1
noremap <silent> <F5> :AsyncRun -program=make @ all <CR>
noremap <silent> <leader>\g :AsyncRun -program=make @ all <CR>

let g:paste_easy_message=0

let g:preview#preview_position = "bottom"

let g:lt_height = 80
let g:lt_quickfix_list_toggle_map = '<leader>tq'
"let g:lt_quickfix_list_toggle_map = '<F10>'
let g:lt_location_list_toggle_map = '<leader>tl'
"let g:lt_location_list_toggle_map = '<F11>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
let g:EasyMotion_use_smartsign_us = 1 " US layout
nmap f <Plug>(easymotion-overwin-f)
nmap t <Plug>(easymotion-jumptoanywhere)
nmap vl <Plug>(easyoperator-line-select)
nmap el <Plug>(easyoperator-line-delete)
nmap cl <Plug>(easyoperator-line-yank)
nmap vp <Plug>(easyoperator-phrase-select)
nmap ep <Plug>(easyoperator-phrase-delete)
nmap cp <Plug>(easyoperator-phrase-yank)
map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
"let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"set diffopt+=internal,algorithm:patience

highlight PMenu ctermfg=13 ctermbg=4
highlight PMenuSel ctermfg=10 ctermbg=5
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"let g:ycm_use_clangd = "Always"
" Let clangd fully control code completion
"let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
"let g:ycm_clangd_binary_path = exepath("clangd")
"let g:ycm_clangd_binary_path = "~/local/bin/clangd"
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_error_symbol
"let g:ycm_warning_symbol
"let g:ycm_enable_diagnostic_signs = 0
"x retries exceeded with url: /readylet g:ycm_echo_current_diagnostic = 0
"let g:ycm_filter_diagnostics = {}
"let g:ycm_always_populate_location_list = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_use_clangd = "Never"
let g:ycm_global_ycm_extra_conf='/usr/share/vim/vim80/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_max_diagnostics_to_display = 1000
let g:ycm_semantic_triggers =  { 'c,cpp,bash,python,java,go,erlang,perl': ['re!\w{2}'] }
let g:ycm_filetype_whitelist = { 'cpp': 1, 'bash': 1 }
let g:ycm_filetype_blacklist = { 'tagbar': 1, 'notes': 1, 'markdown': 1, 'netrw': 1, 'unite': 1, 'text': 1, 'vimwiki': 1, 'pandoc': 1, 'infolog': 1, 'mail': 1 }
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" YcmToggleLogs
" YcmDebugInfo
" YcmDiags

let g:Lf_RootMarkers = ['.project', '.root', '.git']

let g:fzf_tags_command = 'gtags'
set rtp+=~/local/fzf
let g:fzf_layout = { 'right': '~50%' }

"TOhtml
"let g:html_line_ids = 1
let g:html_dynamic_folds = 1
let g:html_number_lines = 1

let g:airline#extensions#tabline#enabled = 1

let g:gutentags_project_root = [ '.git', '.project' ]
let g:gutentags_add_default_project_roots = 0
let g:gutentags_exclude_project_root = [ 'obj' ]
let g:gutentags_ctags_tagfile = '.gutentags'
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_modules = [ 'ctags', 'gtags_cscope' ]
let g:gutentags_plus_switch = 1
let g:gutentags_plus_nomap = 1
"let g:gutentags_trace = 1
"let g:gutentags_file_list_command = 'ag --filename-pattern c --files-with-matches'
"let g:gutentags_ctags_exclude = [ 'obj', 'ssp/tftpboot' ]
"#set wildignore=*.a,*.o,*.so,*.sh,*.jar,*.tar,*.gz,*.zip,*.out,*.out*
"let g:gutentags_ctags_exclude_wildignore = 1

" use global-cscope like cscope
set csprg=gtags-cscope
noremap <silent> <leader>gr :GscopeFind<Space>
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch' ], [ 'path' ], [ 'gutentags' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B',
      \   'path': '%F'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'gutentags': 'gutentags#statusline',
      \ },
      \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let mapleader=";"

"imap <leader><leader> <Esc>

noremap <leader>ar :AsyncRun 
noremap <leader>as :AsyncStop <CR>

noremap <leader>ce :YcmDiag <CR>

"noremap <leader>dp :diffput <CR>
"noremap <leader>dg :diffget <CR>

noremap <leader>ee :e! <CR>

noremap <leader>fb :LeaderfBuffer <CR>
noremap <leader>ff :LeaderfFile <CR>
noremap <leader>fh :LeaderfHelp <CR>
noremap <leader>fr :LeaderfMru <CR>
noremap <Leader>ft :CtrlSF<CR>
noremap <Leader>fs :CtrlSF<Space>
noremap <Leader>fe :CtrlSF<Space>-R<Space>
noremap <leader>f: :LeaderfHistoryCmd <CR>
noremap <leader>f/ :LeaderfHistorySearch <CR>

"noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
"noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
"noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
"noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
"noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
"noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
"noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
"noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
"noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

noremap <leader>mc :execute "set colorcolumn=" . (&colorcolumn == "" ? "120" : "") <CR>

"noremap <leader>nt :tabnew<CR>

"noremap <leader>qq :quit! <CR>

noremap <leader>st :!git st <CR>
noremap <leader>sl :!git lg <CR>
noremap <leader>sd :!git dt <CR>
"noremap <leader>sb :Buffers <CR>
"noremap <leader>sc :Colors <CR>
"noremap <leader>sf :Files <CR>
"noremap <leader>sgf :GFiles <CR>
"noremap <leader>sgs :GFiles? <CR>
"nmap <leader>sh :vertical belowright terminal <CR>
nmap <leader>sh :belowright terminal <CR>

nmap <leader>vt :PreviewTag <CR>
nmap <leader>vs :PreviewSignature <CR>
"nmap <leader>vq :PreviewQuickfix <CR>
nmap <leader>vn :PreviewGoto tabnew <CR>
nmap <leader>vc :PreviewClose <CR>
"nmap <leader>vf :PreviewFile <Space>
"nmap <leader>vf :PreviewScroll +1<CR>
"nmap <leader>vb :PreviewScroll -1<CR>

map <C-\>u :PreviewScroll -1<CR>
map <C-\>d :PreviewScroll +1<CR>

nmap <leader>vd :vert diffsplit <Space>

nmap <leader>tt :NERDTreeToggle <CR>
nmap <leader>tu :GundoToggle <CR>
nmap <leader>tf :CtrlSFToggle <CR>
nmap <leader>tm :marks <CR>
nmap <leader>tr :registers <CR>
nmap <leader>tw <Plug>(zoom-toggle)
"let g:lt_quickfix_list_toggle_map = '<leader>tq'
"let g:lt_location_list_toggle_map = '<leader>tl'

"noremap <leader>ww :write! <CR>
vnoremap <leader>ww :write! /tmp/daniel.yl.fan<CR>
noremap  <leader>rr :read   /tmp/daniel.yl.fan<CR>

noremap <leader>xx :exit! <CR>
"
" xxd -r -p file    " convert hex to binary (ascii)
" xxd -i file    " convert binary file to hex
"
" ascii <=> hex
" vnoremap ; :<c-u>s/\%V./\=printf("%x",char2nr(submatch(0)))/g<cr><c-l>`<
" vnoremap u :<c-u>s/\%V\x\x/\=nr2char(printf("%d", "0x".submatch(0)))/g<cr><c-l>`<

