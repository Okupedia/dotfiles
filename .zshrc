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
export PATH="$PATH:$HOME/bin:/usr/local/opt/llvm/bin"
export PATH_TO_FX=/Library/Java/JavaVirtualMachines/javafx-sdk-13.0.2/lib

#シンタックスハイライト
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#自動補完
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#プロンプト
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme