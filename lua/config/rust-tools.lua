-- Rust Tools Configuration
-- Note: rust-tools uses lspconfig internally
local rust_tools_ok, rust_tools = pcall(require, "rust_tools")
if rust_tools_ok then
  rust_tools.setup({})
end
