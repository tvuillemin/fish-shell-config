# Exported variables
set -x GCLOUD $HOME/.asdf/installs/gcloud/274.0.1
set -x APPENGINE $GCLOUD/bin/

set -x PATH $PATH $APPENGINE

alias k=kubectl
alias kgp="kubectl get pods"
