if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Suppress the default greeting message
set fish_greeting ""

# Environment Variables (Fish uses 'set -gx' instead of 'export')
set -gx EDITOR nano
set -gx VISUAL nano

# Aliases (Fish automatically turns these into clean functions under the hood)
alias ls="ls --color=auto"
alias ll="ls -la"
alias g="git"
alias ..="cd .."
alias ...="cd ../.."

starship init fish | source

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"
