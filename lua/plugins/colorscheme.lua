-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  {
    "folke/tokyonight.nvim",
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
}
