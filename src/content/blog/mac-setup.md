---
title: 'Mac Setup'
description: 'Recommended apps and settings'
pubDate: 'Feb 22 2025'
cover: './macbook.jpg'
coverAlt: 'MacBook Pro'
# Kbd Generator https://kbd.hsuan.xyz
---

Recommended Mac settings, app downloads and shortcuts primarily for getting a web development
environment up and running.

## Mac Settings / System Preferences

- Desktop & Dock > Hot Corners > Bottom Left: Desktop
- Trackpad > Scroll & Zoom > Natural scrolling: disable
- Trackpad > Tap to click: enable
- Increase Mouse tracking speed
- Keyboard > Key repeat rate: increase
- Keyboard > Delay until repeat: decrease
- "Safari" menu > Preferences > Advanced:  
  Enable "Show Develop menu in menu bar"

## Finder Settings

- Toggle hidden files: <kbd>⌘ Command</kbd> + <kbd>⇧ Shift</kbd> + <kbd>.</kbd>
- View > Show Path Bar and Show Status Bar
- Settings > Advanced:  
  Enable "Keep folders on top: In windows when sorting by name"  
  Enable "Show all filename extensions"

## Applications

### Utilities

- [Rectangle](https://rectangleapp.com) window management  
  Commonly used shortcuts

  - Maximize: <kbd>⌃ Control</kbd> + <kbd>⌥ Option</kbd> + <kbd>⏎ Enter</kbd>
  - Left/right half: <kbd>⌃ Control</kbd> + <kbd>⌥ Option</kbd> + <kbd>←</kbd> <kbd>→</kbd>
  - Prev/next display: <kbd>⌃ Control</kbd> + <kbd>⌥ Option</kbd> + <kbd>⌘ Command</kbd> +
    <kbd>←</kbd> <kbd>→</kbd>

- [Chrome](https://www.google.com/chrome) web browser  
  Extensions: [AdBlock Plus](https://chromewebstore.google.com/detail/adblock-plus-free-ad-bloc/cfhdojbkjhnklbpkdaibdccddilifddb),
  [Autoscroll 2.0](https://chromewebstore.google.com/detail/autoscroll-20/kkgmmlflilcfcogmfpnhakfamdkdcbpl),
  [ColorZilla](https://chromewebstore.google.com/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp),
  [React Developer Tools](https://chromewebstore.google.com/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)

### Web Development

- [iTerm2](https://iterm2.com) replacement for Terminal  
  Commonly used commands: `cd` `ls` `open .` `clear`  
  Settings > Profiles:

  - Text > increase font size
  - Window > adjust transparency
  - Keys > Key Mappings preset: [Natural Text Editing](https://superuser.com/a/1704086)

- [Sublime Merge](https://www.sublimemerge.com) git GUI
- [Figma](https://www.figma.com/downloads/) design
- ~~[Docker](https://www.docker.com) build and run containerized applications~~

### 3D Graphics

- [Blender](https://www.blender.org/download/) DCC
- [ZBrush 2022.0.8](https://pixologic.com/my-licenses/) digital sculpting
- [Wacom Driver](https://www.wacom.com/en-us/support/product-support/drivers) - DTH167 Cintiq Pro 16
  (2021)
- [PureRef](https://www.pureref.com) reference images window

## Set case-insensitive tab completion in terminal

To quickly tab through uppercase folder names in the terminal, add to ~/.zshrc file:

```bash
# Set case insensitive comparison when lower case letters are typed.
# Upper case typed letters only match upper case file names
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit && compinit
```

## Visual Studio Code

[VS Code](https://code.visualstudio.com/download) IDE

Sign in to sync settings / extensions

View > Appearance > Activity Bar Position: Hidden

Extensions: Astro, Atom One Dark Theme, Babel JavaScript, CSS Nesting Syntax Highlighting, Docker,
ESLint, GitHub Actions, glTF Tools, Material Icon Theme, MDX, Prettier, Shader languages support for
VS Code, Sublime Text Keymap and Settings Importer, Tailwind CSS Intellisense

[Default keyboard shortcuts reference](https://code.visualstudio.com/docs/reference/default-keybindings)

Commonly used shortcuts

- View Command Palette: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>P</kbd>
- View Terminal: <kbd>⌃ Control</kbd> + <kbd>`</kbd>
- Switch Workspace: <kbd>⌃ Control</kbd> + <kbd>R</kbd>
- Cursor to prev/next word: <kbd>⌥ Option</kbd> + <kbd>←</kbd> <kbd>→</kbd>
- Cursor to start/end of line: <kbd>⌘ Command</kbd> + <kbd>←</kbd> <kbd>→</kbd>
- Select words/lines: <kbd>⇧ Shift</kbd> + move cursor shortcut
- Move line up/down: <kbd>⌥ Option</kbd> + <kbd>↑</kbd> <kbd>↓</kbd>
- Add Next Occurence: <kbd>⌘ Command</kbd> + <kbd>D</kbd>
- Copy Line Down: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>D</kbd>
- Switch tab: <kbd>⌘ Command</kbd> + <kbd>1</kbd> <kbd>2</kbd> <kbd>3</kbd>
- Find: <kbd>⌘ Command</kbd> + <kbd>F</kbd>
- Find in Files: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>F</kbd>
- Explorer: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>E</kbd>
- Extensions: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>X</kbd>
- Toggle Primary Side Bar: <kbd>⌘ Command</kbd> + <kbd>K</kbd> + <kbd>⌘ Command</kbd> + <kbd>B</kbd>
- Preview markdown: <kbd>⇧ Shift</kbd> + <kbd>⌘ Command</kbd> + <kbd>V</kbd>

Enable [Emmet](https://emmet.io) within JSX and Prettier Format on Save

1. View Command Palette: <kbd>⌘ Command</kbd> + <kbd>⇧ Shift</kbd> + <kbd>P</kbd>
2. Preferences: Open User Settings (JSON) and add the following:

```json
"emmet.triggerExpansionOnTab": true,
"emmet.includeLanguages": {
  "javascript": "javascriptreact"
},
"editor.formatOnSave": true,
"editor.defaultFormatter": "esbenp.prettier-vscode",
```

To open the current working directory in VS Code from the terminal with the command `code .`

1. View Command Palette: <kbd>⌘ Command</kbd> + <kbd>⇧ Shift</kbd> + <kbd>P</kbd>
2. Install 'code' command in PATH

Set Emmet Wrap With Abbreviation Shortcut

1. View Command Palette: <kbd>⌘ Command</kbd> + <kbd>⇧ Shift</kbd> + <kbd>P</kbd>
2. Emmet Wrap With Abbreviation
3. Click Settings (Gear icon)
4. Set Keybinding to: <kbd>⌘ Command</kbd> + <kbd>⇧ Shift</kbd> + <kbd>W</kbd>
<!-- `Ctrl + Shift + W` is default on Windows -->

## Homebrew

Install [Homebrew](https://brew.sh) package manager

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Run these two commands in your terminal to add `brew` to PATH:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- [Git](https://git-scm.com) version control  
  Commonly used [commands](https://git-scm.com/docs): `status` `add` `commit` `checkout` `branch`
  `reset` `merge` `push` `pull` `diff` `log` `stash`  
  After a merge + commit, you are inside vim. To save changes and quit:  
  <kbd>Escape</kbd> `:wq` <kbd>⏎ Enter</kbd>
- [GitHub CLI](https://cli.github.com) checkout pull requests and auth login to switch accounts
- ~~[ngrok](https://ngrok.com/docs/getting-started) temporarily expose a local development server to
  the internet~~

```bash
brew install git gh
```

Set your name and email and add `git uncommit` alias shortcut, updates ~/.gitconfig

```bash
git config --global user.name "Mona Lisa"
git config --global user.email "YOUR_EMAIL"
git config --global alias.uncommit 'reset --soft HEAD~1'
```

## Node.js

JavaScript runtime environment, install via
[nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

[Install Node.js Locally with Node Version Manager (nvm)](https://heynode.com/tutorial/install-nodejs-locally-nvm)

```bash
bash nvm-install.sh
```

Downloading nvm from git to ~/.nvm

```bash
nvm install --lts
```

Add `node` to PATH

```bash
nvm which 22.14.0
```

Add output to ~/.zshrc file:

```bash
export PATH="$HOME/.nvm/versions/node/v22.14.0/bin:$PATH"
```

## Global npm packages

- [npm-check-updates](https://github.com/raineorshine/npm-check-updates)  
  Install globally to use `npm-check-updates` or the shorter `ncu`
- [http-server](https://github.com/http-party/http-server) simple command-line server
- [five-server](https://github.com/yandeu/five-server) dev server with live reload capability

```bash
npm install --global http-server five-server npm-check-updates
```
