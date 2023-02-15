-- General settings
vim.g.mapleader = ' '
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false

-- Remap ESC to jk
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
-- Telescope Keymaping
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>fe', '<cmd>Ex<cr>', { noremap = true })

-- Plugins
require("plugins")

-- Colorschemes & Visual
-- require("colors.onedark")
require("colors.rose-pine")
require("lualine").setup()

vim.cmd("colorscheme onedark")
