set -x EDITOR vim
set -x GOPATH $HOME/gopath
set -x UID (id -u $USER)
set -x GLOBAL_NODE_MODULES "$HOME/node_modules"
set -x LOCAL_NODE_MODULES "./node_modules/"

# Finally, set a custom path
set -x PATH $PATH $GOPATH/bin $GLOBAL_NODE_MODULES/bin $LOCAL_NODE_MODULES/.bin /snap/bin
