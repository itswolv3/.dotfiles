vim.g.mapleader = "?"
vim.g.catppuccin_flavor = "macchito"
vim.api.nvim_set_keymap('i', 'jk' ,'<ESC>', { noremap = true })

vim.o.relativenumber = true
vim.o.number = true
vim.o.nowrap = true
vim.o.showcmd = true

vim.cmd[[colorscheme catppuccin]]

require 'packer-plugins'

require 'color'

