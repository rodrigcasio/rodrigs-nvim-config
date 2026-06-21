-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_check_order = false

local opt = vim.opt

-- 1. Base Configuration Options
opt.clipboard = "unnamedplus"
opt.relativenumber = true

-- Smart Clipboard: Detects if running on native Linux or Windows/WSL
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
else
  -- Native Linux (Arch) Clipboard Settings
  opt.clipboard = "unnamedplus"
end

-- 2. Utility Keymaps
-- Pressing Esc twice in Normal Mode instantly clears search highlights
vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
