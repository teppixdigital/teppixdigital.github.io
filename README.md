# TeppixDigital Blog

A simple blog built with Jekyll for GitHub Pages, featuring insights and updates about digital solutions from TeppixDigital.

## Overview

This repository contains a clean, modern blog layout built using Jekyll, the static site generator that powers GitHub Pages.

## Features

- 📝 Clean blog post layout
- 🎨 Modern, responsive design
- 📱 Mobile-friendly
- 🚀 Easy to deploy on GitHub Pages
- ✍️ Simple markdown-based posts

## Structure

```
.
├── _config.yml          # Jekyll configuration
├── _layouts/            # Page layouts
│   ├── default.html     # Main layout template
│   └── post.html        # Blog post layout
├── _posts/              # Blog posts (markdown files)
├── assets/              # Static assets
│   └── css/
│       └── style.css    # Stylesheet
└── index.html           # Homepage (blog list)
```

## Adding New Posts

To add a new blog post:

1. Create a new file in the `_posts/` directory
2. Name it following the pattern: `YYYY-MM-DD-title-of-post.md`
3. Add front matter at the top:

```markdown
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS +0000
---

Your content here...
```

## Local Development

To test the blog locally:

```bash
# Install Jekyll (one time only)
gem install jekyll bundler

# Build and serve the site
jekyll serve

# View at http://localhost:4000
```

## Deployment

This blog is automatically deployed via GitHub Pages:

1. Push your changes to the repository
2. GitHub Pages will automatically build and deploy your site
3. View your blog at `https://teppixdigital.github.io/`

## Customization

- **Site title and description**: Edit `_config.yml`
- **Styling**: Modify `assets/css/style.css`
- **Layouts**: Edit files in `_layouts/`

## License

See LICENSE file for details.

