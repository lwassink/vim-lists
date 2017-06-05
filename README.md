# vim-lists

Vim-lists makes bulleted and numbered lists easy in Vim.
If you're editing a text or markdown document and you begin a line with one of a list of preset headers, when you hit return, that header will automatically be added to the begining of the next line.
For example, if you're at the end of the following line
```
* This is a point
```
and you hit return, you will see this
```txt
* This is a point
* 
```
To end the list, just hit enter twice.
Numerical lists will automatically increment.

Accepted headers are
```txt
* Point
-- Other point
1. Yet another point
2) A final point
```

## Instalation

If you use Pathogen, run the following:
```bash
cd ~/.vim/bundle
git clone git@github.com:lwassink/vim-lists.git
```

If you use Vundle, add the following line to your `.vimrc` file:
```vim
Plugin 'https://github.com/lwassink/vim-lists.git'
```
then run the Vim command `:PluginUpdate`.

