# Exported variables
set -x GCLOUD $HOME/Google/google-cloud-sdk
set -x APPENGINE $GCLOUD/bin/

if [ -f "$GCLOUD/path.fish.inc" ];
    . "$GCLOUD/path.fish.inc";
end
