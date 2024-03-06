local opt = vim.opt

vim.g.autoformat = false
vim.g.root_spec = { ".git", "lsp", "cwd" }
opt.formatoptions = "jcroqlnt"
opt.textwidth = 110
opt.colorcolumn = "111"
opt.expandtab = true
opt.shiftwidth = 2
