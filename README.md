# Mark's Lua NeoVim Configuration Setup

### Lua Version Information
Ensure the directory `.config/nvim/` exists first.
You can then place the files from the lua version into that directory.
The lua version is the more recent version and should be preferred compared to the vimscript one.


As for the file structure inside of the lua version, the basic files are,
* `init` - actual entry point of nVim config
* `lua/mark/init` - contains code for inital entry 
* `lua/mark/packer` - contains the code for the plugin manager 
* `lua/mark/remap` - for key remaps 
* `lua/mark/set` - for non plugin config sets AND leader key remap

While lua configs related directly to plugins can be found as,
* `after/plugin/colors` - for config related to nord colorscheme plugin
* `after/plugin/comment` - for config related to nvim-comment plugin
* `after/plugin/lsp` - for config related to lsp-zero plugin
* `after/plugin/telescope` - for config related to telescope (fuzzy finder) plugin
* `after/plugin/treesitter` - for config related to treesitter (code parsing) plugin


### Plugin Manager
I use the plugin manager, `packer` to install and update my plugins.

You will need to install this prior to setting up the lua config, you can find this easily on the GitHub Repo.

After which you can add new plugins by placing them in between the 
plugin code in init.vim

Use ```:PackerSync``` to install plugins after placing them in `lua/mark/packer.lua` correctly. Make sure to ```:so``` to source as well.

After installing a plugin, you should ensure a config file under `after/plugin` is created for this plugin to begin using it.


 
### Old VimScript Version Information
<details>
<summary>Click me</summary>
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
</details>
