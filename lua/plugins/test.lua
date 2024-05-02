return {
  { "nvim-neotest/neotest-jest" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      { "nvim-neotest/nvim-nio", version = "1.9.0" },
      "haydenmeade/neotest-jest",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "node node_modules/.bin/jest -- ",

          jestConfigFile = function(file)
            if string.find(file, "/apps/") or string.find(file, "/libs/") then
              print(string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts")
              return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
            end

            print(vim.fn.getcwd() .. "/jest.config.ts")
            return vim.fn.getcwd() .. "/jest.config.ts"
          end,

          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
