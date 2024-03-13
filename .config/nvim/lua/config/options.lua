local g = vim.g
local opt = vim.opt

g.autoformat = true
g.root_spec = { ".git", "lsp", "cwd" }
opt.formatoptions = "jcroqlnt"
opt.textwidth = 110
opt.colorcolumn = "111"
opt.expandtab = true
opt.shiftwidth = 2
