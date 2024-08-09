# BEING COPY-PASTE FROM /etc/bash.bashrc
#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

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

# END COPY-PASTE FROM /etc/bash.bashrc

[ -f "$HOME/.profile" ] && source "$HOME/.profile"

# custom settings
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

if [ "$EUID" -ne 0 ]; then
  source "$HOME/.dotfiles/aliases/normal"
else
  source "$HOME/.dotfiles/aliases/root"
fi
source "$HOME/.dotfiles/aliases/all"
[ -f "$HOME/.ssh/secrets/shells/.aliases" ] && source "$HOME/.ssh/secrets/shells/.aliases"
