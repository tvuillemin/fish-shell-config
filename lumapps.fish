# Exported variables
set -x GCLOUD $HOME/Google/google-cloud-sdk
set -x APPENGINE $GCLOUD/bin/
set -x N_PREFIX $HOME/n
set -x PATH $APPENGINE $N_PREFIX/bin $PATH

# Aliases
alias frontend='npm start'
alias backend='rlwrap dev_appserver.py --port 8888 --host=localhost --datastore_path=~/LumApps/datastore --search_indexes_path=~/LumApps/search_index --blobstore_path=~/LumApps/blobstore app/app.yaml app/process.yaml app/frontprocess.yaml --enable_console --enable_sendmail=True --dev_appserver_log_level=warning --threadsafe_override=false --max_module_instance=1'
