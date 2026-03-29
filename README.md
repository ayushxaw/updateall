# updateall

one command to update your entire ubuntu/debian system.

```
sudo updateall
```

handles **apt**, **snap**, **flatpak**, **firmware**, **npm globals**, **pip user packages**, **homebrew**, and **rustup** — runs each one, logs everything, and shows a clean summary at the end.

## what it does

```
updateall — Mar 29 21:18

[apt]
  updating package lists                ✓
  upgrading packages                    ✓
  full-upgrade                          ✓
  removing unused packages              ✓
  cleaning cache                        ✓

[snap]
  refreshing snaps                      ✓

[flatpak]
  updating flatpaks                     ✓

────────────────────────────────────
done  42s  12 packages  freed 180MB
log: ~/.cache/updateall/2026-03-29_211800.log
────────────────────────────────────
```

- updates apt, snap, flatpak, firmware, npm globals, pip user packages
- only runs managers that are actually installed
- logs everything to `~/.cache/updateall/` (auto-cleans after 7 days)
- shows package count, disk freed, time taken
- warns if reboot is needed
- colored output (disabled when piped)

## install

```bash
git clone https://github.com/ayushxaw/updateall.git
cd updateall
bash install.sh
```

this copies `updateall` to `/usr/local/bin/` so you can run it from anywhere.

## uninstall

```bash
bash uninstall.sh
```

## config

no config needed. it auto-detects which package managers you have:

| manager | detected via |
|---------|-------------|
| apt | always (debian/ubuntu base) |
| snap | `command -v snap` |
| flatpak | `command -v flatpak` |
| firmware | `command -v fwupdmgr` |
| npm | `command -v npm` |
| pip | `command -v pip3` |
| brew | `command -v brew` |
| rust | `command -v rustup` |

## license

MIT
