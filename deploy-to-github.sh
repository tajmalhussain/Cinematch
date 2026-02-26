#!/bin/bash

# CineMatch AI - GitHub Deployment Script
# This script helps you deploy CineMatch AI to GitHub Pages

echo "🎬 CineMatch AI - GitHub Deployment Helper"
echo "==========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "   Visit: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get user information
echo "📝 Let's set up your repository..."
echo ""
read -p "Enter your GitHub username: " username
read -p "Enter repository name (default: cinematch-ai): " reponame
reponame=${reponame:-cinematch-ai}

echo ""
echo "📦 Repository will be created as:"
echo "   https://github.com/$username/$reponame"
echo "   Your site will be: https://$username.github.io/$reponame/"
echo ""
read -p "Continue? (y/n): " confirm

if [[ $confirm != [yY] ]]; then
    echo "Cancelled."
    exit 0
fi

# Initialize git repository
echo ""
echo "🔧 Initializing Git repository..."
git init

# Check if index.html exists
if [ ! -f "index.html" ]; then
    if [ -f "cinematch-ml.html" ]; then
        echo "📄 Renaming cinematch-ml.html to index.html..."
        cp cinematch-ml.html index.html
    else
        echo "❌ Error: No index.html or cinematch-ml.html found!"
        exit 1
    fi
fi

echo "✅ index.html is ready"

# Add files
echo ""
echo "📦 Adding files to Git..."
git add .

# Commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit - CineMatch AI"

# Create remote
echo ""
echo "🔗 Setting up GitHub remote..."
git remote add origin "https://github.com/$username/$reponame.git"

# Set branch to main
git branch -M main

echo ""
echo "✅ Git repository initialized!"
echo ""
echo "📤 Next steps:"
echo "1. Create a repository on GitHub:"
echo "   https://github.com/new"
echo "   Name it: $reponame"
echo "   Make it PUBLIC"
echo "   Don't initialize with README"
echo ""
echo "2. After creating the repository, run:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to Settings → Pages"
echo "   - Source: main branch, / (root)"
echo "   - Save"
echo ""
echo "4. Your site will be live at:"
echo "   https://$username.github.io/$reponame/"
echo ""
echo "🎉 Done! Good luck with your deployment!"
