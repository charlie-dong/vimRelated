set spelllang=en
setlocal spell
set shell=/bin/bash
set splitbelow

colors desert

source ~/.vimrc_vundlePlugin
source ~/.vimrc_vim-plug
source ~/.vimrc_md-preview

let g:airline#extensions#tabline#enabled = 1

let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

let g:mkdp_page_title = '${name}'

let g:UltiSnipsSnippetDirectories=['~/.vim/ultisnips-customized']
let g:UltiSnipsExpandTrigger="<c-j>"

autocmd FileType python nnoremap <buffer> <F5> :exec 'python3' shellescape(@%, 1)<cr>

let g:jedi#auto_initialization = 0

"Settings for ycm
highlight PMenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
highlight PMenuSel ctermfg=11 ctermbg=0 guifg=#ffff00 guibg=#000000
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_inertion = 1
let g:ycm_max_num_candidates = 30
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

nnoremap <leader>gd    :YcmCompleter GoTo<CR>
nnoremap <leader>gr    :YcmCompleter GoToReferences<CR>
nnoremap <leader>gi    :YcmCompleter GetDoc<CR>
nnoremap <leader>gt    :YcmCompleter GetType<CR>
"end setting for ycm*************
