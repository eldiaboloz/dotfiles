export ZSH=$HOME/.ohmyzsh
. /usr/share/powerline/bindings/zsh/powerline.zsh

plugins=()
DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] \
  && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ "$EUID" -ne 0 ]; then
  source "$HOME/.dotfiles/aliases/normal"
else
  source "$HOME/.dotfiles/aliases/root"
fi
source "$HOME/.dotfiles/aliases/all"
[ -f "$HOME/.ssh/secrets/shells/.aliases" ] && source "$HOME/.ssh/secrets/shells/.aliases"

# fix KP_Enter
bindkey -s "^[OM" "^M"
