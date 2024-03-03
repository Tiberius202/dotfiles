if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/jon/.ghcup/bin # ghcup-env

# opam configuration
source /home/jonathan/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
