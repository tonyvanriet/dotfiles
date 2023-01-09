export KERL_CONFIGURE_OPTIONS="--without-wx"

alias ll='ls -alF'

alias lg='lazygit'

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

gcn () {
  git clone git@github.com:NFIBrokerage/$1
}

gcnb () {
  # set -e
  gcn $1
  cd $1
  mhb
}

purge () {
  git branch --merged | egrep -v "(^\*|master|main)" | xargs git branch -d
  git remote prune origin
}

cd ~/dev-tools/code
