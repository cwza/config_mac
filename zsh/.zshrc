alias reset="tput reset"


################################################################ Zimfw
ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

############################################################# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

############################################################# zoxide
eval "$(zoxide init zsh)"

############################################################### go
export PATH="$PATH:$(go env GOPATH)/bin"

############################################################### rust
export PATH="$PATH:/Users/cwza/.cargo/bin"