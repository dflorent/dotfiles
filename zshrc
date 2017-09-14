#
# Replace matching lines in your ~/.zshrc file with the following lines
#

ZSH_THEME="nanotech"

plugins=(git git-flow sublime npm pyenv gulp zh-syntax-highlighting)

export EDITOR='vim'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# ndenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

# alias
alias v='vim'
