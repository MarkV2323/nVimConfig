local builtin = require('telescope.builtin')

-- Used for general file search
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Used for grepping
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Used for git repo file search
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
