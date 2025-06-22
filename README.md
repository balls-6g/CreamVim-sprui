# What is CreamVim?

CreamVim is a Neovim configuration preset that provides a modern, user-freindly,
and feature-rich experience. It is designed to be easy to use for beginners while still being powerful enough for advanced users.

# Features

- **Modern UI**: CreamVim uses a modern color scheme and icons to provide a visually appealing interface.
- **Easy to Use**: CreamVim is designed to be easy to use for beginners, with a focus on simplicity and usability.
- **Powered by Lua**: CreamVim is built using Lua, which provides a fast and efficient configuration experience.
- **Fast**: CreamVim is designed to be fast and responsive, with minimal lag and a smooth user experience.
- **Feature-Rich**: CreamVim includes a wide range of features, including LSP support, autocompletion, syntax highlighting, and more.

# Requirements

- Neovim 0.11.0 or higher
- A terminal that supports true color (256 colors)
  - Top recommended terminal emulators:
    - Alacritty
    - Kitty # I love this!!!!
    - WezTerm
    - GNOME Terminal
    - iTerm2 (macOS)
  - Second recommended terminal emulators:
    - Windows Terminal
    - ConEmu
    - Hyper
    - Terminator
    - Tabby
- A font that supports Nerd Fonts or has icons
  - Top recommended fonts:
    - Maple Mono NF CN! (The best font!)
    - Fira Code
    - JetBrains Mono
    - Cascadia Code
    - Source Code Pro
  - Second recommended fonts:
    - DejaVu Sans Mono
    - Ubuntu Mono
    - Hack
    - Noto Sans Mono
- ripgrep/fd for telescope.nvim
- fzf for FzfLua

# Install Neovim

to install neovim with your package manager:
arch/manjaro:

```bash
sudo pacman -S neovim
```

debian/ubuntu:

```bash
sudo apt install neovim # not recommended
sudo brew install neovim # recommended because for newer version
```

fedora:

```bash
sudo dnf install neovim
```

gentoo:

```bash
sudo emerge -av app-editors/neovim
```

nixOS (with flakes):

```nix
{ inputs, ... }:
{
  inputs.neovim-nix.url = "github:nix-community/neovim-nix";
  inputs.neovim-nix.flake = true;
  outputs = inputs: {
    packages.x86_64-linux.default = inputs.neovim-nix.packages.x86_64-linux.default;
  };
}
```

apline linux:

```bash
sudo apk add neovim
```

openSUSE:

```bash
sudo zypper install neovim
```

kali linux:

```bash
sudo apt install neovim
```

windows:

```ps1
winget install Neovim.Neovim # for winget users
choco install neovim # for chocolatey users
scoop install neovim # for scoop users
```

macOS:

```bash
brew install neovim # for homebrew users
```

# Install CreamVim

- install the [CreamVim Starter](https://github.com/balls-6g/CreamVim-sprui) to get started with CreamVim.

  - make backup for currene neovim files

    ```bash
    # required
    mv ~/.config/nvim{,.bak}

    # optional but recommended
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}
    ```

  - Clone the starter

    ```bash
    git clone https://github.com/balls-6g/CreamVim-sprui ~/.config/nvim
    ```

  - Start Neovim!
    ```bash
    nvim
    ```
