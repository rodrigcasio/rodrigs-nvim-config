-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_check_order = false

return {
  opt = {
    clipboard = "unnamedplus",
  },
}

local opt = vim.opt

opt.relativenumber = true
opt.guicursor = ""

vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))',
  },
  cache_enabled = 0,
}
