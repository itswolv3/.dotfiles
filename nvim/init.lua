vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Tab>', "pumvisible() ? '<C-n>' : '<Tab>'", { noremap = true, silent = true, expr = true, replace_keycodes = false })

require("plugins")
