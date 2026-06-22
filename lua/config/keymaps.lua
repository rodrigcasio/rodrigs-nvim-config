-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Command-line abreviation for safe buffer deletion

vim.cmd([[
  cnoreabbrev <expr> bdq (getcmdtype() == ':' && getcmdline() =~ '^bdq$') ? 'bn|bd#' : 'bdq'
]])
