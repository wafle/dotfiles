# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
alias gprobe="ping 8.8.8.8"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias ll="ls -lhA"
alias l="ls"

ressh() { nohup ~/dotfiles/bin/ressh_loop $1 & }
wif() { (git ls-files *$1 || find . -name *$1) 2>/dev/null | head -n 1 ; }

alias 'gr'='cd `git rev-parse --show-toplevel`'
alias 'killalldocker'='docker rm -f $(docker ps -a -q)'

alias gt=git
alias it=git

export PYTHONSTARTUP="$HOME/dotfiles/startup.py"
