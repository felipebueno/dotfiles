# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git
         zsh-syntax-highlighting
         emacs
         brew
         brew-cask
         colorize
         cp
         github
         gradle
         lein
         xcode)

source $ZSH/oh-my-zsh.sh

# User configuration
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/devel/tools/adt-bundle-mac-x86_64-20140702/sdk

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/devel/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/bin"
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export EDITOR='atom'

alias git=hub
set -k
