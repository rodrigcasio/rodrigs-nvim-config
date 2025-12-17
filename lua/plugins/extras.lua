-- ~/.config/nvim/lua/plugins/extras.lua
-- This file contains ALL your active LazyVim Extras (bundles of plugins).

return {
  -- Languages
  { import = "lazyvim.plugins.extras.lang.python" },  -- to mute these LSP python warngins with :LspStop ruff/pyright OR :lua vim.diagnostic.enable(false)
  { import = "lazyvim.plugins.extras.lang.json" },
  -- NEW: JavaScript/TypeScript support
  { import = "lazyvim.plugins.extras.lang.typescript" },
  -- Editor/UI
  { import = "lazyvim.plugins.extras.editor.navic" },
}
