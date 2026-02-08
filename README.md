# Roshit's Portfolio

A modern, minimalist portfolio website built with Astro, featuring smooth animations and a clean design.

## Features

- 🎨 **Minimalist Modern Design** - Clean UI with gradient accents and subtle animations
- ⚡ **Fast Performance** - Static site generation with Astro
- 📱 **Fully Responsive** - Optimized for all screen sizes
- ✨ **Modern Animations** - Smooth scroll, fade-in effects, hover transitions
- 📝 **Blog System** - Full blog with categories and tags
- 💼 **Portfolio Showcase** - Featured projects with detailed views
- 🎯 **Navigation** - Fixed navbar with mobile menu and smooth scrolling
- 🔝 **Scroll to Top** - Convenient button for quick navigation

## Pages

- **Home** - Hero, About, Projects preview, Blog preview, Contact
- **Blog** (`/blog`) - All blog posts with category and tag filtering
- **Blog Post** (`/blog/[slug]`) - Individual article with navigation
- **Projects** (`/projects`) - Detailed project showcases

## Tech Stack

- **Framework**: Astro 5.17.1
- **Styling**: Tailwind CSS
- **Content**: Astro Content Collections
- **Languages**: TypeScript, MDX

## Getting Started

### Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Open http://localhost:4321
```

### Production Build

```bash
# Build for production
npm run build

# Preview production build
npm run preview
```

## Project Structure

```
portfolio/
├── src/
│   ├── components/       # Reusable components
│   │   ├── About.astro
│   │   ├── Blog.astro
│   │   ├── Contact.astro
│   │   ├── Footer.astro
│   │   ├── Hero.astro
│   │   ├── Navbar.astro
│   │   ├── Projects.astro
│   │   └── ScrollToTop.astro
│   ├── content/
│   │   ├── blog/        # Blog posts (Markdown)
│   │   └── config.ts    # Content collections config
│   ├── layouts/
│   │   └── Layout.astro # Main layout
│   ├── pages/
│   │   ├── index.astro
│   │   ├── blog/
│   │   │   ├── index.astro
│   │   │   └── [slug].astro
│   │   └── projects/
│   │       └── index.astro
│   └── styles/
│       └── global.css
├── public/               # Static assets
├── astro.config.mjs      # Astro configuration
├── tailwind.config.mjs   # Tailwind CSS configuration
└── package.json
```

## Customization

### Adding Blog Posts

1. Create a new Markdown file in `src/content/blog/`
2. Add frontmatter with metadata:

```yaml
---
title: 'Your Post Title'
description: 'Post description'
date: 2026-02-08
tags: ['tag1', 'tag2']
category: 'Category Name'
author: 'Roshit'
readTime: '5 min read'
---

Your content here...
```

### Modifying Colors

Edit `tailwind.config.mjs` to customize the primary color scheme:

```javascript
colors: {
  primary: {
    50: '#f0f9ff',
    // ... adjust as needed
  }
}
```

### Adding Projects

Edit `src/pages/projects/index.astro` and `src/components/Projects.astro` to add new projects.

## Deployment

This site can be deployed to any static hosting service:

- **Vercel** - Recommended for seamless Astro deployments
- **Netlify** - Great for CI/CD workflows
- **GitHub Pages** - Free hosting for public repositories
- **Cloudflare Pages** - Fast global CDN

### Environment Variables (if needed)

Create a `.env` file:

```
# Add any environment-specific variables here
```

## Performance

- Lighthouse Score: 95+ (Performance)
- First Contentful Paint: < 1s
- Time to Interactive: < 2s
- Bundle Size: Optimized with tree-shaking

## License

MIT © Roshit
