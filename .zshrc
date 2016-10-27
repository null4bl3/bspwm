#zshmarks

#rsync -avhW --no-compress --progress /src/ /dst/

# GREB STRING SEARCH EXAMPLE:
#   grep -rnw '/home/null/somefoler' -e "the string to find"






export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"






alias mongostart='screen -S mongod -d -m mongod'

alias nodejs='node'
alias nis='npm install --save '
alias alllan='nmap 192.168.1.1/24'
alias listlan='sudo arp-scan 192.168.1.0/24'
alias zx='sudo /opt/lampp/xampp stop && sudo /opt/lampp/xampp start'
alias openport='sudo iptables -A INPUT -p tcp -j ACCEPT --dport '
alias gruntwatch='grunt && grunt watch'
alias lift='sails lift'
alias rightpanel='screen -S rightpanel -d -m /home/null/.bin/panel/dzen2_bar.sh'
alias tray='screen -S tray -d -m /home/null/.bin/panel/tray.sh'
alias panel='screen -S panel -d -m /home/null/.bin/panel/panel'
alias scr='screen -d -m '
alias subl='/opt/sublime_text/sublime_text'
alias tt='touch '
alias home='cd /home/null/'


alias postgressql='sudo systemctl start postgresql.service'
alias sqstart='sudo /opt/lampp/xampp start'
alias sqstop='sudo /opt/lampp/xampp stop'
alias couch='sudo systemctl start couchdb.service'
alias strm='cd ~/WebstormProjects'
alias å='cd /home/null/'

alias zero='cd ~/Documents/ZeroNet-master/'

alias mig='curl ident.me'
alias leaf='leafpad'
alias webs='cd ~/Documents/webapps'
alias c='cd ..'
alias cl='clear'

alias hh='history'
alias tt='tty-clock'
alias op='xbacklight -inc 20'
alias ned='xbacklight -dec 20'
alias xx='sudo /opt/lampp/xampp start'
alias xxx='sudo /opt/lampp/xampp stop'
alias ll='ls -l --color=auto'
alias nn='nano '
alias mail='GTK2_RC_FILES=/usr/share/themes/Adwaita/gtk-2.0/gtkrc geary'
alias p='pwd'
alias con='cd /home/null/.config/'
alias awe='leafpad /home/null/.config/awesome/rc.lua'
alias h='htop'
alias play='mpc add http://ice.somafm.com/cliqhop && mpc play'
alias homemount='sshfs home@192.168.1.199:/home/home/disk/ /home/null/skabsrummet'
alias homeaway='sshfs home@81.161.164.10:/media mnt -p 4444'
alias music='sshfs home@192.168.1.15:/media/disk2/Music music_mount'
alias musicaway='sshfs home@81.161.164.10:/media/disk2/Music music_mount -p 4444'
alias alt='systemctl --type=service --all'
alias downs='cd /home/null/Downloads'

alias stop='mpc stop'
alias fixit='sudo sysctl fs.inotify.max_user_watches=524288'
alias zsh='nano /home/null/.zshrc'
alias dk='setxkbmap dk'

alias install='sudo pacman -S '
alias ø='cd .. & ls -la'
alias midi='sudo modprobe snd_seq_midi'
alias vulscan='nmap -sV --script=vulscan/vulscan.nse'
alias fr='df -h'
alias lan='sudo nmap -sP 192.168.1.0/24'
alias y='yaourt '
alias get='ps aux | less '




# Path to your oh-my-zsh installation.
export ZSH=/home/null/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="xxf"

#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="gallois"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# PLUGINS

#plugins=(git bookmark zsh-syntax-highlighting zsh-history-substring-search)



# User configuration

export PATH="/home/null/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment

#exec setxkbmap dk &

#setxkbmap dk &

#export LANG="en_US.UTF-8"
export PATH=$PATH:/home/null/.config/bspwm/panel/
export GTK_PATH="$GTK_PATH:/usr/share/themes/"

export VST_PATH="/home/null/vst"

export DSSI_PATH="/usr/local/lib/dssi/"

export PANEL_FIFO=/tmp/panel-fifo


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"


export MYSQL_CONFIG=/opt/lampp/bin/mysql_config


#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(python, wd, archlinux, atom, bower, Completion, git, git-extras, node, npm, 
screen, nvm, zsh-history-substring-search, zsh-syntax-highlighting)

export EDITOR="/usr/bin/nano"
alias gc="gcalcli calw 4"
wd() {
  . /home/null/bin/wd/wd.sh
}
source /home/null/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
