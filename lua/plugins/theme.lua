return {
  -- add gruvbox
  { "olimorris/onedarkpro.nvim", opts = {

    colors = {
      onedark = { bg = "#17191e" },
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
