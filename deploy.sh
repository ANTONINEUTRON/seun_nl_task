#!/bin/bash

echo "🎮 3D Ludo Game - GitHub Pages Deployment Script"
echo "=================================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
echo ""
echo "📝 Adding files to git..."
git add .

# Commit
echo ""
echo "💾 Creating commit..."
read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Deploy 3D Ludo game"
fi
git commit -m "$commit_msg"

# Check if remote exists
if git remote | grep -q origin; then
    echo ""
    echo "🚀 Pushing to GitHub..."
    git push -u origin main
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Click 'Settings' tab"
    echo "3. Go to 'Pages' section"
    echo "4. Under 'Source', select branch 'main' and folder '/ (root)'"
    echo "5. Click 'Save'"
    echo ""
    echo "🌐 Your game will be live at:"
    repo_url=$(git remote get-url origin)
    username=$(echo $repo_url | sed -n 's/.*github.com[:/]\([^/]*\)\/.*/\1/p')
    reponame=$(echo $repo_url | sed -n 's/.*\/\([^.]*\).*/\1/p')
    echo "   https://$username.github.io/$reponame/"
else
    echo ""
    echo "⚠️  No remote repository configured."
    echo ""
    echo "📋 To connect to GitHub:"
    echo "1. Create a new repository on GitHub"
    echo "2. Run this command (replace with your details):"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
    echo "3. Run this script again"
fi

echo ""
echo "🎉 Done!"
