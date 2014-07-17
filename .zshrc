# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Bash style ..[TAB] completion
# http://stackoverflow.com/questions/564648/zsh-tab-completion-for-cd
zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'

# Alias
################################################################################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# not helpfull helpers
alias starwars="telnet towel.blinkenlights.nl"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

# env config
alias zshconfig="vim ~/dotfiles/.zshrc"
alias ohmyzsh="subl ~/dotfiles/.oh-my-zsh"

# v => vim
alias v="vim"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
# alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Put up screensaver (when going AFK)
alias afk="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# size of files/folders in current dir
alias ducurr='du -x -h --max-depth=1 ./'

# see what apps are currently using the network
alias appsoninternet='sudo lsof -P -i -n | cut -f 1 -d " " | uniq'

# list what ports are currently open
alias listopenports='sudo lsof -i -P | grep -i "listen"'

# mount the drobster
alias mountdrobo="mount -t smbfs //rjhilgefort@10.0.1.2/Home ~/Drobo"

# list all git submodules in the current directory
alias git-submodule-list="grep path .gitmodules | sed 's/.*= //'"

# Mac dock mods - change the behavior of the dock
alias dock-meh="defaults write com.apple.dock autohide-delay -float 3 && killall Dock" # 5 seconds
alias dock-fuckoff="defaults write com.apple.dock autohide-delay -float 1000 && killall Dock" # 1000 seconds
alias dock-reset="defaults delete com.apple.dock autohide-delay && killall Dock" # Back to normal

# control volume
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Project Aliass #
##################
alias present-potbelly="node app.js -b potbelly"
alias present-churchs="node app.js -b churchs"
# potbelly
alias present-potbelly='nodemon -e js,html,less app.js -- -b potbelly'
alias present-potbelly-local='nodemon -e js,html,less app.js -- -d local -b potbelly'
alias present-potbelly-redis='nodemon -e js,html,less app.js -- -b potbelly -r'
alias present-potbelly-debug='node --debug-brk app.js -b potbelly'
alias present-potbelly-app='nodemon -e js,html,less app.js -- -p phonegap -d qa -b potbelly -r'
alias present-potbelly-app-export='node app.js -e staging -d qa -b potbelly -p phonegap --phonegap ~/zipscene/apps/potbellyapp/www/ --phonegap-server http://potbelly.qa.zipscene.com/'
# zcafe
alias present-zcafe='nodemon -e js,html,less app.js -- -d gma -b zcafe'
alias present-zcafe-local='nodemon -e js,html,less app.js -- -d local -b zcafe'
alias present-zcafe-redis='nodemon -e js,html,less app.js -- -d gma -b zcafe -r'
alias present-zcafe-debug='node --debug-brk app.js -d gma -b zcafe'
alias present-zcafe-app='nodemon -e js,html,less app.js -- -p phonegap -d gma -b zcafe -r'
alias present-zcafe-app-export='node app.js -e staging -d gma -b zcafe -p phonegap --phonegap ~/zipscene/apps/zcafe/www/ --phonegap-server http://zcafe.qa.zipscene.com/'
# hooters
alias present-hooters='nodemon -e js,html,less app.js -- -b hooters'
alias present-hooters-local='nodemon -e js,html,less app.js -- -d local -b hooters'
alias present-hooters-redis='nodemon -e js,html,less app.js -- -b hooters -r'
alias present-hooters-debug='node --debug-brk app.js -b hooters'
alias present-hooters-app='nodemon -e js,html,less app.js -- -p phonegap -d qa -b hooters -r'
alias present-hooters-app-export='node app.js -e staging -d qa -b hooters -p phonegap --phonegap ~/zipscene/apps/hootclub/www/ --phonegap-server http://hooters.qa.zipscene.com/'
# keystone
alias present-keystone='nodemon -e js,html,less app.js -- -b keystone'
alias present-keystone-redis='nodemon -e js,html,less app.js -- -b keystone -r'
alias present-keystone-debug='node --debug-brk app.js -b keystone'
# mrhantons
alias present-mrhantons='nodemon -e js,html,less app.js -- -b mrhantons'
alias present-mrhantons-redis='nodemon -e js,html,less app.js -- -b mrhantons -r'
alias present-mrhantons-debug='node --debug-brk app.js -b mrhantons'
# prod
alias present-prod="node app.js -f -e prod --http 80 --https 443 -k /tmp/var/keys"
