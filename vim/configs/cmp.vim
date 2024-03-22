vim9script

# set omnifunc=syntaxcomplete#Complete

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

var options = {
    completor: {
        noNewLineInCompletionEver: true,
        shuffleEqualPriority: true, 
        postfixHighlight: true,
    },
    buffer: { enable: true, priority: 10, urlComplete: true, envComplete: true },
    lsp: { enable: true, priority: 10, maxCount: 5 },
    omnifunc: { enable: false, priority: 8, filetypes: ['python', 'javascript'] },
    vimscript: { enable: true, priority: 11 },
}
autocmd VimEnter * g:VimCompleteOptionsSet(options)
