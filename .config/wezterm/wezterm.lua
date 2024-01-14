local wezterm = require("wezterm")
local keymaps = require("keymaps")

return {
	check_for_updates = false,
	default_prog = { "/opt/homebrew/bin/fish", "-l" },
	color_scheme = "Catppuccin Latte",
	font = wezterm.font("FiraCode Nerd Font Mono"),
	font_size = 17,
	line_height = 1.3,
	window_padding = {
		left = 48,
		right = 48,
		bottom = 0,
		top = 0,
	},
	use_fancy_tab_bar = false,
	tab_max_width = 64,
	hide_tab_bar_if_only_one_tab = true,
	native_macos_fullscreen_mode = false,
	keys = keymaps,
}
