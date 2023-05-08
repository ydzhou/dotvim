nnoremap <silent> <C-n> :Dirvish<CR> 
" call dirvish#add_icon_fn({ p -> WebDevIconsGetFileTypeSymbol(p,
" p[-1:]=='/'?1:0)  })
let g:dirvish_relative_paths = 1
let g:dirvish_mode = ':sort ,^.*[\/],'
