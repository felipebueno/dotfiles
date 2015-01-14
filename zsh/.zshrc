# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git
         zsh-syntax-highlighting
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
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export ANDROID_HOME=$HOME/devel/tools/adt-bundle-mac-x86_64-20140702/sdk

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/devel/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/bin"
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export EDITOR='emacs'
export DEVKITPRO=$HOME/devel/tools/devkitPro
export DEVKITARM=$DEVKITPRO/devkitARM

#alias git=hub
alias em='emacsclient -nw -c $1'
set -k
