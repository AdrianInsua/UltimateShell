let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_enabled_typescript = ['prettier', 'eslint_d']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_lua = ['luaformatter', 'html-beautify']
let g:neoformat_run_all_formaters = 1

let g:neoformat_stderr = 0
let g:neoformat_verbose = 0

augroup FORMATTER
    autocmd!
    autocmd BufWritePre *.{js,ts} undojoin | Neoformat
augroup END
