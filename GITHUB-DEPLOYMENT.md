# 🚀 Deploy CineMatch AI to GitHub Pages

## Complete Step-by-Step Guide

### **Prerequisites:**
- GitHub account (free)
- Git installed on your computer

---

## 📋 **Method 1: Upload via GitHub Website (Easiest)**

### **Step 1: Create New Repository**

1. Go to [github.com](https://github.com) and log in
2. Click the **"+"** icon (top right) → **"New repository"**
3. Fill in details:
   - **Repository name:** `cinematch-ai` (or any name you want)
   - **Description:** "AI-Powered Movie Recommendation System"
   - **Public** (required for free GitHub Pages)
   - ✅ Check **"Add a README file"**
4. Click **"Create repository"**

### **Step 2: Upload Files**

1. In your new repository, click **"Add file"** → **"Upload files"**
2. Drag and drop these files:
   - `cinematch-ml.html` (rename to `index.html` - this will be your homepage)
   - `cinematch-elegant.html`
   - `movie-recommendation-agent-local.html`
   - `README.md`
3. Add commit message: "Initial commit - CineMatch AI"
4. Click **"Commit changes"**

### **Step 3: Rename Main File**

**IMPORTANT:** Your main file must be named `index.html` for GitHub Pages to work.

1. Click on `cinematch-ml.html` in your repository
2. Click the pencil icon (Edit)
3. Change filename from `cinematch-ml.html` to `index.html`
4. Scroll down and click **"Commit changes"**

### **Step 4: Enable GitHub Pages**

1. Go to repository **Settings** (gear icon)
2. Scroll down to **"Pages"** in the left sidebar
3. Under **"Source"**, select:
   - Branch: **main** (or **master**)
   - Folder: **/ (root)**
4. Click **"Save"**
5. Wait 1-2 minutes for deployment

### **Step 5: Access Your Site**

Your site will be available at:
```
https://your-username.github.io/cinematch-ai/
```

Example: `https://johnsmith.github.io/cinematch-ai/`

---

## 📋 **Method 2: Using Git Command Line (Advanced)**

### **Step 1: Initialize Git Repository**

Open terminal in your project folder:

```bash
cd /path/to/your/cinematch-files

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - CineMatch AI"
```

### **Step 2: Create GitHub Repository**

1. Go to [github.com/new](https://github.com/new)
2. Create repository named `cinematch-ai`
3. **Don't** initialize with README
4. Copy the repository URL

### **Step 3: Push to GitHub**

```bash
# Add remote
git remote add origin https://github.com/YOUR-USERNAME/cinematch-ai.git

# Push
git branch -M main
git push -u origin main
```

### **Step 4: Rename Main File**

```bash
# Rename cinematch-ml.html to index.html
mv cinematch-ml.html index.html

# Commit and push
git add index.html
git commit -m "Rename main file to index.html"
git push
```

### **Step 5: Enable GitHub Pages**

Follow Step 4 from Method 1 above.

---

## 📁 **Recommended File Structure**

```
cinematch-ai/
├── index.html                          # Main file (cinematch-ml.html renamed)
├── cinematch-elegant.html              # Alternative version
├── movie-recommendation-agent-local.html
├── README.md
├── assets/                             # Optional
│   └── screenshots/
└── .gitignore
```

---

## 📝 **Create .gitignore File**

Create a `.gitignore` file to exclude unnecessary files:

```
# API Keys (never commit these!)
.env
*.key

# OS Files
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/

# Logs
*.log
```

---

## 🔧 **Troubleshooting**

### **Issue: Site not loading**
- **Solution:** Wait 2-3 minutes after enabling Pages
- Check that main file is named `index.html`
- Ensure repository is Public

### **Issue: 404 Error**
- **Solution:** Go to Settings → Pages and verify it's enabled
- Check the URL format: `https://username.github.io/repo-name/`

### **Issue: Streaming logos not showing**
- **Solution:** The CDN images should work automatically
- Check browser console (F12) for any errors

### **Issue: API key not working**
- **Solution:** Users enter their own API keys
- API keys work directly from GitHub Pages

---

## 🎨 **Customize Your GitHub Repository**

### **1. Add a Great README**

Update your `README.md`:

```markdown
# 🎬 CineMatch AI

AI-Powered Movie Recommendation System that learns your taste!

## ✨ Features
- 🧠 Smart AI recommendations using Claude
- 📊 Learning system that improves over time
- 🎯 Personalized movie suggestions
- 📺 Streaming platform availability
- ⚡ Fast and elegant interface

## 🚀 Try It Live
[Launch CineMatch AI](https://your-username.github.io/cinematch-ai/)

## 🔑 How to Use
1. Visit the site
2. Enter your Anthropic API key
3. Add your favorite movies
4. Get personalized recommendations!

## 🛠️ Technologies
- HTML5, CSS3, TailwindCSS
- TensorFlow.js for AI learning
- Claude AI for recommendations
- Vanilla JavaScript

## 📝 License
MIT License - Feel free to use and modify!
```

### **2. Add Topics/Tags**

1. Go to your repository
2. Click **"⚙️ Settings"** → **"Manage topics"**
3. Add: `movie-recommendations`, `ai`, `machine-learning`, `claude-ai`, `tensorflow`

### **3. Add Repository Description**

At the top of your repository, click **"Add description"**:
```
🎬 AI-powered movie recommendation system with smart learning
```

---

## 🌐 **Custom Domain (Optional)**

### **Use Your Own Domain:**

1. Buy a domain (e.g., from Namecheap, GoDaddy)
2. In repository Settings → Pages → Custom domain
3. Enter: `cinematch.yourdomain.com`
4. Add DNS records at your domain provider:
   ```
   Type: CNAME
   Name: cinematch
   Value: your-username.github.io
   ```

---

## 📊 **Monitor Your Site**

### **GitHub Insights:**
- Go to **Insights** tab
- See visitor traffic, clones, and popular content

### **Add Google Analytics (Optional):**

Add to your `index.html` before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🔄 **Update Your Site**

### **Via GitHub Website:**
1. Navigate to the file you want to edit
2. Click pencil icon (Edit)
3. Make changes
4. Commit changes

### **Via Git Command Line:**
```bash
# Make your changes to files
git add .
git commit -m "Update: improved recommendations"
git push
```

Your site updates automatically in 1-2 minutes!

---

## 🎉 **Success Checklist**

- ✅ Repository created on GitHub
- ✅ Main file renamed to `index.html`
- ✅ GitHub Pages enabled
- ✅ Site accessible at `https://username.github.io/repo-name/`
- ✅ API key input works
- ✅ Recommendations loading correctly
- ✅ Streaming logos displaying
- ✅ AI learning features functional

---

## 🔗 **Useful Links**

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [Markdown Guide](https://www.markdownguide.org/)

---

## 🚀 **Next Steps**

1. Share your site on social media
2. Add to your portfolio
3. Submit to Product Hunt or Hacker News
4. Create a video demo
5. Write a blog post about it

---

**Your CineMatch AI is now live on GitHub! 🎬✨**

Site URL: `https://your-username.github.io/cinematch-ai/`

---

## 💡 **Pro Tips**

1. **Always rename to index.html** - This is crucial for GitHub Pages
2. **Keep repository public** - Private repos need GitHub Pro for Pages
3. **Test locally first** - Use `python -m http.server` before pushing
4. **Use branches** - Create a `dev` branch for testing before merging to main
5. **Enable HTTPS** - GitHub Pages automatically provides SSL

Good luck! 🚀
