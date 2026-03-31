#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ------------------------------
# 1. ALIASES
# ------------------------------

# Enable color output by default for ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ------------------------------
# 2. PROMPT (PS1) CONFIGURATION
# ------------------------------

# Define color codes. They MUST be wrapped in \[...\] to tell Bash they are
# non-printing, which prevents the prompt corruption issue.
COLOR_BLUE='\[\e[0;34m\]'
COLOR_NONE='\[\e[0m\]'

# Construct the PS1 prompt: [Blue]user[/Blue]@host ~]$
PS1="${COLOR_BLUE}\u${COLOR_NONE}@\h [${COLOR_BLUE}\W${COLOR_NONE}]\$ "

# ------------------------------
# 3. COMPLETION FEATURES
# ------------------------------

# Enable programmable completion features. This loads smarter, command-specific
# autocompletion for tools like git, pacman, etc.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH="$PATH:/usr/local/MATLAB/R2025b/bin"

