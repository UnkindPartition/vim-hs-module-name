command! InsertHaskellModuleName exe "normal! i".hsModule#MkModuleHeader()

if !exists('g:hs_module_no_mappings')
  if !exists('g:hs_module_mapping')
    let g:hs_module_mapping = 'M'
  endif

  exec 'autocmd FileType haskell nnoremap <buffer> ' .
     \ g:hs_module_mapping .
     \ ' :InsertHaskellModuleName<CR>'
endif

if !exists('g:hs_module_no_auto')
  autocmd BufNewFile *.hs InsertHaskellModuleName
endif
