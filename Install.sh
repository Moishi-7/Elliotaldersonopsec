#!/bin/sh

#dl opsec stuff
chmod +x Elliotaldersonopsec

#some more OPSEC 
if [ -w /usr/local/bin ]; then
    cp Elliotaldersonopsec /usr/local/bin/elliotaldersonopsec
elif command -v sudo >/dev/null 2>&1; then
    sudo cp Elliotaldersonopsec /usr/local/bin/elliotaldersonopsec
else
    mkdir -p "$HOME/.local/bin"
    cp Elliotaldersonopsec "$HOME/.local/bin/elliotaldersonopsec"
fi

echo "[+] Welcome to OPSEC brother, Type 'elliotaldersonopsec'"
