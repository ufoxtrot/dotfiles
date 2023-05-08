## EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM 'xterm-256color'
set EDITOR 'nvim'
set VISUAL 'nvim'
set -x MANPAGER 'sh -c "col -bx | bat -l man -p"'

fish_add_path $HOME/.local/bin
fish_add_path $HOME/Scripts/asciiart
fish_add_path $HOME/Apps

# navigation
alias ..='cd ..'
alias ...='cd ../..'

# nvim
alias vim='nvim'
alias vi='nvim'
alias bat="bat --style='plain,numbers,changes,header' --color always --theme gruvbox-dark"

# changing 'ls' to 'exa'
alias ls='exa -a --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -la --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias rf='rm -rf'
alias q='exit'

# colorize grep output (good for log files)
alias grep='grep --color=auto'

# accquire packages details
alias packin="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"

# adding flags
alias df='df -h'                          
alias free='free -m'               
alias f='nnn -oxHgeDdC'
alias ncmpcpp='ncmpcpp ncmpcpp_directory=$HOME/.config/ncmpcpp/'

# ps
alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'
alias batt='cat /sys/class/power_supply/BAT1/capacity'

# merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

bash ~/.profile
