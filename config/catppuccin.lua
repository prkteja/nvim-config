vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]
vim.cmd [[set cursorline]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#7068a0 gui=nocombine]]

bufferline_highlights = {
	indicator_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "Exception"
	  },
	},
	close_button_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "Error"
	  },
	},
}
