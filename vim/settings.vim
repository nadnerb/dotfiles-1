let vimsettings = '~/.vim/settings'
let uname = system("uname -s")
let mapleader=";"

" leader-e for showing nerd-tree
 map <leader>e :NERDTreeToggle<cr>
 map <leader>r :NERDTreeFind<cr>
" " show hidden files
 let NERDTreeShowHidden=1

nmap <leader>cp :CopyPath<cr>

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor
