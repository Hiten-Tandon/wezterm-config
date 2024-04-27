-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font_size = 14.7
config.term = "wezterm"
config.font = wezterm.font_with_fallback({
	"JetBrains Mono Nerd Font",
	"VictorMono Nerd Font",
	"Fira Code",
	"DengXian",
	"Nerd Font Symbols",
	"DejaVuSansMono",
})
config.default_prog = { "/run/current-system/sw/bin/nu" }
config.window_background_image = "/home/hitentandon/.config/wezterm/security-break-grim-reaper-hacker-qj.jpg"
config.window_background_image_hsb = { brightness = 0.1 }

local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)
-- and finally, return the configuration to wezterm
return config
