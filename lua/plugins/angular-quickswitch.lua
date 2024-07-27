local function find(file_regex, opts)
  return function()
    require("nvim-quick-switcher").find(file_regex, opts)
  end
end

-- Styles
vim.keymap.set("n", "gas", find(".+css|.+scss|.+sass", { regex = true, prefix = "full" }), { desc = "Go to css file" })

-- Tests
vim.keymap.set("n", "gat", find(".+test|.+spec", { regex = true, prefix = "full" }), { desc = "Go to test file" })

-- Component
vim.keymap.set("n", "gac", find(".ts", { regex = true, prefix = "full" }), { desc = "Go to component file" })

-- Html
vim.keymap.set("n", "gah", find(".html", { regex = true, prefix = "full" }), { desc = "Go to html file" })

return {
  "Everduin94/nvim-quick-switcher",
}
