source ~/.profile

function fcd {
    cd $(fd . \
        --exclude ".git" \
        --exclude ".dotnet"  \
        --exclude "debug" \
        --exclude "bin" \
        --exclude "obj" \
        --exclude ".idea" \
        --exclude ".fleet" \
        --exclude "node_modules" \
        --exclude "volumes" \
        --exclude ".terraform" \
        --exclude ".local" \
        --exclude ".nuget" \
        --exclude ".npm" \
        --exclude ".vscode" \
        --exclude ".rustup" \
        --exclude ".cargo" \
        --exclude ".quokka" \
        --exclude ".vscode-insiders" ) -prune -false -type d -print | fzf)
    }
