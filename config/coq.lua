vim.o.completeopt = 'menuone,noselect,noinsert'
vim.o.showmode = false
vim.g.coq_settings = {
	auto_start = 'shut-up', 
	display = { 
		icons = {
			mode = 'none'
		},
		pum = {
			source_context = {"「", " 」"}
		}
	},
	keymap = {
		-- recommended = false,
		jump_to_mark = "<c-,>"
	}
}

