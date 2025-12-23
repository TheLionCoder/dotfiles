# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Configurations

- **Neovim**: Lua-based configuration using [LazyVim](https://www.lazyvim.org/).
- **Tmux**: Terminal multiplexer configured with [Catppuccin](https://github.com/catppuccin/tmux) theme and [TPM](https://github.com/tmux-plugins/tpm).
- **WezTerm**: GPU-accelerated terminal emulator.
- **Ghostty**: Terminal emulator.

## Installation

1. Initialize chezmoi:
    ```sh
    chezmoi init git@github.com:TheLionCoder/dotfiles.git
    ```

2. Apply the changes:
    ```sh
    chezmoi apply
    ```

## Structure

- `dot_config/nvim`: Neovim configuration.
- `dot_tmux.conf`: Tmux configuration.
- `dot_wezterm.lua`: WezTerm configuration.
