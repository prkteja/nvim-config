colorscheme onedark
set cursorline
highlight Search guibg=#44475a guifg=#50fa7b gui=bold
highlight IncSearch guibg=#44475a guifg=#ffb86c gui=bold
highlight IndentBlanklineContextChar guifg=#7068a0 gui=nocombine

lua << EOF

lualine_theme = "onedark"

bufferline_highlights = {
	fill = {
	   guibg = {
	     attribute = "bg",
	     highlight = "NvimTreeNormal"
	   }
	},

	indicator_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "Constant"
	  },
	},
	close_button_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "ErrorMsg"
	  },
	},
}

EOF
