nmap <M-t> :NvimTreeToggle <CR> <Cmd>exe v:count1 . "ToggleTerm"<CR> <M-k> :NvimTreeToggle <CR> :wincmd l <CR> :wincmd j <CR>
inoremap <M-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
" tnoremap <Esc> <C-\><C-n>
tnoremap <M-k> <C-\><C-n><Cmd>wincmd k<CR>
tnoremap <M-t> <C-\><C-n><Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermOpen * set nocursorline

