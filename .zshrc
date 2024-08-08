export ZSH=$HOME/.ohmyzsh
. /usr/share/powerline/bindings/zsh/powerline.zsh

plugins=()
DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] \
  && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fix KP_Enter
bindkey -s "^[OM" "^M"
