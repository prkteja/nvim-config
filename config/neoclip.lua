require('neoclip').setup({
	history = 1000,
	enable_persistent_history = false,
	db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
	filter = nil,
	preview = true,
	default_register = '"',
	content_spec_column = false,
	on_paste = {
		set_reg = false,
	},
	keys = {
		telescope = {
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
        fzf = {
          select = 'default',
          paste = 'ctrl-p',
          paste_behind = 'ctrl-k',
          custom = {},
        },
	},
})

require('telescope').load_extension('neoclip')
