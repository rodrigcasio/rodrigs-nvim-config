-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      -- styles (storm, day, night, moon)
      style = "storm",
      transparent = true,
      styles = {
        sidebards = "transparent", -- transparent sidebards (nvim-tree)
        floats = "transparent",
      },
    },
  },
}
