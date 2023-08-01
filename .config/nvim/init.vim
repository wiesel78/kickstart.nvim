luafile ~/.config/nvim/lua/init.lua

set number
set tabstop=4
set expandtab
set shiftwidth=4
syntax enable

nnoremap <F5> :source ~/.config/nvim/init.vim <CR>

nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-h> :tabnext<CR>
nnoremap <C-l> :tabprev<CR>

