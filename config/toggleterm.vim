nnoremap <M-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <M-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
" tnoremap <Esc> <C-\><C-n>
tnoremap <C-k> <C-\><C-n><Cmd>wincmd k<CR>
tnoremap <M-t> <C-\><C-n><Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermOpen * set nocursorline

