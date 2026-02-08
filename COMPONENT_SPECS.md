# Component Specifications - Roshit Portfolio

## Overview
This document provides detailed specifications for all UI components in the Roshit Portfolio website.

---

## Layout Components

### Layout.astro
**Purpose:** Main page layout wrapper with SEO meta tags and accessibility features.

**Props:**
| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `title` | string | 'Roshit — Full Stack Developer' | Page title |
| `description` | string | Portfolio description | Meta description |
| `image` | string | '/og-image.jpg' | OG image path |
| `type` | 'website' \| 'article' | 'website' | OG type |

**Features:**
- Skip-to-content link for accessibility
- Comprehensive SEO meta tags
- Theme color for mobile browsers
- Semantic HTML structure

---

## Navigation Components

### Navbar.astro
**Purpose:** Fixed navigation with mobile menu support.

**Features:**
- Glass morphism effect on scroll
- Mobile hamburger menu with smooth animations
- Keyboard navigation support (Escape to close)
- ARIA attributes for accessibility
- Smooth scroll to anchor links

**States:**
- Default: White background with subtle border
- Scrolled: Added shadow
- Mobile Open: Full-screen overlay menu

**Accessibility:**
- `aria-label` on navigation
- `aria-expanded` on menu button
- `role="menubar"` and `role="menuitem"`
- Focus trap in mobile menu

---

## Section Components

### Hero.astro
**Purpose:** Landing section with introduction and CTAs.

**Structure:**
1. Availability badge (animated pulse)
2. Main heading with accent text
3. Role/subheading
4. Description paragraph
5. CTA buttons (Primary + Secondary)
6. Social links
7. Scroll indicator (desktop only)

**Animations:**
- Staggered fade-in-up entrance
- Pulse animation on availability dot
- Bounce animation on scroll indicator

**Accessibility:**
- `aria-labelledby` on section
- Proper heading hierarchy (h1)
- ARIA labels on social links

---

### About.astro
**Purpose:** Personal introduction and technical skills showcase.

**Structure:**
- Two-column layout (content + skills card)
- Stats section with key metrics
- Tech stack categorized by domain

**Tech Stack Categories:**
- Frontend
- Backend
- DevOps
- Mobile

**Icons:** Custom SVG paths for each technology (no emojis)

---

### Projects.astro
**Purpose:** Portfolio showcase with project cards.

**Features:**
- Responsive grid (2 columns on desktop)
- Hover overlay with action buttons
- Featured badge for highlighted projects
- Category tags

**Card Structure:**
1. Image placeholder with gradient
2. Hover overlay (dark with buttons)
3. Title with link
4. Description (2 lines max)
5. Technology tags

**Interactions:**
- Scale and shadow on hover
- Staggered button reveal on hover
- Color transition on title

---

### Blog.astro
**Purpose:** Latest blog posts preview section.

**Features:**
- Content collection integration
- Empty state handling
- Category badges
- Read time display
- Date formatting

**Card Structure:**
1. Category + read time meta
2. Title with link
3. Description (2 lines)
4. Footer with date and read more link

**Empty State:**
- Icon illustration
- Friendly message
- No CTA (just informational)

---

### Contact.astro
**Purpose:** Contact information and form.

**Structure:**
- Two-column layout (info + form)
- Contact details with icons
- Social links
- Contact form with validation

**Form Fields:**
1. Name (required)
2. Email (required, type="email")
3. Subject (required)
4. Message (required, textarea)
5. Submit button

**Accessibility:**
- Proper label associations
- Required field indicators
- Focus states
- ARIA labels

---

### Footer.astro
**Purpose:** Site footer with navigation and credits.

**Structure:**
- Three-column grid
- Brand section with social links
- Navigation links
- Contact information
- Bottom bar with copyright

**Features:**
- Responsive grid (stacks on mobile)
- Semantic address element
- External link indicators

---

## Utility Components

### ScrollToTop.astro
**Purpose:** Floating button to scroll to page top.

