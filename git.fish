# Generic aliases
alias g='git'
alias gst='git status'


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
set -g __fish_git_prompt_char_stateseparator ' currently '
