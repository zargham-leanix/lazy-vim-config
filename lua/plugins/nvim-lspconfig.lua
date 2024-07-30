return {
  "neovim/nvim-lspconfig",
  opts = {
    -- to hide virtual text for types
    inlay_hints = { enabled = false },
    diagnostics = {
      virtual_text = false,
    },
  },
}
