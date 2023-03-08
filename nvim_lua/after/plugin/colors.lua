function ColorEntry(color)
	-- Grab a default color scheme
	color = color or "nord"
	
	-- Nord Config
	vim.g.nord_contrast = true
	vim.g.nord_borders = false
	vim.g.nord_disable_background = false
	vim.g.nord_italic = true
	vim.g.nord_uniform_diff_background = true
	vim.g.nord_bold = true
	
	-- Set the colorscheme
	vim.cmd.colorscheme(color)
end

ColorEntry()
