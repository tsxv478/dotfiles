export TERMINAL='st'
export EDITOR='nvim'
export BROWSER='brave'
export PATH="$PATH:$HOME/.local/bin"
export GOPATH="$HOME/.local/share/go"
export ANSIBLE_CONFIG="$HOME/.config/ansible/ansible.cfg"
export WINEDEBUG=-all
export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1
export LESS=-R
export LESSHISTFILE=-
export LESS_TERMCAP_mb=$'\e[1;36m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;4;34m'

[ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ] && exec startx >/dev/null 2>&1
