#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lah --color=auto'
alias .='cd ..'
alias ..='cd ../..'
alias u='sudo pacman -Syu --noconfirm; sudo pacman -Scc --noconfirm; sudo pacman -Rns $(sudo pacman -Qdtq); sudo paccache -ruk0;'

shopt -s cdspell
shopt -s autocd

exitstatus()
{
    if [[ $? == 0 ]]; then
        echo ':)' 
    else
        echo ':('
    fi
}
export PS1='$(exitstatus) '
export EDITOR=vim
