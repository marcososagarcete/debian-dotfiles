# Basic Zsh Configuration
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# Enable Tab Autocompletion
autoload -U compinit && compinit

# Minimalist Prompt (Dark Theme with Red Elements)
PROMPT='%F{red}%~%f %# '

bindkey -v

# Useful Aliases
alias ll="ls -lh --color=auto"
alias la="ls -lAh --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias cls="clear"

alias aa="cd ~/workspace/Courses/aa_semestre_3_2024"
alias hpc="cd ~/workspace/Projects/hpc"


alias xmer="xrdb -merge ~/.Xresources"
# Performance Optimization
setopt NO_BEEP
setopt AUTO_CD
setopt NO_CASE_GLOB

# Enable Syntax Highlighting & Autosuggestions (Optional)
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

#copy with xclip
alias xcp='xclip -selection clipboard'
export PATH=$PATH:$HOME/.local/bin

export PATH=$PATH:/opt/Profex5/bin

export LD_LIBRARY_PATH=/opt/Profex5/lib:$LD_LIBRARY_PATH

export LD_LIBRARY_PATH=/opt/Profex5/lib:$LD_LIBRARY_PATH



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marcosdebian/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marcosdebian/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marcosdebian/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marcosdebian/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=/usr/local/cuda-12.8/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.8/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
