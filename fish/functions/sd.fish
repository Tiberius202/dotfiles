function sd
    if test -n "$NVIM"
        cd $argv && nvr -c "cd $argv" && ls
    else
        cd $argv && ls
    end
end
