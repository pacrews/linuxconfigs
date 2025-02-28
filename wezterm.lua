local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.font = wezterm.font_with_fallback {
	'hack'
}

config.color_scheme = 'ENCOM'

local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window{}
	window:gui_window():maximize()
end)

return config
