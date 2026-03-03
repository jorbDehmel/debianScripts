# Created by newuser for 5.9
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
. "$HOME/.cargo/env"
alias pydoc='python3 -m pydoc'
alias prism='/home/jorb/Programs/prism-4.9-linux64-x86/bin/prism'
alias xprism='/home/jorb/Programs/prism-4.9-linux64-x86/bin/xprism'
alias pico8='/home/jorb/Programs/pico-8/pico8'

git_branch() {
  OUT=$(git branch --show 2> /dev/null)
  if [ -n "$OUT" ]
  then
    echo " ($OUT)"
  fi
}

autoload -U colors && colors
autoload -U promptinit && promptinit
setopt PROMPT_SUBST
PROMPT='%{$fg[green]%}%n@%{$reset_color%}%{$fg[white]%}%m %{$reset_color%}%{$fg[green]%}%~%{$reset_color%}$(git_branch)> '

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
set -o sharehistory on
set -o extendedhistory on
set -o nohistbeep on
set -o histfindnodups on
set -o histignorealldups on
set -o histignoredups on
set -o histsavenodups on
set -o incappendhistory on
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
