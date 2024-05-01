-- do not use lazyVim if editor is vscode
if vim.fn.exists("g:vscode") ~= 0 then
  require("vscode.keymaps")
  require("vscode.options")
  vim.cmd("source $HOME/.config/nvim/lua/vscode/settings.vim")
  return
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
