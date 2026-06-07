zoxide init fish | source
starship init fish | source

alias ls="logo-ls"
alias zed="zeditor"

# yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
	builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

