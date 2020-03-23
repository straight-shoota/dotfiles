set tabstop=2 shiftwidth=2 expandtab

call plug#begin('~/.local/share/nvim/plugged')
Plug 'datanoise/vim-crystal'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
call plug#end()

autocmd BufRead ~/.config./bashrc.d/* setlocal ft=sh

autocmd FileType c,cpp,java,php,cr,ruby,json,js,css,sass,scss,md autocmd BufWritePre <buffer> %s/\s\+$//e
