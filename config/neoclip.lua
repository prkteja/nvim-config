require('neoclip').setup({
	history = 1000,
	enable_persistant_history = false,
	db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
	filter = nil,
	preview = true,
	default_register = '"',
	content_spec_column = false,
	on_paste = {
		set_reg = false,
	},
	keys = {
		i = {
		  select = '<cr>',
		  paste = '<c-p>',
		  paste_behind = '<c-k>',
		  custom = {},
		},
		n = {
		  select = '<cr>',
		  paste = 'p',
		  paste_behind = 'P',
		  custom = {},
		},
	},
})
