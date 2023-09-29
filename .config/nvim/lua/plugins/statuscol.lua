return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require "statuscol.builtin"
		require("statuscol").setup {
			segments = {
				{
					text = { builtin.lnumfunc, " " },
					condition = { true, builtin.not_empty },
				},
				{ text = { "%s" }, click = "v:lua.ScSa" },
			},
			clickhandlers = {},
		}
	end,
}
