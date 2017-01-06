# PATH THE THINGS

# Boot2Docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/shinigami/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/code/go

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# RAWR PATH
export PATH=/usr/local/bin:/usr/local/sbin:./node_modules/.bin:$GOROOT/bin:$GOPATH/bin:/usr/local/share/npm/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# Yarn
export PATH="$PATH:$HOME/.yarn/bin"

chruby ruby-2.3.1
