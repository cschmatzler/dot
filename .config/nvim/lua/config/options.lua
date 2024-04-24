local g = vim.g
local opt = vim.opt

g.autoformat = true
g.root_spec = { ".git", "lsp", "cwd" }
g.lazygit_config = false
opt.formatoptions = "jcroqlnt"
opt.textwidth = 120
opt.colorcolumn = "121"
opt.expandtab = true
opt.shiftwidth = 2
