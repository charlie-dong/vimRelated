set spelllang=en
setlocal spell
set shell=/bin/bash

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

autocmd FileType python nnoremap <buffer> <F5> :exec 'python3' shellescape(@%, 1)<cr>
