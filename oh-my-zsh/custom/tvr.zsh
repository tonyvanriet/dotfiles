# ln -s  ~/dotfiles/oh-my-zsh/custom/tvr.zsh ~/.oh-my-zsh/custom

export KERL_CONFIGURE_OPTIONS="--without-wx --disable-jit"

alias ll='ls -alF'

alias lg='lazygit'

alias ghb='gh browse'

alias c='claude'

purge () {
  git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
  git remote prune origin
}

mtw () {
  fswatch lib test | mix test $1 --stale --listen-on-stdin
}

opc () {
  op item get $1 --fields label=password --account vanriet.1password.com --vault Shared
}

unsetopt SHARE_HISTORY

export EDITOR="zed"

export FNOX_AGE_KEY_FILE=~/.config/fnox/age.txt
eval "$(fnox activate zsh)"     # (_fnox)
eval "$(direnv hook zsh)"        # (_direnv _fnox)  → direnv runs first ✅
eval "$(mise activate zsh)"      # (_mise _direnv _fnox)

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

source <(~/code/iac/scripts/prod.sh --completion zsh)
