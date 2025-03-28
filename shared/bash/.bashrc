# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export EDITOR="/usr/bin/nvim"

# Path
export PATH=$PATH:/usr/local/go/bin


# Aliases
wtf() {
    sudo $(history -p !!) 
}

alias cl='clear'

# Prompt
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/config.json)"

export MANPAGER='nvim +Man!'
