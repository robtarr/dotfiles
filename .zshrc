#http://stackoverflow.com/a/12575883/2344737
autoload -Uz compinit && compinit

#https://wiki.archlinux.org/index.php/zsh#Prompts
autoload -Uz colors && colors

# Plugins
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
source ~/dotfiles/aliases

wallpaper () { automator -i "${1}" ~/dotfiles/Applescripts/set-wallpaper.workflow }

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

# Pure Prompt
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure