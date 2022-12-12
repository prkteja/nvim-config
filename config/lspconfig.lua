require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.gopls.setup{}

vim.g.diagnostics_active = true
function _G.toggle_diagnostics()
  vim.g.diagnostics_active = not vim.g.diagnostics_active
  if vim.g.diagnostics_active then
	vim.api.nvim_echo({ { "Diagnostics enabled" } }, false, {})
	vim.diagnostic.enable()
  else
	vim.api.nvim_echo({ { "Diagnostics disabled" } }, false, {})
	vim.diagnostic.disable()
  end
end

vim.api.nvim_set_keymap('n', '<leader>dd', ':call v:lua.toggle_diagnostics()<CR>',  {noremap = true, silent = true})

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = false,
  underline = true,
  update_in_insert = true,
})

-- local signs = { Error = "• ", Warning = "• ", Hint = "• ", Information = "• " }
-- for type, icon in pairs(signs) do
--   local hl = "LspDiagnosticsSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
-- end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '●', '▎', 'x'
  }
})

function LspDiagnosticsFocus()
    vim.api.nvim_command('set eventignore=WinLeave')
    vim.api.nvim_command('autocmd CursorMoved <buffer> ++once set eventignore=""')
    vim.diagnostic.open_float(nil, {focusable = true, scope = 'line', close_events = {"CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre", "WinLeave"}})
end

