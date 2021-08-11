require('lualine').setup{
	options = {
		theme = "dracula", 
		section_separators = '', 
		component_separators = '',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {'filename', {'diff', symbols = {added = '烙', modified = ' ', removed = ' '}}},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
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
	extensions = {'nvim-tree'}
}

