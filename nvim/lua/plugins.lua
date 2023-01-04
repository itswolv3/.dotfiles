return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' --Packer
	use 'neoclide/coc.nvim' -- Coc 
	use 'navarasu/onedark.nvim' -- Theme One Dark
	use 'maxmellon/vim-jsx-pretty'-- React Syntax highlighting
	use 'pangloss/vim-javascript' --JS Syntax
	use 'mxw/vim-jsx' -- React Syntax
	use 'ervandew/supertab' -- Tab Completion
	use 'tpope/vim-fugitive' -- Git wrapper
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'posva/vim-vue' -- Vue plugin
end)
