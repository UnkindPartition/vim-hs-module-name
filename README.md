# haskell-module-name Vim plugin

This vim plugin can automatically figure out and insert the name of a Haskell
module based on the filename.

## Installation

This plugin is [pathogen][pathogen]-compatible. If you use pathogen, just clone
or copy this repo under `~/.vim/bundle`.

Otherwise, use something like

    cp -r vim-hs-module-name/* ~/.vim/

## Usage
### Automatic insertion
When you create a new `.hs` file, the header

    module Foo.Bar where

is automatically inserted, where `Foo.Bar` is the module name inferred from the
file name.

Set the `g:hs_module_no_auto` variable to disable this.

### Manual insertion
When you are in a buffer with the `haskell` filetype, press `M` to insert the
module header as described above.

Set the `g:hs_module_no_mappings` variable to disable this.

## How the inference works
The components of the module name are assumed to be the largest
prefix of the file path components where all the components start with
capital letters.

E.g. for the file

    /home/User/project/src/Foo/Bar.hs

the module name is inferred to be `Foo.Bar`. This works pretty well in
practice.

[pathogen]: https://github.com/tpope/vim-pathogen
