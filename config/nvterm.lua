require("nvterm").setup({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .3 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
})

vim.api.nvim_set_keymap('n', '<M-t>', ':lua require("nvterm.terminal").toggle "horizontal"<CR>',  {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<M-t>', '<C-\\><C-n>:lua require("nvterm.terminal").toggle "horizontal"<CR>',  {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('t', '<M-;>', '<C-\\><C-n>',  {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<M-k>', '<C-\\><C-n>:wincmd k<CR>',  {noremap = true, silent = true})
vim.api.nvim_create_autocmd('TermOpen',  {pattern='*', command='set nocursorline'})
vim.api.nvim_create_autocmd('TermOpen',  {pattern='*', command='setlocal signcolumn=yes'})
