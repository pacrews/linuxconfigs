#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\D{%a %d %b %Y %T} \W]\$ '
EDITOR=vim
TERM=foot

alias pacman='sudo pacman'
alias cd..='cd ..'
alias cdroot='cd /'
alias poweroff='sudo shutdown now'
alias reboot='sudo shutdown -r now'
alias vimbash='sudo vim ~/.bashrc'
alias vimvim='sudo vim ~/.vimrc'
alias vimsway="sudo vim ~/.config/sway/config"
alias vimfoot="sudo vim ~/.config/foot/foot.ini"
alias vimroot="sudo cp ~/.vimrc /root/.vimrc"

export WLR_NO_HARDWARE_CURSORS=1

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
