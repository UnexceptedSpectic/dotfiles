#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.scripts
export PATH="/usr/bin/anaconda3/bin/:$PATH"
export PATH="$HOME/eclipse/java-2019-12/eclipse/:$PATH"
export PATH="/usr/local/ncbi/sra-tools/bin/:$PATH"

# Disable error sound
bind 'set bell-style none'

# Define aliases
alias cfb="vim ~/.bashrc"
alias ls="ls --color=auto"
alias sl="systemctl suspend"
alias v="vim"
alias cfi="vim $HOME/.config/i3/config"
alias lsgpg="gpg --list-secret-keys --keyid-format LONG"
alias jn="jupyter notebook"
alias ca="conda activate"
alias cda="conda deactivate"
alias fh="fzf"

# Use vim as manpage viewer
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

# Enable touchscreen gestures and pixel-perfect trackpad scrolling in firefox 
#MOZ_USE_XINPUT2=1

# Enable 256 colors in terminal - currently set in .Xresources
#TERM=rxvt-256color
# Confirm using below command to list all colors
# (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)

# Jupyter Notebook Extension Executables
export PATH=$PATH:/home/master/.local/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/bin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/bin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# BioLockJ
export SHEP=$HOME/documents/development/sheepdog_testing_suite
export SHEP_DATA=$HOME/documents/development/sheepdog_testing_suite/data_small
export PATH=$PATH:${SHEP}/MockMain/resources
export BLJ=/home/master/documents/development/BioLockJ
export BLJ_PROJ=/home/master/documents/development/BioLockJ/pipelines
export PATH=$PATH:$BLJ/script
alias cd-blj="cd \"`last-pipeline`\"; quick_pipeline_view"
