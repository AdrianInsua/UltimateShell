" debugging
"
nmap <Leader>db :call vimspector#Launch()<CR>
nmap <Leader>dc :VimspectorReset<CR>
nmap <Leader>de :VimspectorEval

nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStopOver
nmap <Leader>dk <Plug>VimspectorStepOut
nnoremap <Leader>d<space> :call vimspector#Continue()<CR>

nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <Leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

let g:vimspector_enable_mappings = 'HUMAN'
