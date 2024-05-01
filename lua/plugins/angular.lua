return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      angularls = {
        root_dir = require("lspconfig/util").root_pattern("project.json", "angular.json"),
      },
    },
  },
}
