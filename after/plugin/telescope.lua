local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- search files
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- search git files
vim.keymap.set('n', '<leader>ps', function() -- search word in files
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
