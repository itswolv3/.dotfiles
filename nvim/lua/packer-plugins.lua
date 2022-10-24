return require('packer').startup(function(use)
	-- Packer manages itself
	use 'wbthomason/packer.nvim'
	
	-- Colorscheme
	use 'catppuccin/nvim'

	-- Coc
	use 'neoclide/coc.nvim'
end)

