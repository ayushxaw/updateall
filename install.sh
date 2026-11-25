#!/usr/bin/env bash
set -e

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
case "${1:-}" in
    '')
        sudo install -T -m 0755 -- "$script_dir/updateall" /usr/local/bin/updateall
        ;;
    --user)
        install -d -- "$HOME/.local/bin"
        install -T -m 0755 -- "$script_dir/updateall" "$HOME/.local/bin/updateall"
        ;;
    *)
        printf 'Usage: bash install.sh [--user]\n' >&2
        exit 2
        ;;
esac
printf 'Installed. Run updateall as your normal user.\n'
