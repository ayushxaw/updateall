#!/usr/bin/env bash
#
# install updateall system-wide
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "installing updateall..."

sudo rm -f /usr/local/bin/updateall
sudo cp "$SCRIPT_DIR/updateall" /usr/local/bin/updateall
sudo chmod +x /usr/local/bin/updateall

echo "done. run 'updateall' from any terminal."
