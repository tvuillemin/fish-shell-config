set -x UID (id -u $USER)
set -x EDITOR vim

# set -U $fish_user_paths /usr/local/opt/make/libexec/gnubin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/gnu-getopt/bin /usr/local/opt/openssl@1.1/bin
fish_add_path /usr/local/opt/gnu-sed/libexec/gnubin
set -x LIBRARY_PATH /usr/local/opt/openssl/lib/
