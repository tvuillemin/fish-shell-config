set -x UID (id -u $USER)
set -x EDITOR vim

set -x PATH /bin /sbin $HOME/.cargo/bin/ $HOME/node_modules/.bin /var/lib/snapd/snap/bin
source ~/.asdf/asdf.fish
