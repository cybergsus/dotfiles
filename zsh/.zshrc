# cd to directory when written as a command
setopt autocd

add-to-path() {
	export -U PATH=$1${PATH:+:$PATH}
}

add-to-path $HOME/.cargo/bin
add-to-path $HOME/go/bin
add-to-path $HOME/.local/bin

# set XDG prefixes
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# git stuff
export GIT_EDITOR=nvim
alias gap='git add --patch'
alias gst='git status'
alias gpf='git push --force-with-lease'

# bat theme
export BAT_THEME="Catppuccin-mocha"

# ls alias
alias ls='lsd --color=auto'
alias ll='ls -lA'

# syntax highlighting + autosuggestions
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# starship prompt
source <(starship init zsh --print-full-init)

# opam configuration
[[ ! -r /home/gsus/.opam/opam-init/init.zsh ]] || source /home/gsus/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

[ -f "/home/gsus/.ghcup/env" ] && source "/home/gsus/.ghcup/env" || true # ghcup-env

export QSYS_ROOTDIR="/home/gsus/installs/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -e /home/gsus/.nix-profile/etc/profile.d/nix.sh ]; then . /home/gsus/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# pnpm
export PNPM_HOME="/home/gsus/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end