let g:python3_host_prog = 'python3'

" dein --------------------
let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let s:dein_cache_dir = g:cache_home . '/dein'

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)
    let s:toml_dir = g:config_home . '/dein'
    call dein#load_toml(s:toml_dir . '/plugins.toml' , {'lazy': 0})
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

"--------------------------
colorscheme molokai

set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set list
set listchars=tab:»-,trail:-

" clipboard ---------------
set clipboard+=unnamedplus

" mute --------------------
set visualbell
set t_vb=

" keymap ------------------
" to avoid confriction between vim's 'paste mode' and iterm's 'paste'
noremap <C-v> <Nop>
nnoremap ; :
nnoremap : ;

filetype plugin indent on
syntax on
