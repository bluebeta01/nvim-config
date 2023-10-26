require("lazyinit")
pcall(require('telescope').load_extension, 'fzf')

vim.cmd("colorscheme gruvbox")
vim.cmd("set nu")
vim.cmd("set rnu");

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>fg', require('telescope.builtin').git_files, { desc = '[S]earch Git [F]iles' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
require("telescope").setup({
	defaults = {
		layout_config = {
			horizontal = {
				preview_cutoff = 0
			}
		}
	}
})
require("nvim-treesitter.configs").setup({
	ensure_installed = { "cpp" },
	auto_install = true,
	highlight = {
		enable = true
	}
})
require("mason").setup()
require("lspinit")
