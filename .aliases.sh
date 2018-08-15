alias gitgraph="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s - %an %ar'"

alias notebook="cd ~ && jupyter notebook > /dev/null 2>&1 & popd"

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1
alias sudo='sudo '

alias htop_py='htop -p $(pgrep Python | python -c '\''import sys; print(",".join(map(lambda l: l.strip("\n"), sys.stdin.readlines())))'\'')'
