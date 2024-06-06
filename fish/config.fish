if status is-interactive
    # Commands to run in interactive sessions can go here
    # neofetch
    fastfetch
end

alias vim="nvim"
alias l="ls -al"
alias ll="ls -al"
alias c="clear"
alias x="exit"
alias fc="rg . | fzf"
alias s="kitten ssh"
alias pip="pip3"
alias python="python3"

# tmux
alias tsn="tmux new-session -s" # with name
alias twn="tmux new-window -n" # with name
alias ts="tmux new-session" # without name
alias tw="tmux new-window" # without name
