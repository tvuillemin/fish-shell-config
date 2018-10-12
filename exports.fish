set -x EDITOR vim
set -x GOPATH $HOME/gopath
set -x PATH $PATH $HOME/black-env/bin/ /usr/lib/go-1.10/bin $GOPATH/bin
set -x UID (id -u $USER)
