#!/bin/bash

# macOS Machine Setup Script
# This script installs all tools and applications using Homebrew

set -e  # Exit on error

echo "🚀 Starting macOS setup..."
echo ""

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "📦 Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed"
fi

echo ""
echo "🔄 Updating Homebrew..."
brew update

echo ""
echo "📱 Installing Applications..."

# Security & Password Management
echo "Installing 1Password..."
brew install --cask 1password

echo "Installing KeePassXC..."
brew install --cask keepassxc

# Terminal
echo "Installing Ghostty..."
brew install --cask ghostty

# Note Taking
echo "Installing Obsidian..."
brew install --cask obsidian

# API Testing
echo "Installing Bruno..."
brew install bruno

# Code Editors & IDEs
echo "Installing Cursor..."
brew install --cask cursor

echo "Installing VS Code..."
brew install --cask visual-studio-code

echo "Installing Rider..."
brew install --cask rider

# Browsers
echo "Installing Brave Browser..."
brew install --cask brave-browser

echo "Installing Google Chrome..."
brew install --cask google-chrome

# Communication
echo "Installing Slack..."
brew install --cask slack

echo "Installing WhatsApp..."
brew install --cask whatsapp

# Productivity
echo "Installing Todoist..."
brew install --cask todoist-app

echo "Installing Google Drive..."
brew install --cask google-drive

# Containerization
echo "Installing Podman Desktop..."
brew install --cask podman-desktop

# Version Control
echo "Installing SourceTree..."
brew install --cask sourcetree

echo "Installing GitHub Desktop..."
brew install --cask github

# Database Tools
echo "Installing Beekeeper Studio..."
brew install --cask beekeeper-studio

echo ""
echo "🛠️  Installing Development Tools..."

# Cloud CLIs
echo "Installing Azure CLI..."
brew install azure-cli

echo "Installing gCloud CLI..."
brew install --cask google-cloud-sdk

echo "Installing GitHub CLI..."
brew install gh

# Infrastructure as Code
echo "Installing Terraform..."
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# .NET Development
echo "Installing .NET SDK..."
brew install --cask dotnet-sdk
brew install --cask dotnet-sdk@8

# Microservices
echo "Installing Dapr CLI..."
brew install dapr/tap/dapr-cli

# Runtime & Package Managers
echo "Installing Node.js (includes npm and npx)..."
brew install node

echo "Installing uv (for uvx commands)..."
brew install uv

echo ""
echo "🔧 Installing Additional Tools..."

# Fuzzy Finder
echo "Installing fzf..."
brew install fzf
# Run fzf install script for shell integration
$(brew --prefix)/opt/fzf/install --all

echo ""
echo "📝 Manual Setup Required:"
echo ""
echo "1. Oh My Zsh:"
echo "   sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
echo ""
echo "2. Zsh Autosuggestions (after Oh My Zsh):"
echo "   git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
echo "   Then add 'zsh-autosuggestions' to plugins in ~/.zshrc"
echo ""
echo "3. VS Code Extensions (install via VS Code):"
echo "   - C# Dev Kit"
echo "   - Azure Tools"
echo "   - Claude Code for VS Code"
echo "   - GitLab Workflow"
echo "   - HashiCorp Terraform"
echo "   - Docker"
echo "   - SonarQube for IDE"
echo "   - SQL Server (mssql)"
echo ""
echo "4. .NET CLI Tools (install after .NET SDK):"
echo "   dotnet tool install -g dotnet-format"
echo "   dotnet tool install -g dotnet-ef"
echo "   dotnet tool install -g Microsoft.OpenApi.Kiota"
echo ""
echo "✅ Setup complete!"
echo ""
echo "🔄 Please restart your terminal for all changes to take effect."
