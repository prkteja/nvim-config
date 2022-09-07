let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
set cursorline
highlight Visual guibg=#323661
highlight Search guibg=#323681 guifg=#8ebd6b gui=bold
highlight IncSearch guibg=#323681 guifg=#e2b86b gui=bold
highlight IndentBlanklineContextChar guifg=#687890 gui=nocombine

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
		highlight = "Function"
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
