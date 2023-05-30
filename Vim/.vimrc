"set t_Co=256
set encoding=utf-8
""set encoding=gbk
""set fileencodings=utf-8,gbk,big5
""set termencoding=utf-8
"
set nocompatible
set backspace=2
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ts=4

set cindent
set autoindent
set cursorline
set hlsearch 

hi Pmenu ctermfg=green ctermbg=black
hi PmenuSel ctermfg=11 ctermbg=3

"solarized colorschem
syntax enable
colorscheme solarized
"set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
""map <F7> :togglebg <CR>

highlight Search ctermfg=black ctermbg=yellow 
highlight IncSearch ctermfg=yellow ctermbg=black  
highlight MatchParen ctermfg=NONE ctermbg=NONE cterm=underline
highlight Comment ctermfg=green

filetype on
filetype plugin on

autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"set backspace=indent,eol,start
"set guifont=Courier\ New:h14:cANSI


"Files
:command! -nargs=1 Rename let tpname = expand( '%:t' ) | saveas <args> | edit <args> | call delete( expand( tpname ) )
let g:python3_host_prog = '/usr/bin/python'


"syntastic
"execute pathogen#infect()
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_check_on_wq = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_always_populate_loc_list = 1


"nerdtree
autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


"YouCompleteMe
let g:ycm_server_keep_logfile = 1
let g:ycm_server_log_level = 'debug'

let g:python3_host_prog = "/mingw64/bin/python3.10.exe"
let g:ycm_server_python_interpreter = '/mingw64/bin/python3.10.exe'

let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_string = 1
let g:ycm_autoclose_preview_window_after_completion = 1

autocmd InsertLeave If pumvisible() == 0|pclose|endif
inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

let g:ycm_simple_conf_active = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/ycm_simple_conf/python/ycm_simple_conf.py'
let g:ycm_confirm_extra_conf = 0


"Javascript
let g:javascript_plugin_jsdoc = 1
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END


"Python-mode
let g:pymode = 1
let g:pymode_options = 1
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1

let g:pymode_options_colorcolumn = 2
let g:pymode_options_max_line_length = 0

let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6

let g:pymode_python = "python3"

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = [ "pyflakes" ]

let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_rope_show_doc_bind = "<C-c>d"
let g:pymode_rope_rename_bind = "<C-c>rr"
"let g:pymode_rope_rename_module_bind = ""

"lef g:pymode_indent = 1
let g:pymode_folding = 0

let g:pymode_motion = 1
let g:pymode_virtualenv = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>br'
"let g:pymode_virtualenv_path = $VIRTUAL_ENV

"let g:pymode_doc = 1
"let g:pymode_doc_bind = "k"
let g:pymode_run = 1
let g:pymode_run_bind = "<F6>"

"let current_file = expand( "%:p" )
"let current_file = "main.py"
let quickfix_window_height = 8
let execute_current_file = "/mingw64/bin/python3 " . expand( "%:p" )
"echo execute_current_file
let command = ':cgetexpr system( "' . execute_current_file . '" )' 
"nnoremap <expr><F5> command . " <bar> copen<CR>"

autocmd FileType python nnoremap <expr><F5> "command . " <bar> botright copen <bar> resiz " . quickfix_window_height . "<CR>" 


let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

hi pythonSelf ctermfg=174 cterm=bold guifg=#6094DB gui=bold


"AnsiEsc
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"
"hi MBEVisibleActive ctermfg=163 guifg=#A6DB29
"hi MBEVisibleChangedActive ctermfg=152 guifg=#F1266F
"hi MBEVisibleChanged ctermfg=141 guifg=#F1266F
"hi MBEVisibleNormal ctermfg=174 guifg=#5DC2D6

"hi QuickFixLine ctermfg=green cterm=bold guifg=#334659 gui=bold
"hi link QuickFixLine CursorLine
"hi Normal ctermfg=white cterm=bold guifg=#334659 gui=bold
"au CmdLineEnter * hi Normal ctermfg=green cterm=bold guifg=#334659 gui=bold
"au CmdLineLeave * hi Normal ctermfg=white cterm=bold guifg=#334459 gui=bold

"hi statusline ctermbg=white
"au CmdLineEnter * hi StatusLine ctermfg=green ctermbg=black
"au CmdLineLeave * hi StatusLine ctermfg=red ctermbg=black

"augroup InsertHook
"    autocmd!
"    autocmd CmdLineEnter * hi Normal ctermfg=green ctermbg=black
""    autocmd CmdLineChanged * hi Normal ctermfg=green ctermbg=black
"    autocmd CmdLineLeave * hi Normal ctermfg=white ctermbg=black
"augroup END

"map <C-Enter> :hi Normal ctermfg=white ctermbg=black<CR>

"hi CmdLineLeave ctermfg=red ctermbg=black
"hi CmdLineEnter ctermfg=green ctermbg=black
"hi CmdLineLeave ctermfg=red ctermbg=black
"augroup cmd
"    autocmd!
"    autocmd CmdLineEnter * let &statusline = '%#CmdLineEnter#%f'
"    autocmd CmdLineLeave * let &statusline = '%#CmdLineLeave#%f'
"augro END

"set wincolor=NormalAlt
"autocmd WinEnter set wincolor=NormalAlt


call plug#begin( "~/.vim/plugged" )
Plug 'altercation/solarized'
"Plug 'scrooloose/syntastic'
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'tdcdev/ycm_simple_conf'
Plug 'pangloss/vim-javascript'
Plug 'python-mode/python-mode'
"Plug 'powerman/vim-plugin-AnsiEsc'
"Plug 'python-mode/python-mode', { 'for': '/mingw64/bin/python3.10.exe', 'branch': 'develop' }
call plug#end()
