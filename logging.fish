function info
    set_color $green
    printf '%s [INFO]   ' (date +'%H:%M:%S')
    printf $argv
    set_color normal
    printf '\n'
end

function warning
    set_color $yellow
    printf '%s [WARNING] ' (date +'%H:%M:%S')
    printf $argv
    set_color normal
    printf '\n'
end

function error
    set_color $red
    printf '%s [ERROR]   ' (date +'%H:%M:%S')
    printf $argv
    set_color normal
    printf '\n'
end
