# Mark's nVim Config
In order to use this config, you must place it at 
`.config/nvim/init.vim`
You may may need to create the directory if it does not already exist,
also make sure nVim is install and you can use it.

## Initial Sets:
Basic things such as,
* show matching brackets
* middle-click paste
* tabs = 4 spaces
* converts tabs to whitespace
* auto indent
* line numbers
* syntax highlighting

## Plugin Manager
I use the plugin manager, [vim plug](https://github.com/junegunn/vim-plug) 
to install and update my plugins.

You can install quickly with the following command,
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After which you can add new plugins by placing them in between the 
plugin code in init.vim

Example (for NERDTree):
```
call plug#begin()
 Plug `scrooloose/nerdtree`
call plug#end()
```
Use ```:PlugInstall``` to install plugins.

## Plugins I use in my workflow

#### 1: NERDTree
Used for file navigation inside of nVim itself. 
Here are some quick commands to get started.
* `:help NERDTreeMappings`	- For all shortcuts
* `:help NERDTrees`			- For general help
* `I` - Toggle hidden files
* `m` - Show NERDTree menu
* `R` - Refresh the tree (useful if files changed outside nVim)
* `t` - Open the selected file in a new tab
* `i` - Open the selected file in a horzontal split
* `s` - Open the selected file in a vertical split
