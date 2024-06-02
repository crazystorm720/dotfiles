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

-- Enable mouse wheel to scroll in the terminal
config.enable_scroll_bar = true

-- Set up custom key bindings
config.keys = {
  -- Paste from clipboard
  {key="V", mods="CTRL|SHIFT", action=wezterm.action.PasteFrom("Clipboard")},

  -- Copy to clipboard
  {key="C", mods="CTRL|SHIFT", action=wezterm.action.CopyTo("Clipboard")},

  -- Increase font size
  {key="=", mods="CTRL", action="IncreaseFontSize"},

  -- Decrease font size
  {key="-", mods="CTRL", action="DecreaseFontSize"},

  -- Reload configuration
  {key="r", mods="CTRL|SHIFT", action=wezterm.action.ReloadConfiguration},
}

-- Window padding for aesthetics
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

-- Cursor style
config.default_cursor_style = "BlinkingBlock"

-- Enable the tab bar even if there's only one tab
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false

-- Return the configuration to wezterm
return config
