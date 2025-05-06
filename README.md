dotfiles
========

```
* caps lock as ctrl *and* esc:

    First modify the keyboard config with sudo gedit /etc/default/keyboard and set XKBOPTIONS="ctrl:nocaps" and then in your ~/.xprofile put the single line below.

     ps aux | grep -i '[x]cape' && killall -9 xcape; hash xcape 2>&1 >/dev/null && xcape -e 'Control_L=Escape' -t 100 &

    TODO: use keyd instead of xcape (https://github.com/rvaiya/keyd)

* Install helix from source

* sudo apt install software-properties-common apt-transport-https build-essential git curl zsh ffmpeg mpv stow tmux xdotool wmctrl

* curl https://sh.rustup.rs -sSf | sh -s # install rust (for helix and wezterm)

* Install wezterm from source: https://wezterm.org/install/source.html#installing-from-source
  * cargo install --locked --branch=main --git https://github.com/wezterm/wezterm.git generate-bidi strip-ansi-escapes sync-color-schemes wezterm wezterm-gui

* Install heliz from source: https://docs.helix-editor.com/building-from-source.html

* git clone --recursive https://github.com/felipebueno/dotfiles.git ~/dotfiles

* cd ~/dotfiles

* stow emacs

* stow config

* stow etc
```

# TODO

- Instructions for:

  - gvm & golang stuff

  - android & dart/flutter stuff
