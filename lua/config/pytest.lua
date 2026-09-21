-- Pytest Integration
-- Run tests directly from Neovim

vim.api.nvim_create_user_command("Pytest", function(opts)
  local args = opts.args
  local cmd = "pytest " .. args
  
  if args == "" then
    -- Run all tests in current file
    cmd = "pytest " .. vim.fn.expand("%")
  end
  
  vim.cmd("ToggleTerm cmd=" .. cmd)
end, {
  nargs = "*",
  desc = "Run pytest"
})

-- Quick test shortcuts
vim.keymap.set("n", "<leader>pt", "<cmd>Pytest<cr>", { noremap = true, silent = true, desc = "Run all tests" })
vim.keymap.set("n", "<leader>pc", "<cmd>Pytest -v<cr>", { noremap = true, silent = true, desc = "Run tests verbose" })
vim.keymap.set("n", "<leader>pd", "<cmd>Pytest -xvs<cr>", { noremap = true, silent = true, desc = "Run tests debug (stop on first failure)" })
