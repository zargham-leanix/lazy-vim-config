return {
  "neovim/nvim-lspconfig",
  opts = {
    -- to hide virtual text for types
    inlay_hints = { enabled = false },
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      ts_ls = {
        enabled = false,
      },
      vtsls = {
        enabled = true,
        settings = {
          vtsls = {
            autouseworkspacetsdk = false,
          },
        },
      },
    },
  },
}
