# Generic aliases
alias g='git'
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias gca='git commit --amend'
alias gpf='git push --force-with-lease'

# Customized functions
function git_branch_create
    if not test -z $argv
        git checkout -b $argv; and git push -u origin $argv
    else
        error 'Missing the branch name parameter.'
    end
end
alias gbc='git_branch_create'

function git_branch_delete
    if not test -z $argv
        git branch -D $argv; and git push origin :$argv
    else
        error "Missing the branch name parameter."
    end
end
alias gbd='git_branch_delete'

function git_branch_update
    git fetch -p;
    and git rebase origin/master;
    and git push --force-with-lease --no-verify
end
alias gbu='git_branch_update'

function pr_merged
    set merged_branch (git branch --show-current)
    git checkout master
    git fetch -p
    git pull --rebase
    gbd $merged_branch
end

# Git prompt configuration
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1
set -g __fish_git_prompt_color_branch $yellow
set -g __fish_git_prompt_showupstream "yes"
set -g __fish_git_prompt_char_upstream_ahead "↑ "
set -g __fish_git_prompt_char_upstream_behind "↓ "
set -g __fish_git_prompt_char_upstream_prefix " "
set -g __fish_git_prompt_char_stagedstate "● "
set -g __fish_git_prompt_char_dirtystate "✚ "
set -g __fish_git_prompt_char_untrackedfiles "… "
set -g __fish_git_prompt_char_conflictedstate "✖ "
set -g __fish_git_prompt_char_cleanstate "✔ "
set -g __fish_git_prompt_color_dirtystate $blue
set -g __fish_git_prompt_color_stagedstate $yellow
set -g __fish_git_prompt_color_invalidstate $red
set -g __fish_git_prompt_color_untrackedfiles normal
set -g __fish_git_prompt_color_cleanstate $green
set -g __fish_git_prompt_char_stateseparator ''
