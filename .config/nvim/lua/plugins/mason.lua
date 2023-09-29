local function ensure_installed(tools)
	local mr = require "mason-registry"
	for _, tool in ipairs(tools) do
		local p = mr.get_package(tool)
		if not p:is_installed() then
			p:install()
		end
	end
end

local tools = {
	"json-lsp",
	"jsonnet-language-server",
	"lua-language-server",
	"prettier",
	"stylua",
	"tailwindcss-language-server",
	"taplo",
	"terraform-ls",
	"typescript-language-server",
  "vue-language-server",
	"yaml-language-server",
}

return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	cmd = "Mason",
	config = function()
		require("mason").setup()
		ensure_installed(tools)
	end,
}
