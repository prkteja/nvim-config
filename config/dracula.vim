colorscheme dracula
set cursorline
" hi Normal guibg=NONE ctermbg=NONE
highlight! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
highlight CursorLine guibg=#363848
highlight Visual guibg=#40106a
highlight Search guibg=#383a59 guifg=#50fa7b gui=bold
highlight IncSearch guibg=#383a59 guifg=#ffb86c gui=bold
highlight IndentBlanklineContextChar guifg=#7068a0 gui=nocombine
set fillchars+=vert:\▕
set fillchars+=vertleft:\▕
set fillchars+=vertright:\▕

" fixes
hi VertSplit guibg=#1e1f29 guifg=bg gui=reverse
hi WinSeparator gui=reverse cterm=reverse guibg=#1e1f29 guifg=bg
hi StatusLine guibg=#282a36
hi StatusLineNC guibg=#282a36
hi GitSignsDelete guibg=#282a36 guifg=#ff5555 
hi PmenuSel guibg=#BD93F9 guifg=#1e1f29

lua << EOF

colors = {
  bg = "#282A36",
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",
  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50fa7b",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  blue = "#8BE9FD",
  pink = "#FF79C6",
  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",
  menu = "#21222C",
  visual = "#3E4452",
  gutter_fg = "#4B5263",
  nontext = "#3B4048",
  white = "#ABB2BF",
  black = "#191A21",
  scrollbar = "#2f313f"
}

lualine_theme = "dracula-nvim"

bufferline_highlights = {
	fill = {
		guibg = colors.menu
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
		highlight = "Error"
	  },
	},
}

EOF

