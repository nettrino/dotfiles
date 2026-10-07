#!/usr/bin/env bash
# Free Ctrl+Arrow so tmux prefix+C-arrow (resize-pane) reaches the terminal.
# GUI equivalent: System Settings > Keyboard > Keyboard Shortcuts > Mission Control.
set -euo pipefail

disable_hotkey() {
  local id=$1 keycode=$2
  # 8650752 = Ctrl (0x40000) | NX_SECONDARYFNMASK (0x800000), the modifier mask macOS stores for arrow keys
  defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add "$id" \
    "{enabled = 0; value = {parameters = (65535, $keycode, 8650752); type = standard;};}"
}

disable_hotkey 32 126  # Mission Control      Ctrl+Up
disable_hotkey 33 125  # Application windows  Ctrl+Down
disable_hotkey 79 123  # Move left a space    Ctrl+Left
disable_hotkey 81 124  # Move right a space   Ctrl+Right

# apply without logout
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
