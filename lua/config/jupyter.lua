-- Jupyter Integration
-- Run Jupyter cells in Neovim

local M = {}

-- Get or create a jupyter terminal
function M.get_jupyter_terminal()
  -- Check if there's an existing terminal
  for _, term in ipairs(require("toggleterm.terminal").terminals) do
    if term and term.job_id and term:is_visible() == false then
      return term
    end
  end
  return nil
end

-- Send code to Jupyter
function M.send_cell()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local code = table.concat(lines, "\n")
  M.send_code(code)
end

function M.send_selection()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  local code = table.concat(lines, "\n")
  M.send_code(code)
end

function M.send_code(code)
  local term = M.get_jupyter_terminal()
  if not term then
    vim.cmd("ToggleTermSendVisualSelection")
    vim.notify("Started Jupyter terminal. Run 'jupyter console' or 'jupyter qtconsole' first.", vim.log.levels.INFO)
    return
  end
  
  -- Send to terminal
  term:send(code .. "\n")
end

-- Run current line as cell
function M.run_cell()
  local line = vim.api.nvim_get_current_line()
  if line:match("^%s*$") then
    vim.notify("Empty line", vim.log.levels.WARN)
    return
  end
  M.send_code(line)
end

-- Restart Jupyter kernel
function M.restart_kernel()
  M.send_code("%reset")
end

-- Commands
vim.api.nvim_create_user_command("JupyterSendCell", M.send_cell, {
  desc = "Send entire file to Jupyter"
})

vim.api.nvim_create_user_command("JupyterRestart", M.restart_kernel, {
  desc = "Restart Jupyter kernel"
})

-- Keybindings
vim.keymap.set("n", "<leader>jc", "<cmd>JupyterSendCell<cr>", {
  noremap = true, silent = true, desc = "Jupyter: Send cell"
})

vim.keymap.set("v", "<leader>jc", ":<C-U>JupyterSendCell<cr>", {
  noremap = true, silent = true, desc = "Jupyter: Send selection"
})

vim.keymap.set("n", "<leader>jr", M.run_cell, {
  noremap = true, silent = true, desc = "Jupyter: Run current line"
})

vim.keymap.set("n", "<leader>jk", "<cmd>JupyterRestart<cr>", {
  noremap = true, silent = true, desc = "Jupyter: Restart kernel"
})

return M
