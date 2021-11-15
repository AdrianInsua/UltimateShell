"Browser
"
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'selector': 'textarea:not([role=combobox])', 'takeover': 'never' }
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,js'
