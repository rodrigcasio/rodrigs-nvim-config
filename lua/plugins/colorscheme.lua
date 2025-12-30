-- ~/.config/nvim/lua/plugins/colorscheme.lua
-- if wanting to use tokyonight colorscheme, uncomment  tokyonight settings
return {

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "storm", -- day moon, night, storm(best)
      transparent = true,
      styles = {
        sidebards = "transparent",
        floats = "transparent",
      },
    },
  },

  -- If want to use default nvim colorscheme:
  -- {
  --   "LazyVim/LazyVim",
  --   -- ensures it runs last
  --   -- priority = 1000,
  --   config = function()
  --     -- setting colorscheme
  --     -- colorscheme (fav: default(best), blue, darkblue, habamax, murphy, slate, elflord, default)
  --     vim.cmd.colorscheme("darkblue")
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
