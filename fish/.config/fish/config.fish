alias c="cd"
funcsave c
alias h="history"
funcsave h
alias cr="clear"
funcsave cr

# mix
alias mff="mix format --check-formatted"
funcsave mff
alias mfe="mix format --check-equivalent"
funcsave mfe
alias mb="mix bless"
funcsave mb
alias mfb="mix format --check-equivalent; and mix bless"
funcsave mfb
alias mcc="mix do clean, compile"
funcsave mcc
alias mch="mix coveralls.html"

function iet --description 'iex in test mode'
  set -lx MIX_ENV test
  iex $argv
end

function gcn --description 'clone a repo from NFIBrokerage'
  git clone git@github.com:NFIBrokerage/$argv
end

# idempotently add to global fish_user_paths
# can use `fish_add_path` once I bump to fish 3.2
contains ~/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths ~/.cargo/bin

cd ~/dev-tools/code

if test -d ~/.asdf
  source ~/.asdf/asdf.fish
  source ~/.asdf/completions/asdf.fish
end

set -Ux ERL_AFLAGS "-kernel shell_history enabled"

# set ls directory color to cyan
set -gx LSCOLORS gxfxcxdxbxegedabagacad

function fish_title
  true
end

function ll --description 'List contents of directory using long format'
  ls -lha $argv
end

function eros
  cd ~/dev-tools
  vagrant ssh eros
end

function gal
  cd ~/dev-tools
  vagrant ssh galactica
end

function kes
  cd ~/dev-tools
  vagrant ssh kestrel
end

function col
  cd ~/dev-tools-colonel
  sudo vagrant up colonel --provider=docker
  sudo vagrant docker-exec colonel -it -- /bin/bash
end

function gho
  set git_remote_url (git config --get remote.origin.url)
  if test $git_remote_url
    set http_url (string replace 'git@github.com:' 'https://github.com/' $git_remote_url)
    open $http_url
  else
    echo Not a repo
  end
end

function purge --description 'Delete all local branches that are already merged to current branch (excludes main and master)'
  command git branch --merged | grep -v "\*" | grep -v "master" | grep -v "main" | xargs -n 1 git branch -d
  command git remote prune origin
end
