-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  -- Targeting the 'tokyonight.nvim' plugin used by lazyvim
  {
    "folke/tokyonight.nvim",
    opts = {

      -- This makes the main editor area transparent
      transparent = true,

      styles = {
        sidebards = "transparent", -- transparent sidebards (nvim-tree)

        floats = "transparent",
      },
    },
  },
}
