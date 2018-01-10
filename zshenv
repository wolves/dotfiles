# PATH THE THINGS

# Go
export GOROOT="/usr/local/go"
export GOPATH="$HOME/code/go"
export BUFFALO_PLUGIN_PATH="$GOPATH/bin"
export PATH="$HOME/code/go/bin:$PATH"

# N - Node Manager
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Node / NPM
export NPMPATH="./node_modules/.bin:/usr/local/share/npm/bin"
export PATH="$NPMPATH:$PATH"

# Postgres.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# RAWR PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
