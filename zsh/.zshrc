#http://stackoverflow.com/a/12575883/2344737
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit
#https://wiki.archlinux.org/index.php/zsh#Prompts
autoload -Uz colors && colors

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
setopt correctall

source ~/my-projects/dotfiles/bashrc

if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi

# precmd() {
#   gitStatus="$(git symbolic-ref --short -q HEAD 2> /dev/null)"
#   NEWLINE=$'\n'
#
#   PROMPT="%~ %{$fg[yellow]%}${gitStatus}${NEWLINE}%{$fg[magenta]%}❯ %{$reset_color%}"
# }
precmd() {
  source ~/my-projects/dotfiles/zsh/lib/zsh-git-prompt/zshrc.sh
  NEWLINE=$'\n'

  PROMPT='%~%b$(git_super_status)${NEWLINE}%{$fg[green]%}❯ %{$reset_color%}'
}

export EDITOR=atom

# Use C-x C-e to edit the current command line
# http://nuclearsquid.com/writings/edit-long-commands/
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

#http://superuser.com/questions/417627/oh-my-zsh-history-completion
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

export PATH="$HOME/.yarn/bin:$PATH"

source ~/my-projects/dotfiles/zsh/lib/zsh-git-prompt/zshrc.sh
# PROMPT='%B%m%~%b$ git_super_status $'\n'%{$fg[magenta]%}??❯ %{$reset_color%}'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
