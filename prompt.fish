set -x VIRTUAL_ENV_DISABLE_PROMPT yes

function fish_greeting
end


function fish_prompt

    # Save the status of the last command for future purposes
    set -l last_status $status
    set_color normal

    # Show the current directory
    printf "%s " (set_color $blue)(prompt_pwd)(set_color normal)

    # Show the current virtualenv
    if test $VIRTUAL_ENV
        printf "(%s) " (set_color $blue)(basename $VIRTUAL_ENV)(set_color normal)
    end

    # Show the Kubernetes context
    set -l kube_ctx (kubectx --current)
    set -l kube_ns (kubens --current)
    switch $kube_ctx
    case "*prod*"
        printf "%s" (set_color $red)
    case "*"
        printf "%s" (set_color $green)
    end
    printf "%s/%s" $kube_ctx $kube_ns
    printf "%s " (set_color normal)

    # Show the git prompt
    printf "%s " (__fish_git_prompt "%s")

    # Print a final $. It should be red if the last command exited with an error.
    if not test $last_status -eq 0
        set_color $red
    else
        set_color normal
    end
    printf '$ '

    # Set the color back to normal
    set_color normal
end
