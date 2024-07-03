local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  { "rose-pine/neovim", name = "rose-pine" },

      {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {"ThePrimeagen/harpoon"},

    --- Uncomment the two plugins below if you want to manage the language servers from neovim
 {'williamboman/mason.nvim'},
 {'williamboman/mason-lspconfig.nvim'},

{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip'},

{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
{"mbbill/undotree"},
{'hrsh7th/vim-vsnip'},
{'hrsh7th/vim-vsnip-integ'},
-- {'matveyt/neoclip'}
})
