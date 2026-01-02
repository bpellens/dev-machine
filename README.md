# macOS Development Machine Setup

Automated setup script for macOS development environment using Homebrew Bundle.

## Quick Start

```bash
# Clone this repository
git clone <your-repo-url>
cd dev-machine

# Run the setup script
./setup-mac.sh
```

## What Gets Installed

The setup includes:
- **Security**: 1Password, KeePassXC
- **Development**: VS Code, Cursor, Rider, .NET SDK, Node.js
- **Cloud Tools**: Azure CLI, gCloud CLI, GitHub CLI, Terraform
- **Browsers**: Brave, Chrome
- **Communication**: Slack, WhatsApp
- **Productivity**: Obsidian, Todoist, Google Drive
- **DevOps**: Podman Desktop, Dapr CLI
- **Database**: Beekeeper Studio
- **Version Control**: SourceTree, GitHub Desktop

See [Brewfile](Brewfile) for the complete list.

## Usage

### Initial Setup
```bash
./setup-mac.sh
```

### Managing Packages

**Add a new package:**
1. Edit `Brewfile` and add the package
2. Run `./setup-mac.sh` or `brew bundle`

**Remove a package:**
1. Remove it from `Brewfile`
2. Run `brew bundle cleanup`

**Check what's installed:**
```bash
brew bundle check
```

**List all packages in Brewfile:**
```bash
brew bundle list
```

### Useful Brew Bundle Commands

```bash
# Install packages from Brewfile
brew bundle

# Dry run - check what would be installed
brew bundle check

# Remove packages not in Brewfile (with confirmation)
brew bundle cleanup

# Force cleanup without confirmation
brew bundle cleanup --force

# Generate Brewfile from currently installed packages
brew bundle dump
```

## Manual Setup Required

After running the script, complete these manual steps:

### 1. Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Zsh Autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Then add `zsh-autosuggestions` to plugins in `~/.zshrc`

### 3. VS Code Extensions
Install these extensions via VS Code:
- C# Dev Kit
- Azure Tools
- Claude Code for VS Code
- GitLab Workflow
- HashiCorp Terraform
- Docker
- SonarQube for IDE
- SQL Server (mssql)

### 4. .NET CLI Tools
```bash
dotnet tool install -g dotnet-format
dotnet tool install -g dotnet-ef
dotnet tool install -g Microsoft.OpenApi.Kiota
```

## Idempotency

This setup is **fully idempotent** - you can run `./setup-mac.sh` multiple times safely:
- Homebrew installation is checked before attempting to install
- `brew bundle` only installs missing packages
- fzf shell integration checks for existing configuration
- All operations skip items that are already set up

## Syncing Across Machines

1. Keep this repository in version control
2. Clone on a new machine
3. Run `./setup-mac.sh`
4. All your tools will be installed automatically

## Customization

Edit `Brewfile` to customize your setup:
- `brew "package-name"` for command-line tools
- `cask "app-name"` for GUI applications
- `tap "user/repo"` for third-party repositories

## Troubleshooting

**Check Homebrew status:**
```bash
brew doctor
```

**Update Homebrew:**
```bash
brew update
```

**Upgrade all packages:**
```bash
brew upgrade
```

**See what's outdated:**
```bash
brew outdated
```
