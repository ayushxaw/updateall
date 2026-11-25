# updateall

Update Ubuntu or Debian packages and supported desktop apps in one command.
Run it from your normal account. System updates can prompt for administrator approval.

```bash
updateall
```

- Refreshes APT package lists before upgrading. The default upgrade allows new dependencies and blocks package removals.
- Refreshes Snap and both system and personal Flatpak installations when available.
- Checks for firmware updates. Use `--firmware` to review and install them.
- Updates writable npm globals, pipx apps, Homebrew packages, and Rust toolchains when their managers are available. Pip user upgrades are skipped under OS-managed Python or while a Python environment is active.
- Shows update output, reports failures with a nonzero exit status, and saves a log under `${XDG_CACHE_HOME:-$HOME/.cache}/updateall`. Logs older than seven days are removed.

Use `--full` to review an APT full upgrade that may remove packages. Use `--cleanup` to review APT autoremove and clean the APT and Homebrew caches after successful upgrades.

## Install or remove

```bash
git clone https://github.com/ayushxaw/updateall.git
cd updateall
bash install.sh --user
```

The user install goes into `~/.local/bin`, which should be on your `PATH`. Re-run the installer after pulling changes. Run `bash uninstall.sh --user` to remove the command. Omit `--user` for installation or removal under `/usr/local/bin`.

## License

MIT
