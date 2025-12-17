# dotfiles

This repository contains my personal dotfiles and setup scripts for configuring a my dev env on Linux (usually Debian Stable).

## Keyboard Tweaks

### Caps Lock as Ctrl & Esc

To remap the Caps Lock key to act as **Ctrl** when held and **Esc** when tapped:

1. Edit the keyboard configuration:

   ```bash
   sudo gedit /etc/default/keyboard
   ```

   Set the following option:

   ```bash
   XKBOPTIONS="ctrl:nocaps"
   ```

2. Add this to your `~/.xprofile`:

   ```bash
   ps aux | grep -i '[x]cape' && killall -9 xcape
   hash xcape 2>&1 >/dev/null && xcape -e 'Control_L=Escape' -t 100 &
   ```

> ⚠️ **TODO**: Migrate from `xcape` to [`keyd`](https://github.com/rvaiya/keyd) for better key remapping support.

---

## Setup Instructions

### Prerequisites

Install my favorite tools:

```bash
sudo apt install apt-transport-https build-essential git curl zsh ffmpeg mpv stow tmux xdotool wmctrl vim fzf blender gimp
```

### Install Rust (required to build Helix from source)

```bash
curl https://sh.rustup.rs -sSf | sh
```

---

## Install from Source

### Helix Editor

Follow the official guide:
[Building Helix from Source](https://docs.helix-editor.com/building-from-source.html)

## Dotfiles Setup

Clone and set up:

```bash
git clone --recursive https://github.com/felipebueno/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow tmux
stow utils
stow config
stow vim
```

---

### Go (Golang) & GVM Setup

Install GVM (Go Version Manager):

```bash
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm
```

Install Go versions:

```bash
gvm install go1.24.1
gvm use go1.24.1 --default
```

### Android & Flutter/Dart Setup

#### Android SDK/NDK

Install Android Studio

#### Flutter & Dart

```bash
git clone https://github.com/flutter/flutter.git -b stable ~/flutter
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
flutter doctor
```

## TODO: Instructions for:

### Clang

### Zig
