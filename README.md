# Tmux LazyGit Plugin

The Tmux LazyGit plugin provide a quick and easy way to open or toggle a [LazyGit](https://github.com/jesseduffield/lazygit) window for the current folder within your tmux session.

Press `prefix` + `g` to switch to LazyGit widnow, press again to switch back.

## Installation

### Using Tmux Plugin Manager (tpm)

Add the Tmux LazyGit plugin to your list of `tpm` plugins in `.tmux.conf`:

```bash
set -g @plugin 'Nybkox/tmux-lazygit'
```

Press `prefix` + `I` inside a `tmux` session to fetch the plugin and source it.

## Usage

Once installed, the plugin automatically sets up a keybinding for toggling the LazyGit window, provided the default keybindings are not disabled in the configuration.

## Keybindings

- `prefix+g`: Toggle the LazyGit window in the current session.

These keybindings can be customized in the `.tmux.conf` file.

## Configuration

Customize the plugin behavior by setting options in your `.tmux.conf` file:

Disable default keybindings:

```bash
set -g @tmux-lazygit-default-keybindings "false"
```

Set custom keybinding for toggling LazyGit window:

```bash
set -g @tmux-lazygit-toggle-window-key "your_custom_key"
```

Set custom name for LazyGit window:

```bash
set -g @@tmux-lazygit-window-name "your_custom_name"
```

## Known Issues

You may need to manually give permission to the plugin's scripts:

```bash
cd ~/.tmux/plugins/tmux-lazygit
chmod u+x tmux-lazygit-plugin.tmux
chmod u+x ./**/*.sh
```
