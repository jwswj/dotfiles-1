
eval "$(command rbenv init -)"

command -v bundle &>/dev/null || {
  gem install bundler
  rbenv rehash
}