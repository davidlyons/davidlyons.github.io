---
title: 'Mac Setup'
description: 'Recommended apps and settings'
pubDate: 'Feb 22 2025'
updatedDate: 'July 18 2025'
cover: './macbook.jpg'
coverAlt: 'MacBook Pro'
draft: true
---

Recommended Mac settings, app downloads and shortcuts primarily for getting a web development
environment up and running.

## Manual settings

- Sign in to Apple Account to use `mas` App Store CLI in next section
- General > About > Set device name
- Keep awake when lid is closed to use with external monitors: Settings > Battery > Options Enable
  "Prevent automatic sleeping on power adapter when the display is off"
- "Safari" menu > Settings > Advanced: Show features for web developers

## Run install script

Installs homebrew, apps, CLI tools, pnpm, Node.js, system settings, dock items. VS Code extensions
can be installed via this script or settings sync in the next section.

- Download zip from [install.sh](https://github.com/davidlyons/install.sh) (forked from
  [install.sh](https://github.com/donnybrilliant/install.sh))
- Open Terminal, navigate to the repo directory, and execute:

```
./install.sh
```

## More manual settings

- Open apps and set permissions
- Rectangle > Settings > Launch on login
- GitHub sign in with `gh auth login` to clone repos
- VS Code sign in with GitHub account to sync settings, extensions, shortcuts
- Chrome
  - set as default browser
  - Sign in to sync Apps, Extensions and Settings
  - Bookmarks through syncmarx Extension + Dropbox

## iTerm2

- Settings > General > Closing > disable: Confirm "Quit iTerm2 (cmd Q)"
- Settings > Profiles:
  - Text > increase font size to 15
  - Window > adjust transparency to 18
  - Keys > Key Mappings preset: [Natural Text Editing](https://superuser.com/a/1704086)
- To restore window size when reopening / enable window restoration: System Settings > Desktop &
  Dock > disable Close windows when quitting an application
