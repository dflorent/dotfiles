# editor
set -x EDITOR "vim"

# aliases
alias ll="ls -lah"
alias v="vim"
alias g="git"
alias gst="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gbd='git branch -d'
alias gc='git commit'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'

# remove greeting message
set fish_greeting ''

# fish prompt
function fish_prompt
    set -l pwd_info (pwd_info "/")

    set_color green
    if test "$PWD" = ~
        echo -n '~ '
    else
        printf '%s/%s ' $pwd_info[2] $pwd_info[1]
    end

    set_color blue
    echo -n '[ '

    set_color normal
end

# fish right prompt
function fish_right_prompt
    if git_is_repo
        if git_is_dirty; or git_untracked_files
            set_color red
            echo ' *'
        end
        set_color yellow
        printf ' %s' (git_branch_name)
    end

    set_color blue
    echo -n ' ] '

    set_color green
    date '+%H:%M'

    set_color normal
end

# pyenv
status --is-interactive; and . (pyenv init -|psub)

# ndenv
set -x PATH $PATH $HOME/.ndenv/bin

# rbenv
set -x PATH $PATH $HOME/.rbenv/bin
