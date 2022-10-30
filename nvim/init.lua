vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })

require("plugins")
