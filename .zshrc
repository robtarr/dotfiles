#http://stackoverflow.com/a/12575883/2344737
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit

prompt pure

#https://wiki.archlinux.org/index.php/zsh#Prompts
autoload -Uz colors && colors

# Plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/my-projects/dotfiles/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
source ~/my-projects/dotfiles/aliases
source ~/my-projects/dotfiles/client
source $HOME/.cargo/env

export PYTHONPATH="$(brew --prefix)/lib/python2.7/site-packages"

#http://zsh.sourceforge.net/Doc/Release/Options.html
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY
# setopt HIST_SAVE_NO_DUPS
# setopt HIST_IGNORE_DUPS
# setopt HIST_IGNORE_ALL_DUPS
# setopt EXTENDED_HISTORY
# setopt HIST_EXPIRE_DUPS_FIRST
# setopt HIST_FIND_NO_DUPS

export PATH="$HOME/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Added by NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# $(nvm use node) 2>/dev/null
