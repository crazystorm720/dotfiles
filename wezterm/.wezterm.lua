-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- Set the color scheme
config.color_scheme = 'AdventureTime'

-- Increase the font size
config.font_size = 12

-- Enable true color support
config.set_environment_variables = {
  COLORTERM = "truecolor",
  }

-- Set the default program to tmux
config.default_prog = {"tmux", "new-session", "-A", "-s", "default"}

-- Return the configuration to wezterm
   return config
