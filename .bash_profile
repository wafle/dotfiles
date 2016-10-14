# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
alias gprobe="ping 8.8.8.8"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias ll="ls -lhA"
alias l="ls"

ressh() { nohup ~/dotfiles/bin/ressh_loop $1 & }

# MacPorts Installer addition on 2016-03-14_at_23:34:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias 'gr'='cd `git rev-parse --show-toplevel`'
alias 'killalldocker'='docker rm -f $(docker ps -a -q)'

