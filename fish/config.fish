if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/jon/.ghcup/bin # ghcup-env

# opam configuration
source /home/jonathan/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jonathan/miniconda3/bin/conda
    eval /home/jonathan/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/jonathan/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jonathan/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/jonathan/miniconda3/bin" $PATH
    end
end
