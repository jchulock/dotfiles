alias pls='sudo "$BASH" -c "$(history -p !!)"'
alias ls='ls --color=always'
alias todo='vim ~/documents/todo'
alias :q='exit'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias clear-vim-swap='rm ~/.vim/tmp/swap/*'

#vga
alias mab='xrandr --output VGA-1 --auto --above LVDS-1'
alias mbe='xrandr --output VGA-1 --auto --below LVDS-1'
alias mle='xrandr --output VGA-1 --auto --left-of LVDS-1'
alias mri='xrandr --output VGA-1 --auto --right-of LVDS-1'
alias mof='xrandr --output VGA-1 --off'

alias python='python3'
#alias vim='nvim'
