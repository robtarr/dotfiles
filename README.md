## Launchd

Launchd is OS X's replacement for cron.

  - Symlink each `.plist` file in `~/.dotfiles/launch-scripts/ into ~/Library/LaunchAgents`

  ```
  ln -s ~/.dotfiles/launch-scripts/com.some-file.plist ~/Library/LaunchAgents/com.some-file.plist
  ```

  -  Load each daemon by running `launchctl load` for each one:

  ```
  launchctl load ~/Library/LaunchAgents/com.some-name.plist
  ```
