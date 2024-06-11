set -g fisher_path $HOME/.local/share/fish/fisher
set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]
for file in $fisher_path/conf.d/*.fish
    builtin source $file 2>/dev/null
end
if status is-interactive && ! functions --query fisher
    curl --silent --location https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

if status is-interactive
    set -U FZF_COMPLETE 0
    set fish_greeting
    fish_vi_key_bindings

    # fish_config theme choose "Catppuccin Latte"

    starship init fish | source
    zoxide init fish --hook prompt | source
    atuin init fish --disable-up-arrow --disable-ctrl-r | source
    mise activate fish | source

    if not set -q ZELLIJ
        if test "$ZELLIJ_AUTO_ATTACH" = true
            zellij attach -c
        else
            zellij
        end

        if test "$ZELLIJ_AUTO_EXIT" = true
            kill $fish_pid
        end
    end
end
