vim9script

# Global mapping
nmap <silent> gd :LspGotoDefinition<CR>
nmap <silent> gD :LspGotoDeclaration<CR>
nmap <silent> gi :LspGotoImp<CR>
nmap <silent> gh :LspHover<CR>
nmap <silent> gr :LspShowReferences<CR>
nmap <silent> gc :LspCodeLens<CR>

var lspOpts = {
    autoComplete: true,
    autoHighlightDiags: true,
    autoHighlight: false,
    echoSignature: true,
    hoverInPreview: false,
    bufferCompletionTimeout: 100,
}
autocmd User LspSetup call LspOptionsSet(lspOpts)

var lspServers = [
    {
	    name: 'golang',
	    filetype: ['go', 'gomod'],
	    path: 'gopls',
	    args: ['serve'],
	    syncInit: true
    },
    {
	    name: 'python',
	    filetype: 'python',
	    path: 'pyright-langserver',
	    args: ['--stdio'],
        workspaceConfig: {
            python: {
                pythonPath: 'python3'
            }
        }
    },
]
autocmd User LspSetup call LspAddServer(lspServers)

# Auto-format when saving files
autocmd BufWritePre *.go LspFormat

