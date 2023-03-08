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


### Hotkey Cheatsheet
<details>
<summary>Click Me!</summary>
<kbd>SPACE</kbd> - Leader Key  
<kbd>LEADER</kbd> + <kbd>p</kbd>  + <kbd>v</kbd>  - Used to get into NetRW (nVim file browser)  
<kbd>LEADER</kbd> + <kbd>p</kbd>  + <kbd>f</kbd>  - General File Search via Telescope Fuzzy Finder  
</details>
 
