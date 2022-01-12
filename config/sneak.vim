map <C-s> <Plug>Sneak_s

let g:sneak#use_ic_scs = 1
highlight Sneak guifg=#ff5555 guibg=#1e1f29 gui=bold
highlight SneakScope guifg=#f1fa8c guibg=#1e1f29 gui=bold
autocmd User SneakEnter set nocursorline
autocmd User SneakLeave set cursorline
" autocmd InsertEnter call sneak#cancel()
autocmd InsertEnter call sneak#reset('s')
nnoremap <silent> <Esc> :call sneak#cancel() <CR> :call sneak#reset('s') <CR> :noh <CR>
