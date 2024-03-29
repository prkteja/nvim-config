set cursorline
set fillchars+=vert:\▕
set fillchars+=vertleft:\▕
set fillchars+=vertright:\▕


lua << EOF
vim.g.monokaipro_filter = "spectrum"
vim.g.monokaipro_italic_functions = false
vim.g.monokaipro_terminal_colors = true
vim.g.monokaipro_flat_term = true
vim.g.monokaipro_transparent = false
vim.g.monokaipro_flat_float = true
vim.g.monokaipro_colors = { bg = "#1e1e1e" }
lualine_theme = "monokaipro"
bufferline_highlights = {
	fill = {
		bg = "#141414"
	},
	indicator_selected = {
	  fg = {
		attribute = "fg",
		highlight = "Directory"
	  },
	},
	close_button_selected = {
	  fg = {
		attribute = "fg",
		highlight = "Error"
	  },
	},
}

EOF

colorscheme monokaipro
hi Pmenu guibg=#191919
hi TelescopeBorder guibg=#1e1e1e
hi TelescopePromptBorder guibg=#1e1e1e
hi NeoTreeNormal guibg=#191919
hi NeoTreeNormalNC guibg=#191919
hi NeoTreeWinSeparator guibg=#191919 guifg=#191919
