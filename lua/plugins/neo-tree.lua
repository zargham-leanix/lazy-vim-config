return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- only to set toggle = false
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = false, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
}
