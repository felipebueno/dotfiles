export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$HOME/devel/tools/bin
export ANDROID_HOME=$HOME/devel/tools/adt-bundle-mac-x86_64-20140702/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/bin
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
