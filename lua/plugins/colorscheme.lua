-- ~/.config/nvim/lua/plugins/colorscheme.lua

-- colorscheme (fav: default (best),  sobert, darkblue, murphy, slate, elflord, default)
return {
  {
    "folke/tokyonight.nvim",
    -- when wanting to use tokyo, delete this
    -- enable = false,
    priority = 1000,
    opts = {
      style = "storm",
      transparent = true,
      styles = {
        sidebards = "transparent",
        floats = "transparent",
      },
    },
  },

  -- -- CURRENTLY IN USE:
  -- {
  --   "LazyVim/LazyVim",
  --   -- ensures it runs last
  --   -- priority = 1000,
  --   config = function()
  --     -- setting colorscheme
  --     vim.cmd.colorscheme("default")
  --
  --     vim.api.nvim_set_option("background", "dark") -- Set to dark for best contrast with the 'quiet' theme
  --     vim.api.nvim_set_option("termguicolors", true) -- Required for modern color support
  --     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --     -- Optional: Apply transparency to the status line (lualine) and pop-ups
  --     vim.api.nvim_set_hl(0, "LualineBg", { bg = "none" })
  --   end,
  -- },
}
