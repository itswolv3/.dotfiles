vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<leader>y", vim.cmd('"+y'))

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('v', '<leader>yy', '"*y') 
