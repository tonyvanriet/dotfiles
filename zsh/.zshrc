# ln -s  ~/dotfiles/zsh/.zshrc ~/.zshrc

alias ll='ls -alF'

alias col="(cd ~/dev-tools; docker-compose up -d; docker exec -it colonel bash)"
alias gal="(cd ~/dev-tools/galacticon; ./docker-compose-up.sh; docker exec -it galacticon bash)"

gcnfi () {
  git clone git@github.com:NFIBrokerage/$1
}

alias lg='lazygit'

cd ~/dev-tools/code
