# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# 1. ALIASES
# Enable color output by default for ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 2. GIT BRANCH
git_prompt() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  printf " (%s)" "$branch"
}

# 3. PROMPT (PS1) CONFIGURATION
#    rodrig:nvim (main)$
PS1="\u:\W\$(git_prompt)\$ "

# 4. COMPLETION FEATURES
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# 5. PATH CUSTOMIZATIONS
export PATH="$PATH:/usr/local/MATLAB/R2025b/bin"
