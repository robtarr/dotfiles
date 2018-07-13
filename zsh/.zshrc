#http://stackoverflow.com/a/12575883/2344737
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit

prompt pure

#https://wiki.archlinux.org/index.php/zsh#Prompts
autoload -Uz colors && colors

# Plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/my-projects/dotfiles/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
source ~/my-projects/dotfiles/aliases
source $HOME/.cargo/env

export PYTHONPATH="$(brew --prefix)/lib/python2.7/site-packages"

#http://zsh.sourceforge.net/Doc/Release/Options.html
SAVEHIST=2000
HISTSIZE=2000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt EXTENDED_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

export PATH="$HOME/.bin:$PATH"
