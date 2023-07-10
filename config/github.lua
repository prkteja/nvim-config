-- Example config in Lua
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer", "NvimTree"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- colors = {hint = "orange", error = "#ff0000"},
  colors = {bg = "#232627", bg2 = "#1b1e20"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})

lualine_theme = require('lualine.themes.github_dark')

lualine_theme.normal.c.bg = '#1b1e20'
lualine_theme.insert.c.bg = '#1b1e20'
lualine_theme.visual.c.bg = '#1b1e20'
lualine_theme.replace.c.bg = '#1b1e20'
lualine_theme.command.c.bg = '#1b1e20'

vim.cmd('set cursorline')
vim.cmd('set fillchars+=vert:\\▕')
vim.cmd('set fillchars+=horiz:\\▔')
vim.cmd('set fillchars+=vertleft:\\▕')
vim.cmd('set fillchars+=vertright:\\▕')
vim.cmd('hi VertSplit guibg=#1f2428 guifg=bg')
vim.cmd('highlight IndentBlanklineContextChar guifg=#506070 gui=nocombine')

bufferline_highlights = {
	fill = {
		guibg = {
		  attribute = "bg",
		  highlight = "TabLineFill"
		}
	},
	indicator_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "Directory"
	  },
	},
	close_button_selected = {
	  guifg = {
		attribute = "fg",
		highlight = "ErrorMsg"
	  },
	},
}
