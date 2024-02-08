source ~/.profile

function fcd {
    cd $(find . \( \
        -name ".git" -o \
        -name ".dotnet" -o \
        -name "debug" -o \
        -name "bin" -o \
        -name "obj" -o \
        -name ".idea" -o \
        -name ".fleet" -o \
        -name "node_modules" -o \
        -name "volumes" -o \
        -name ".terraform" -o \
        -name "Library" -o \
        -name "Pictures" -o \
        -name "Documents" -o \
        -name ".local" -o \
        -name ".nuget" -o \
        -name ".npm" -o \
        -name ".vscode" -o \
        -name ".rustup" -o \
        -name ".cargo" -o \
        -name ".quokka" -o \
        -name ".vscode-insiders" \
        \) -prune -false -o -type d -print | fzf)
    }
