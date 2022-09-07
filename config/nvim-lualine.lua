require('lualine').setup{
	options = {
		theme = lualine_theme,
		section_separators = '', 
		component_separators = '',
	},
	sections = {
		lualine_a = {{'mode', fmt = function(str) return ' ' end, padding = { left = 0, right = 0 } }},
		lualine_b = {'branch'},
		lualine_c = {'filename', {'diff', symbols = {added = '烙', modified = ' ', removed = ' '}}},
		lualine_x = {'g:coc_status',
						{
						  'diagnostics',
						  -- table of diagnostic sources, available sources:
						  -- nvim_lsp, coc, ale, vim_lsp
						  sources = {'nvim_diagnostic'},
						  -- displays diagnostics from defined severity
						  sections = {'error', 'warn', 'info', 'hint'},
						  symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}
						}, 
						'encoding', {'fileformat', icons_enabled = false}, 'filetype', 'progress' 
					},
		lualine_y = {'location'},
		lualine_z = {}
	  },
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
}

