-- nvim-web-devicons configuration with Seti style
require("nvim-web-devicons").setup({
  -- Seti style icons
  override = {
    -- JavaScript / TypeScript
    js = { icon = "󰌞", color = "#f7df1e", name = "Js" },
    ts = { icon = "󰛦", color = "#3178c6", name = "Ts" },
    jsx = { icon = "󰜈", color = "#61dafb", name = "Jsx" },
    tsx = { icon = "󰜈", color = "#61dafb", name = "Tsx" },
    
    -- Python
    py = { icon = "󰌠", color = "#3776ab", name = "Py" },
    python = { icon = "󰌠", color = "#3776ab", name = "Py" },
    
    -- Rust
    rs = { icon = "󱘗", color = "#dea584", name = "Rs" },
    
    -- Lua
    lua = { icon = "󰢱", color = "#51a0cf", name = "Lua" },
    
    -- JSON / YAML
    json = { icon = "󰘦", color = "#cbcb41", name = "Json" },
    yaml = { icon = "󰘬", color = "#cb171e", name = "Yaml" },
    yml = { icon = "󰘬", color = "#cb171e", name = "Yaml" },
    
    -- Markdown
    md = { icon = "󰍔", color = "#519aba", name = "Md" },
    markdown = { icon = "󰍔", color = "#519aba", name = "Md" },
    
    -- HTML / CSS
    html = { icon = "󰌝", color = "#e34c26", name = "Html" },
    css = { icon = "󰌜", color = "#563d7c", name = "Css" },
    scss = { icon = "󰠟", color = "#c6538c", name = "Scss" },
    sass = { icon = "󰠟", color = "#c6538c", name = "Sass" },
    
    -- Git
    git = { icon = "󰊤", color = "#f14e32", name = "Git" },
    
    -- Terminal
    sh = { icon = "󰆍", color = "#89e051", name = "Sh" },
    bash = { icon = "󰆍", color = "#89e051", name = "Bash" },
    zsh = { icon = "�hljs", color = "#89e051", name = "Zsh" },
    
    -- Config files
    toml = { icon = "󰘦", color = "#9c4221", name = "Toml" },
    ini = { icon = "󰘦", color = "#6d8086", name = "Ini" },
    
    -- Docker
    dockerfile = { icon = "󰡨", color = "#2496ed", name = "Docker" },
    
    -- Database
    sql = { icon = "󰎁", color = "#e38c00", name = "Sql" },
    
    -- Images
    png = { icon = "󰈞", color = "#89ab8a", name = "Png" },
    jpg = { icon = "󰈞", color = "#89ab8a", name = "Jpg" },
    jpeg = { icon = "󰈞", color = "#89ab8a", name = "Jpeg" },
    gif = { icon = "󰈞", color = "#89ab8a", name = "Gif" },
    svg = { icon = "󰊴", color = "#ffb13b", name = "Svg" },
    
    -- Misc
    txt = { icon = "󰈙", color = "#6d8086", name = "Txt" },
    pdf = { icon = "󰈦", color = "#cc0000", name = "Pdf" },
    zip = { icon = "󰗜", color = "#6d8086", name = "Zip" },
    rar = { icon = "󰗜", color = "#6d8086", name = "Rar" },
  },
  
  -- Color for files based on extension
  override_by_extension = {
    ["log"] = { color = "#999999", name = "Log" },
    ["env"] = { color = "#ecd53f", name = "Env" },
    ["gitignore"] = { color = "#f05032", name = "GitIgnore" },
  },
  
  -- Enable globally
  default = true,
})
