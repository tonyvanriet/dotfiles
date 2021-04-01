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
