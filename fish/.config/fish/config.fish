source ~/.config/fish/aliases.fish

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

function purge --description 'Delete all local branches that are already merged to current branch (excludes master)'
  command git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
  command git remote prune origin
end