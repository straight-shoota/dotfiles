set tabstop=2 shiftwidth=2 expandtab

call plug#begin('~/.local/share/nvim/plugged')
Plug 'datanoise/vim-crystal'
Plug 'airblade/vim-gitgutter'
call plug#end()

autocmd BufRead ~/.config./bashrc.d/* setlocal ft=sh
