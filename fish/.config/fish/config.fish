if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# Set default version of NodeJS to LTS, get from .nvmrc
nvm use &> /dev/null
set -gx NVM_SYMLINK_CURRENT true

# rvm default

set -gx ANDROID_HOME $HOME/Android/Sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools

fish_add_path $HOME/.cargo/bin

set -gx XDG_DATA_DIRS /var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
