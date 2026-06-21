-- Options are automatically loaded before lazy.nvim startup
vim.g.lazyvim_check_order = false

local opt = vim.opt

-- Base Configuration Options
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = false

if vim.fn.has("wsl") == 1 then
  -- We use the absolute path so Neovim never lags searching for the executable
  local win32yank_path = "/usr/bin/win32yank.exe"

  vim.g.clipboard = {
    name = "wsl-async-fast",
    copy = {
      ["+"] = { win32yank_path, "-i", "--crlf" },
      ["*"] = { win32yank_path, "-i", "--crlf" },
    },
    paste = {
      ["+"] = { win32yank_path, "-o", "--lf" },
      ["*"] = { win32yank_path, "-o", "--lf" },
    },
    cache_enabled = 1, -- Caches clipboard states to completely protect typing speed
  }
end

-- 2. Utility Keymaps
vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Force Window Splits to work everywhere (Fixes missing shortcuts)
vim.keymap.set("n", "<leader>-", "<cmd>split<cr>", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<cr>", { desc = "Split Window Vertically" })
