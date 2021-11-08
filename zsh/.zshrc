# ln -s  ~/dotfiles/zsh/.zshrc ~/.zshrc

alias ll='ls -alF'

alias col="(cd ~/dev-tools; docker-compose up -d; docker exec -it colonel bash)"
alias gal="(cd ~/dev-tools/galacticon; docker-sync start; docker-compose up -d; docker exec -it galacticon bash)"

gcn () {
  git clone git@github.com:NFIBrokerage/$1
}

cd ~/dev-tools/code
