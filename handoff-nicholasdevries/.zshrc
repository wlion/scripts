# ==============================
# Antigen
# ==============================

# Load Antigen
# You can find the installation location with `brew ls antigen`
# If silicon chip: source /opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Bootstrap
antigen use oh-my-zsh

# Plugins
antigen bundle osx
antigen bundle brew
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async

# Load the theme
antigen theme robbyrussell

# Start
antigen apply

# ==============================
# Exports
# ==============================

# PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

# MANPATH
# If silicon chip: export MANPATH="/opt/homebrew/Cellar/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"


# NVM PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Default editor
# export EDITOR=code

# Homebrew
# If silicon chip: export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Composer
export PATH=$PATH:$HOME/.composer/vendor/bin

# Previous MySQL version
# If silicon chip: export PATH="/opt/homebrew/Cellar/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# ==============================
# Aliases
# ==============================

# Navigation
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Show/hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

# File operations
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# Lists
alias l="ls -laF -G"
alias ls="gls -AFh --color --group-directories-first"

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Maintenance
alias maint='sudo periodic daily weekly monthly'

# Fix brew permissions
alias brewperm='sudo chown -R $(whoami) $(brew --prefix)/*'

# Update brew packages
alias brewup='brew -v update; brew upgrade --force-bottle; brew cleanup; brew doctor'

# Open VSCode from cli
alias code="open -a /Applications/Visual\ Studio\ Code.app"

# Clear log files
alias clearlog='sudo rm -rf /var/log/asl/*.asl'

# Clear mail
alias clearmail='sudo rm /var/mail/$(whoami)'

# Update antigen
alias antup='antigen update; antigen cleanup'

# Clear antigen cache
alias antreset='rm ~/.antigen/init.zsh'

# System maintenance and updates
alias sysup='brewup; antup; maint; clearlog; clearmail'

# Hosts
alias hosts='sudo vi /etc/hosts'

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"
