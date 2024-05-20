return {
  -- add gruvbox
  { "olimorris/onedarkpro.nvim", opts = {

    colors = {
      onedark = {},
    },
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
