# Brewfile - macOS Development Machine Setup
#
# USAGE:
#   brew bundle                    # Install all packages from this Brewfile
#   brew bundle check              # Check what would be installed (dry run)
#   brew bundle list               # List all packages in this Brewfile
#   brew bundle cleanup            # Remove packages not in this Brewfile (prompts for confirmation)
#   brew bundle cleanup --force    # Remove packages without confirmation
#   brew bundle dump               # Generate Brewfile from currently installed packages
#
# TIPS:
#   - This file is idempotent - safe to run multiple times
#   - Keep this file in version control to sync across machines
#   - Use 'brew' for command-line tools and 'cask' for GUI applications

# Taps
tap "hashicorp/tap"
tap "dapr/tap"

# Security & Password Management
cask "1password"
cask "keepassxc"

# Terminal
cask "ghostty"

# Note Taking
cask "obsidian"

# API Testing
brew "bruno"

# Code Editors & IDEs
cask "cursor"
cask "visual-studio-code"
cask "rider"

# Browsers
cask "brave-browser"
cask "google-chrome"

# Communication
cask "slack"
cask "whatsapp"

# Productivity
cask "todoist"
cask "google-drive"

# Containerization
cask "podman-desktop"

# Version Control
cask "sourcetree"
cask "github"

# Database Tools
cask "beekeeper-studio"

# Cloud CLIs
brew "azure-cli"
cask "google-cloud-sdk"
brew "gh"

# Infrastructure as Code
brew "hashicorp/tap/terraform"

# .NET Development
cask "dotnet-sdk"
cask "dotnet-sdk@8"

# Microservices
brew "dapr/tap/dapr-cli"

# Runtime & Package Managers
brew "node"
brew "uv"

# Additional Tools
brew "fzf"
