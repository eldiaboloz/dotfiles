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
