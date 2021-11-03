local opts = {
  log_level = 'info',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = {'/', '/home/rohit/', '/home/rohit/.config', '/home/rohit/Desktop/*'},
  pre_save_cmds = {"NvimTreeClose", "ToggleTermCloseAll"},
}

vim.o.sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"
require('auto-session').setup(opts)
