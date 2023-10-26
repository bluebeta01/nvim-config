local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"ellisonleao/gruvbox.nvim",
	"nvim-telescope/telescope-fzf-native.nvim",
	"nvim-treesitter/nvim-treesitter",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig",
	"VonHeikemen/lsp-zero.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp"
})
