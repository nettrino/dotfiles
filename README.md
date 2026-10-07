# About

### Terminal configs

 -  Place alacritty config in `~/.config/alacritty/`
 -  Place wezterm config in `~/.config/wezter/`
 -  Place ghostty config in `~/.config/ghostty/` (`cp ghostty/config ~/.config/ghostty/config`)

### Fixing fonts

Copy fonts to `~/.local/share/fonts/` and then refresh your font cache by running `fc-cache -f -v`

### macOS

 -  Run `./macos/defaults.sh` to free Ctrl+Arrow from Mission Control/Spaces so tmux `prefix + C-arrow` pane resize works
 -  Terminal.app has no OSC 8 hyperlink support (no clickable links from tools that emit them). Use Ghostty, iTerm2 or WezTerm.
