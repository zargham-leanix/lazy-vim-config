local dap_config = {
  type = "node",
  name = "Jest - Current File",
  request = "launch",
  protocol = "inspector",
  skipFiles = { "<node_internals>/**/*.js" },
  console = "integratedTerminal",
  cwd = "${workspaceFolder}",
  program = "${workspaceFolder}/node_modules/.bin/nx",
  args = {
    "run",
    "pathfinder:test",
    "--test-file",
    "${file}",
    "--skip-nx-cache",
  },
  disableOptimisticBPs = true,
  resolveSourceMapLocations = { "!**/node_modules/**" },
}

return {
  {
    "mfussenegger/nvim-dap",
-- stylua: ignore
    keys = {
      { "<leader>j", "", desc = "+jest", mode = { "n", "v" } },
      { "<leader>jd", function() require("dap").run(dap_config) end, desc = "Debug current file", },
    },
  },
  {
    "David-Kunz/jester",
    opts = {
      cmd = "node node_modules/.bin/jest -t '$result' -- $file", -- run command
    },
-- stylua: ignore
    keys = {
      { "<leader>jt", function() require("jester").run() end, desc = "Run test under cursor", },
      { "<leader>jf", function() require("jester").run_file({ cmd = "node node_modules/.bin/jest -- $file", }) end, desc = "Run file", },
    },
  },
}
