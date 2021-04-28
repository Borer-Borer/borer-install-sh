#/bin/bash

if [ ! $(command -v cargo) ]; then
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
else
    echo "rust exist!"
fi
