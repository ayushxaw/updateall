#!/usr/bin/env bash
set -e

case "${1:-}" in
    '') sudo rm -f -- /usr/local/bin/updateall ;;
    --user) rm -f -- "$HOME/.local/bin/updateall" ;;
    *) printf 'Usage: bash uninstall.sh [--user]\n' >&2; exit 2 ;;
esac
