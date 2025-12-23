local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "GruvboxDark"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.window_background_opacity = 0.88

return config
