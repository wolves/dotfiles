# PATH THE THINGS

# Boot2Docker
export DOCKER_HOST="tcp://192.168.59.103:2376"
export DOCKER_CERT_PATH="/Users/shinigami/.boot2docker/certs/boot2docker-vm"
export DOCKER_TLS_VERIFY=1

# Go
export GOROOT="/usr/local/go"
export GOPATH="$HOME/code/go"
export GOENG="$HOME/go_appengine"
export PATH="$HOME/code/go/bin:$PATH"
export PATH="$GOENG:$PATH"

# Node / NPM
export NPMPATH="./node_modules/.bin:/usr/local/share/npm/bin"
export PATH="$NPMPATH:$PATH"

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Yarn
export PATH="$PATH:$HOME/.yarn/bin"

# RAWR PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
