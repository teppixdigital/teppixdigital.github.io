# GitHub Pages Setup Instructions

This blog is ready to be deployed on GitHub Pages. Follow these steps to publish it:

## Enable GitHub Pages

1. Go to your repository on GitHub: https://github.com/teppixdigital/teppixdigital
2. Click on **Settings** (gear icon)
3. In the left sidebar, click on **Pages**
4. Under **Source**, select the branch you want to deploy (e.g., `main` or `copilot/create-simple-blog-layout`)
5. Keep the folder as `/ (root)`
6. Click **Save**

## Wait for Deployment

GitHub will automatically build and deploy your site. This usually takes 1-2 minutes.

## View Your Blog

Once deployed, your blog will be available at:
**https://teppixdigital.github.io/teppixdigital/**

## Configuration

The blog is already configured with the correct settings in `_config.yml`:
- `baseurl: "/teppixdigital"` - Matches your repository name
- `url: "https://teppixdigital.github.io"` - Your GitHub Pages domain

## Adding New Posts

To add new blog posts:

1. Create a new file in the `_posts/` directory
2. Name it: `YYYY-MM-DD-post-title.md`
3. Add front matter and content:

```markdown
---
layout: post
title: "Your Post Title"
date: 2026-01-30 10:00:00 +0000
---

Your blog post content here...
```

4. Commit and push to GitHub
5. GitHub Pages will automatically rebuild and deploy your site

## Troubleshooting

If your site doesn't appear:
- Check that GitHub Pages is enabled in repository settings
- Verify the correct branch is selected
- Wait a few minutes for the initial build
- Check the Actions tab for any build errors

## Local Testing

To test locally before pushing:

```bash
gem install jekyll bundler
jekyll serve
# Visit http://localhost:4000/teppixdigital/
```

Note: When testing locally, the site will be available at `/teppixdigital/` to match the GitHub Pages URL structure.
