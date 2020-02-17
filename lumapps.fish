# Exported variables
set -x GCLOUD $HOME/Google/google-cloud-sdk
set -x APPENGINE $GCLOUD/bin/

set -x PATH $PATH $APPENGINE

alias k=kubectl
alias kgp="kubectl get pods"
