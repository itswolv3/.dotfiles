vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

require("plugins")
require("colors.onedark")
require("lualine").setup()

vim.cmd("colorscheme onedark")
