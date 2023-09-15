alias k=kubectl
alias kgp="kubectl get pods"
alias uuid="~/Github/lumapps/core/local/scripts/id_to_uuid.py"
alias sdv="~/Github/lumapps/core/local/scripts/show_deployed_versions.py"

source /usr/local/opt/asdf/libexec/asdf.fish
set -x CLOUDSDK_PYTHON /usr/local/bin/python3
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
