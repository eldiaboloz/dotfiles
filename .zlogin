if [ "$EUID" -ne 0 ] && [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && command -v startx &> /dev/null; then
  exec startx
elif [ -z "$SSH_AUTH_SOCK" ]; then
  eval $(ssh-agent)
fi
