vim.keymap.set({ "n", "x" }, "n", "'Nn'[v:searchforward]", { expr = true })
vim.keymap.set({ "n", "x" }, "N", "'nN'[v:searchforward]", { expr = true })
vim.keymap.set({ "n", "x" }, "<PageUp>", "<C-u>zz")
vim.keymap.set({ "n", "x" }, "<PageDown>", "<C-d>zz")
vim.keymap.set("n", "]w", "<C-w>l")
vim.keymap.set("n", "[w", "<C-w>h")
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])
vim.keymap.set(
  "n",
  "<leader>rw",
  [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]],
  { desc = "replace word under cursor" }
)
