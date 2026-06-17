-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_check_order = false

local opt = vim.opt

-- 1. Your original clipboard choice + new options
opt.clipboard = "unnamedplus"
opt.relativenumber = true

-- 2. Fix ghost characters by stopping tmux cursor shaping modifications
opt.guicursor = ""

-- 3. Seamless Windows Clipboard Sync
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))",
    ["*"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))",
  },
  cache_enabled = 0,
}
-- Force cursor shaping OFF after plugins try to override it
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.opt.guicursor = ""
  end,
})
