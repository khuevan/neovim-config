-- Nvim-Dap Virtual Environment Picker
-- Allows selecting virtualenv when debugging Python

local M = {}

function M.pick_virtualenv()
  local venv_path = vim.fn.input("Virtualenv path: ", vim.fn.getcwd() .. "/.venv", "file")
  if venv_path ~= "" then
    vim.g.python_venv = venv_path
    vim.notify("Virtualenv set to: " .. venv_path, vim.log.levels.INFO)
  end
end

-- Auto-detect virtualenv in common locations
function M.detect_virtualenv()
  local locations = {
    ".venv",
    "venv",
    ".env",
    "env",
    "env/bin/activate",
  }
  
  local cwd = vim.fn.getcwd()
  for _, loc in ipairs(locations) do
    local path = cwd .. "/" .. loc
    if vim.fn.isdirectory(path) == 1 or vim.fn.filereadable(path) == 1 then
      return path
    end
  end
  return nil
end

-- Show current virtualenv status
function M.status()
  local venv = vim.g.python_venv or M.detect_virtualenv()
  if venv then
    return "venv: " .. vim.fn.fnamemodify(venv, ":t")
  end
  return "system"
end

vim.api.nvim_create_user_command("VirtualenvPick", M.pick_virtualenv, {
  desc = "Pick virtualenv for Python"
})

vim.api.nvim_create_user_command("VirtualenvStatus", function()
  print(M.status())
end, {
  desc = "Show current virtualenv status"
})

vim.keymap.set("n", "<leader>vp", "<cmd>VirtualenvPick<cr>", {
  noremap = true, silent = true, desc = "Pick virtualenv"
})

vim.keymap.set("n", "<leader>vs", "<cmd>VirtualenvStatus<cr>", {
  noremap = true, silent = true, desc = "Show virtualenv status"
})

return M
