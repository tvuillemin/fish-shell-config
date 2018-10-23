set -x EDITOR vim
set -x GOPATH $HOME/gopath
set -x UID (id -u $USER)
set -x NPM_PACKAGES "$HOME/.npm-packages"

# Finally, set a custom path
set -x PATH $PATH /usr/lib/go-1.10/bin $HOME/black-env/bin/ $GOPATH/bin $NPM_PACKAGES/bin $HOME/Binaires/node-v8.12.0-linux-x64/bin ./node_modules/.bin
