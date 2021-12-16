require('lualine').setup{
	options = {
		theme = "dracula-nvim",
		-- theme = "onedark",
		section_separators = '', 
		component_separators = '',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {'filename', {'diff', symbols = {added = '烙', modified = ' ', removed = ' '}}},
		lualine_x = {
						{
						  'diagnostics',
						  -- table of diagnostic sources, available sources:
						  -- nvim_lsp, coc, ale, vim_lsp
						  sources = {'nvim_lsp'},
						  -- displays diagnostics from defined severity
						  sections = {'error', 'warn', 'info', 'hint'},
						  symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}
						}, 
						'encoding', {'fileformat', icons_enabled = false}, 'filetype'
					},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	  },
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	extensions = {'nvim-tree', {sections = {lualine_a = {'filetype'}}, filetypes = {'Outline'}}}
}

