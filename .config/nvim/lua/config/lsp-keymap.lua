local M = {}

M.setup = function(_client, buffer)
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, { buffer = buffer, desc = "Signature help" })
	vim.keymap.set({ "n", "x" }, "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, { buffer = buffer, desc = "Code action" })
	vim.keymap.set("n", "<leader>cf", function()
		vim.lsp.buf.format()
		vim.cmd "TailwindSort"
	end, { buffer = buffer })
	vim.keymap.set("x", "<leader>cf", function()
		vim.lsp.buf.format()
	end, { buffer = buffer })
	vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { silent = true, buffer = buffer })
	vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { silent = true, buffer = buffer })
	vim.keymap.set("n", "gD", "<cmd>Telescope lsp_declarations<cr>", { silent = true, buffer = buffer })
	vim.keymap.set("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { silent = true, buffer = buffer })
	vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", { silent = true, buffer = buffer })
end

return M
