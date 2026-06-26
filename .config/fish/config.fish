if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    function fish_greeting
        clear
        fastfetch
        fzf_configure_bindings
    end
end

# bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH $BUN_INSTALL/bin $PATH

