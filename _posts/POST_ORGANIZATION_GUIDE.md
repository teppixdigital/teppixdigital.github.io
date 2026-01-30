# Post Organization Guide

## Overview

All blog posts are organized in date-based folders to keep content and media together. This structure makes it easy to manage posts and their associated files.

## Folder Structure

```
_posts/
└── YYYY/               # Year (e.g., 2026)
    └── MM/             # Month (e.g., 01 for January)
        └── DD/         # Day (e.g., 28)
            ├── YYYY-MM-DD-title-of-post.md   # The post file
            ├── images/                        # Images folder
            │   ├── screenshot.png
            │   └── diagram.svg
            └── files/                         # Other files (optional)
                └── document.pdf
```

## Creating a New Post

### Step 1: Create the Date Folder

Create a folder structure matching your post date:

```bash
mkdir -p _posts/2026/01/30
```

### Step 2: Create the Post File

Create your markdown file with the standard Jekyll naming convention:

```bash
# Format: YYYY-MM-DD-title-of-post.md
_posts/2026/01/30/2026-01-30-my-new-post.md
```

### Step 3: Add Front Matter

Start your post with YAML front matter:

```markdown
---
layout: post
title: "My New Post Title"
date: 2026-01-30 10:00:00 +0000
---

Your post content starts here...
```

### Step 4: Add Media Files

Create subdirectories for organizing media:

```bash
mkdir -p _posts/2026/01/30/images
mkdir -p _posts/2026/01/30/files
```

### Step 5: Reference Media in Your Post

Use relative paths to reference media files:

```markdown
## Example Section

Here's an image from the same folder:

![Alt text](images/my-image.png)

Or reference a file:

[Download PDF](files/document.pdf)
```

## Best Practices

1. **Keep Media With Posts**: Store all images, files, and media used in a post within that post's date folder.

2. **Use Subdirectories**: Create `images/` and `files/` subdirectories to keep things organized.

3. **Descriptive Names**: Use clear, descriptive names for media files:
   - Good: `architecture-diagram.png`
   - Bad: `img1.png`

4. **Optimize Images**: Compress images before adding them to keep repository size manageable.

5. **Relative Paths**: Always use relative paths when referencing media files in posts.

## Example Post Structure

Here's a complete example of a well-organized post:

```
_posts/2026/01/30/
├── 2026-01-30-building-microservices.md
├── images/
│   ├── architecture-overview.svg
│   ├── service-diagram.png
│   └── screenshot-api.png
└── files/
    └── api-documentation.pdf
```

And in the markdown file:

```markdown
---
layout: post
title: "Building Microservices: A Practical Guide"
date: 2026-01-30 15:30:00 +0000
---

## Architecture Overview

Here's our microservices architecture:

![Architecture Overview](images/architecture-overview.svg)

## Service Communication

The following diagram shows how services communicate:

![Service Diagram](images/service-diagram.png)

## Documentation

For complete API documentation, see [API Docs](files/api-documentation.pdf).
```

## Why This Structure?

1. **Logical Organization**: Posts are grouped by date, making them easy to find.
2. **Self-Contained**: Each post folder contains everything needed for that post.
3. **No Conflicts**: Media files for different posts won't conflict.
4. **Easy Maintenance**: When updating or removing a post, everything is in one place.
5. **Jekyll Compatible**: Jekyll supports this structure natively.

## Migration from Flat Structure

If you have posts in the old flat structure (`_posts/YYYY-MM-DD-title.md`), migrate them:

```bash
# For a post dated 2026-01-30
mkdir -p _posts/2026/01/30
mv _posts/2026-01-30-my-post.md _posts/2026/01/30/
```

## Notes

- Jekyll will find posts in any subdirectory of `_posts/`
- The post filename still needs the date prefix (YYYY-MM-DD-title.md)
- Permalinks and URLs are not affected by folder structure
- The folder structure is purely organizational
