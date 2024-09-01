local g = vim.g
local opt = vim.opt

g.autoformat = true
g.root_spec = { ".git", "lsp", "cwd" }
g.lazygit_config = false
opt.formatoptions = "jcroqlnt"
opt.textwidth = 110
opt.colorcolumn = "111"
opt.expandtab = true
opt.shiftwidth = 2
opt.swapfile = false
opt.conceallevel = 0
