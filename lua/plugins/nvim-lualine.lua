return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = { { "filename", path = 1 } },
    },
  },
}
