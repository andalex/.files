# if running bash
if [ -n "$BASH_VERSION" ]; then
    echo "Setting up bash_profile ..."
        # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        echo "sourcing .bashrc file..." && . "$HOME/.bashrc"
    fi
fi

