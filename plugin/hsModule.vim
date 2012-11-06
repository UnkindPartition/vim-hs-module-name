command! InsertHaskellModuleName exe "normal! i".hsModule#MkModuleHeader()

if !exists('g:hs_module_no_mappings')
  autocmd FileType haskell nnoremap <buffer> M :InsertHaskellModuleName<CR>
endif

if !exists('g:hs_module_no_auto')
  autocmd BufNewFile *.hs InsertHaskellModuleName
endif
