alias ..="cd .."
alias ..="cd ../.."

alias h='cd ~'
alias c='clear'

alias ll='ls -lahG'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\$ "

# Git Autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi