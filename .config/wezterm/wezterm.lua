local wezterm = require("wezterm")
local keymaps = require("keymaps")

return {
	check_for_updates = false,
	front_end = "WebGpu",
	max_fps = 120,
	default_prog = { "/opt/homebrew/bin/fish", "-l" },
	color_scheme = "Catppuccin Latte",
	font = wezterm.font({ family = "Iosevka Nerd Font", harfbuzz_features = { "calt=0", "clig=0", "liga=0" } }),
	font_size = 18,
	line_height = 1.3,
	window_padding = {
		left = 48,
		right = 48,
		bottom = 0,
		top = 0,
	},
	use_fancy_tab_bar = false,
	tab_max_width = 32,
	native_macos_fullscreen_mode = true,
	disable_default_key_bindings = true,
	keys = keymaps,
}
