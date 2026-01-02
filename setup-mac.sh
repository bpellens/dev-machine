#!/bin/bash

# macOS Machine Setup Script
# This script installs all tools and applications using Homebrew Bundle
#
# USAGE:
#   ./setup-mac.sh                 # Run the full setup
#
# WHAT THIS SCRIPT DOES:
#   1. Installs Homebrew (if not already installed)
#   2. Updates Homebrew to latest version
#   3. Installs all packages defined in Brewfile
#   4. Configures fzf shell integration
#   5. Displays manual setup instructions
#
# IDEMPOTENT:
#   This script is safe to run multiple times. It will only install
#   missing packages and skip already configured items.
#
# MANAGING PACKAGES:
#   - Add packages: Edit Brewfile and run ./setup-mac.sh
#   - Remove packages: Remove from Brewfile, then run:
#     brew bundle cleanup
#   - See what's installed: brew bundle list
#   - Check status: brew bundle check

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
echo "📦 Installing packages from Brewfile..."
brew bundle --file="$(dirname "$0")/Brewfile"

echo ""
echo "🔧 Setting up additional tools..."

# Fuzzy Finder - Shell integration
if [ ! -f ~/.fzf.zsh ] && [ ! -f ~/.fzf.bash ]; then
    echo "Setting up fzf shell integration..."
    $(brew --prefix)/opt/fzf/install --all
else
    echo "✅ fzf shell integration already configured"
fi

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
