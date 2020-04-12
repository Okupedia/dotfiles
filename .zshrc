#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# -----------------------------------------------------
export PATH="$PATH:$HOME/bin"
export PATH_TO_FX=/Library/Java/JavaVirtualMachines/javafx-sdk-13.0.2/lib

#------------------------------------------------------
POWERLEVEL9K_MODE='nerdfont-complete'     
                        
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)     
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()                                
POWERLEVEL9K_DISABLE_RPROMPT=true     
                                                                     
POWERLEVEL9K_TIME_FORMAT="%D{%m\/%d %H:%M}"     
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='white'
                                   
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u25B8 "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
