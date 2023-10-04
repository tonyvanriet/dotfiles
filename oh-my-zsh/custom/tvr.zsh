# ln -s  ~/dotfiles/oh-my-zsh/custom/tvr.zsh ~/.oh-my-zsh/custom

export KERL_CONFIGURE_OPTIONS="--without-wx"

alias ll='ls -alF'

alias lg='lazygit'

alias ghb='gh browse'

alias col="(cd ~/dev-tools; docker-compose up -d; docker exec -it colonel bash)"
alias gal="(cd ~/dev-tools/galacticon; ./docker-compose-up.sh; docker exec -it galacticon bash)"


mhb () {
  asdf install
  mix local.rebar --force
  mix local.hex --force
  mix archive.install hex harness --force
  mix do harness.get, harness
  mix deps.get
  mix bless
}

gcnfi () {
  git clone git@github.com:NFIBrokerage/$1
}

purge () {
  git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
  git remote prune origin
}

mtw () {
  fswatch lib test | mix test $1 --stale --listen-on-stdin
}

cd ~/dev-tools/code