**Behavior:**
- Appears after scrolling 500px
- Smooth scroll on click
- Returns focus to main content

**Accessibility:**
- `aria-label` describing action
- Visible focus ring
- Keyboard operable

---

## Design System Classes

### Typography Classes
| Class | Usage |
|-------|-------|
| `.heading-display` | Hero heading (48-72px) |
| `.heading-xl` | Major sections (36-56px) |
| `.heading-lg` | Section headings (28-40px) |
| `.heading-md` | Subsections (22-32px) |
| `.heading-sm` | Card titles (18-24px) |
| `.body-lg` | Lead paragraphs |
| `.body-md` | Standard text |
| `.body-sm` | Captions, meta |
| `.text-label` | Uppercase labels |

### Button Classes
| Class | Usage |
|-------|-------|
| `.btn` | Base button styles |
| `.btn-primary` | Main CTAs |
| `.btn-secondary` | Alternative actions |
| `.btn-ghost` | Low emphasis |

### Card Classes
| Class | Usage |
|-------|-------|
| `.card` | Base card container |
| `.card-interactive` | Clickable cards |
| `.card-padding` | Standard padding |

### Form Classes
| Class | Usage |
|-------|-------|
| `.input` | Text inputs |
| `.textarea` | Multi-line inputs |
| `.label` | Form labels |

---

## Animation Specifications

### Entrance Animations
| Animation | Duration | Easing | Delay |
|-----------|----------|--------|-------|
| `fade-in` | 600ms | ease-out | 0ms |
| `fade-in-up` | 600ms | ease-out | staggered |
| `fade-in-down` | 400ms | ease-out | 0ms |
| `scale-in` | 400ms | spring | 0ms |

### Interaction Animations
| Animation | Duration | Easing |
|-----------|----------|--------|
| Hover transitions | 200-250ms | ease-out |
| Button press | 150ms | ease-out |
| Card lift | 300ms | ease-out |

### Continuous Animations
| Animation | Duration | Usage |
|-----------|----------|-------|
| `animate-pulse` | 2s | Availability indicator |
| `animate-bounce-subtle` | 2s | Scroll indicator |

### Reduced Motion
All animations respect `prefers-reduced-motion` media query and disable transitions/animations when enabled.

---

## Responsive Breakpoints

| Breakpoint | Width | Usage |
|------------|-------|-------|
| `sm` | 640px | Small tablets |
| `md` | 768px | Tablets |
| `lg` | 1024px | Small laptops |
| `xl` | 1280px | Desktops |
| `2xl` | 1536px | Large screens |

### Mobile-First Approach
- Base styles target mobile (<640px)
- Progressive enhancement for larger screens
- Touch-friendly tap targets (min 44px)

---

## Accessibility Requirements

### WCAG 2.1 Level AA Compliance
- [x] Color contrast ratio ≥ 4.5:1 for text
- [x] Focus indicators visible
- [x] Keyboard navigation support
- [x] Skip-to-content link
- [x] Semantic HTML elements
- [x] ARIA labels where needed
- [x] Reduced motion support
- [x] Alt text for images

### Keyboard Navigation
- All interactive elements focusable
- Logical tab order
- Escape key closes modals/menus
- Enter/Space activates buttons

---

## Component Hierarchy

```
Layout
├── Navbar (fixed)
├── main#main-content
│   ├── Hero
│   ├── About
│   ├── Projects
│   ├── Blog
│   └── Contact
├── Footer
└── ScrollToTop (fixed)
```

---

## File Organization

```
src/
├── components/
│   ├── Navbar.astro
│   ├── Hero.astro
│   ├── About.astro
│   ├── Projects.astro
│   ├── Blog.astro
│   ├── Contact.astro
│   ├── Footer.astro
│   └── ScrollToTop.astro
├── layouts/
│   └── Layout.astro
├── pages/
│   ├── index.astro
│   ├── blog/
│   │   ├── index.astro
│   │   └── [slug].astro
│   └── projects/
│       └── index.astro
├── styles/
│   └── global.css
└── content/
    └── blog/
```
