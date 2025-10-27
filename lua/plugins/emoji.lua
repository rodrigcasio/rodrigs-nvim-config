-- to add emotes in LazyVim

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      -- Adding the emoji source to nvim-cmp's list of sources
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
