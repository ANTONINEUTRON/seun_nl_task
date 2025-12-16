# Deploying 3D Ludo to GitHub Pages

This guide will help you deploy your 3D Ludo game to GitHub Pages so anyone can play it online!

## 🚀 Quick Deployment Steps

### 1. Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click the **+** button in the top right corner
3. Select **New repository**
4. Name your repository (e.g., `3d-ludo-game`)
5. Choose **Public** (required for free GitHub Pages)
6. Click **Create repository**

### 2. Initialize Git in Your Project

Open Terminal in your project folder and run:

```bash
cd /Users/antoni/seun_nl_task
git init
git add .
git commit -m "Initial commit: 3D Ludo game"
```

### 3. Connect to GitHub and Push

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your GitHub username and repository name:

```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

### 4. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section (in the left sidebar under "Code and automation")
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

### 5. Access Your Game! 🎮

Your game will be available at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/
```

It may take 1-2 minutes for the page to become available after enabling GitHub Pages.

## 📝 Alternative: One-Command Setup Script

Create a file called `deploy.sh` and run it:

```bash
#!/bin/bash

# Initialize git if not already done
if [ ! -d .git ]; then
    git init
fi

# Add all files
git add .

# Commit
git commit -m "Deploy 3D Ludo game"

# Push to GitHub (replace with your repo URL)
git push -u origin main

echo "✅ Pushed to GitHub! Now enable GitHub Pages in your repository settings."
```

Make it executable and run:
```bash
chmod +x deploy.sh
./deploy.sh
```

## 🔧 File Structure

Your repository should look like this:
```
/
├── index.html          # Main game file (single file - no build needed!)
├── README.md           # Game documentation
└── DEPLOYMENT.md       # This file
```

## ✅ Why This Works Perfectly

- ✨ **No build process needed** - It's a single HTML file!
- ✨ **No dependencies to install** - All libraries loaded via CDN
- ✨ **Instant deployment** - Just push and enable Pages
- ✨ **Zero configuration** - GitHub Pages serves `index.html` automatically

## 🌐 Custom Domain (Optional)

If you have a custom domain:

1. In repository **Settings** → **Pages**
2. Enter your custom domain under "Custom domain"
3. Add a `CNAME` file to your repository with your domain name
4. Configure DNS at your domain provider:
   ```
   Type: CNAME
   Name: www (or @)
   Value: YOUR_USERNAME.github.io
   ```

## 🔄 Updating Your Game

After making changes to `index.html`:

```bash
git add .
git commit -m "Update game"
git push
```

GitHub Pages will automatically update within 1-2 minutes!

## 🎯 Sharing Your Game

Once deployed, share your game link:
- On social media
- With friends via direct link
- Embed in your portfolio
- Add to your README as a live demo

Example link format:
```
🎮 Play now: https://YOUR_USERNAME.github.io/3d-ludo-game/
```

## 🐛 Troubleshooting

**Page shows 404:**
- Wait 1-2 minutes after enabling GitHub Pages
- Check that `index.html` is in the root directory
- Verify GitHub Pages is enabled in Settings

**Game not loading:**
- Check browser console for errors (F12)
- Ensure your browser supports WebGL
- Try a different browser (Chrome, Firefox, Safari, Edge)

**Changes not showing:**
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Wait a few minutes for GitHub to rebuild
- Check commit was pushed: `git log`

## 📊 Analytics (Optional)

To track visitors, add Google Analytics to your `index.html` before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

---

**That's it!** Your 3D Ludo game is now live on the internet! 🎉

Need help? Open an issue in your repository or check [GitHub Pages documentation](https://docs.github.com/en/pages).
