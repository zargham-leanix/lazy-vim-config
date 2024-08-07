return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- only to set toggle = false
    -- {
    --   "<leader>e",
    --   function()
    --     require("neo-tree.command").execute({ toggle = false, dir = vim.uv.cwd() })
    --   end,
    --   desc = "Explorer NeoTree (Root Dir)",
    -- },
  },
  opts = {
    window = {
      mappings = {
        ["F"] = {
          function(state)
            local node = state.tree:get_node()
            if not node then
              return
            end
            require("telescope.builtin").live_grep({ search_dirs = { node.path } })
          end,
          desc = "Find in folder",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
        never_show = {},
      },
    },
  },
}
