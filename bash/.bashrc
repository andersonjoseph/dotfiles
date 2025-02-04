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
# Add this function to parse git branch
parse_git_branch() {
    branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    if [ ! "${branch}" = "" ]; then
        echo " ($branch)"
    fi
}

# The prompt with both features
PS1='\e[38;5;67m[\e[1;38;5;110m\u\e[0m\e[1;38;5;187m@\h\e[38;5;67m]\e[0m \e[38;5;140m\w\e[0m\e[38;5;108m$(parse_git_branch)\e[0m $(if [[ $? == 0 ]]; then echo "\e[38;5;209m>"; else echo "\e[38;5;203m>"; fi)\e[0m '
