#!/bin/sh

chmod +x elliotaldersonopsec

# Checks /usr/local/bin and ~/.local/bin
if [ -w /usr/local/bin ]; then
    cp elliotaldersonopsec /usr/local/bin/
elif command -v sudo >/dev/null 2>&1; then
    sudo cp elliotaldersonopsec /usr/local/bin/
else
    mkdir -p "$HOME/.local/bin"
    cp elliotaldersonopsec "$HOME/.local/bin/"
fi

echo "[+] welcome to OPSEC brother, Type 'elliotaldersonopsec'"
