# updateall

Run one command to update the software managed by your Ubuntu or Debian system.

```bash
updateall
```

`updateall` asks for your administrator password once, then updates APT packages, Snaps, system and user Flatpaks, firmware, writable npm globals, supported Python user packages, pipx apps, user Ruby gems, Homebrew packages, and Rust toolchains when they are installed.

APT uses a full upgrade and includes Ubuntu phased updates. It also removes unused packages and cleans the APT cache. APT covers software installed from its configured repositories, including applications such as VS Code, Waydroid, Antigravity, browsers, and desktop apps.

It runs each available package manager independently, so one service failure does not prevent the rest from updating. Each run writes a log under `~/.cache/updateall/` and removes logs older than seven days.

Python packages managed by Ubuntu are skipped because Ubuntu protects them from global pip upgrades. Update those through APT or the virtual environment for the project that owns them.

## Options

```bash
updateall --safe
updateall --no-cleanup
updateall --no-firmware
```

`--safe` prevents APT package removals and skips cleanup. `--no-cleanup` leaves unused packages and caches alone. `--no-firmware` skips firmware metadata and firmware updates. The older `--full`, `--cleanup`, and `--firmware` flags still work because those actions are now enabled by default.

## Install or remove

```bash
git clone https://github.com/ayushxaw/updateall.git
cd updateall
bash install.sh --user
```

The user installation creates `~/.local/bin/updateall`, so the command works from any directory. Re-run the installer after pulling updates.

```bash
bash uninstall.sh --user
```

Omit `--user` to install or remove `/usr/local/bin/updateall` instead.

## License

MIT
