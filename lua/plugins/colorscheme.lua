-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- styles (storm, day, night, moon)
      style = "storm",

      -- This makes the main editor area transparent
      transparent = true,
      styles = {
        sidebards = "transparent", -- transparent sidebards (nvim-tree)
        floats = "transparent",
      },
    },
  },
}
