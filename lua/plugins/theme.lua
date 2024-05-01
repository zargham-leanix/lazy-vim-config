return {
  -- add gruvbox
  { "navarasu/onedark.nvim", opts = {
    style = "deep",
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
