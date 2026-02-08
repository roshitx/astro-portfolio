# Roshit Portfolio - Design System

## Overview
A motion-driven, minimal portfolio design system focused on showcasing work with elegance and professionalism. Built with accessibility-first principles and WCAG AA compliance.

---

## Design Tokens

### Colors

#### Primary Palette (Monochrome + Blue Accent)
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-primary-50` | #FAFAFA | Subtle backgrounds |
| `--color-primary-100` | #F4F4F5 | Card backgrounds |
| `--color-primary-200` | #E4E4E7 | Borders, dividers |
| `--color-primary-300` | #D4D4D8 | Disabled states |
| `--color-primary-400` | #A1A1AA | Placeholder text |
| `--color-primary-500` | #71717A | Secondary text |
| `--color-primary-600` | #52525B | Body text |
| `--color-primary-700` | #3F3F46 | Strong text |
| `--color-primary-800` | #27272A | Headings |
| `--color-primary-900` | #18181B | Primary text, logo |

#### Accent Palette (Blue)
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-accent-50` | #EFF6FF | Light backgrounds |
| `--color-accent-100` | #DBEAFE | Hover states |
| `--color-accent-200` | #BFDBFE | Focus rings |
| `--color-accent-300` | #93C5FD | Active states |
| `--color-accent-400` | #60A5FA | Icons |
| `--color-accent-500` | #3B82F6 | Links |
| `--color-accent-600` | #2563EB | Primary CTA |
| `--color-accent-700` | #1D4ED8 | CTA hover |
| `--color-accent-800` | #1E40AF | Pressed states |
| `--color-accent-900` | #1E3A8A | Dark accents |

#### Semantic Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-success` | #10B981 | Success states |
| `--color-warning` | #F59E0B | Warning states |
| `--color-error` | #EF4444 | Error states |
| `--color-info` | #3B82F6 | Info states |

#### Surface Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-surface` | #FFFFFF | Cards, modals |
| `--color-background` | #FAFAFA | Page background |
| `--color-elevated` | #FFFFFF | Elevated surfaces |

---

### Typography

#### Font Families
| Token | Value | Usage |
|-------|-------|-------|
| `--font-heading` | 'Archivo', sans-serif | Headlines, titles |
| `--font-body` | 'Space Grotesk', sans-serif | Body text, UI |
| `--font-mono` | 'JetBrains Mono', monospace | Code, labels |

#### Type Scale
| Token | Size (Mobile) | Size (Desktop) | Line Height | Weight | Letter Spacing |
|-------|---------------|----------------|-------------|--------|----------------|
| `--text-display` | 48px | 72px | 1.1 | 700 | -0.02em |
| `--text-h1` | 36px | 56px | 1.15 | 700 | -0.02em |
| `--text-h2` | 28px | 40px | 1.2 | 600 | -0.01em |
| `--text-h3` | 22px | 32px | 1.25 | 600 | -0.01em |
| `--text-h4` | 18px | 24px | 1.3 | 600 | 0 |
| `--text-h5` | 16px | 20px | 1.4 | 500 | 0 |
| `--text-h6` | 14px | 16px | 1.4 | 500 | 0.01em |
| `--text-body-lg` | 16px | 18px | 1.7 | 400 | 0 |
| `--text-body` | 14px | 16px | 1.7 | 400 | 0 |
| `--text-body-sm` | 13px | 14px | 1.6 | 400 | 0 |
| `--text-caption` | 11px | 12px | 1.5 | 500 | 0.02em |
| `--text-label` | 10px | 11px | 1.4 | 600 | 0.05em |

---

### Spacing Scale

| Token | Value | Usage |
|-------|-------|-------|
| `--space-0` | 0 | - |
| `--space-1` | 4px | Tight gaps |
| `--space-2` | 8px | Inline elements |
| `--space-3` | 12px | Small gaps |
| `--space-4` | 16px | Default spacing |
| `--space-5` | 20px | Component padding |
| `--space-6` | 24px | Section gaps |
| `--space-8` | 32px | Card padding |
| `--space-10` | 40px | Large gaps |
| `--space-12` | 48px | Section padding |
| `--space-16` | 64px | Hero spacing |
| `--space-20` | 80px | Major sections |
| `--space-24` | 96px | Page sections |
| `--space-32` | 128px | Hero sections |

---

### Border Radius

| Token | Value | Usage |
|-------|-------|-------|
| `--radius-none` | 0 | Sharp corners |
| `--radius-sm` | 4px | Tags, badges |
| `--radius-md` | 8px | Buttons, inputs |
| `--radius-lg` | 12px | Cards |
| `--radius-xl` | 16px | Large cards |
| `--radius-2xl` | 24px | Featured cards |
| `--radius-full` | 9999px | Pills, avatars |

---

### Shadows

| Token | Value | Usage |
|-------|-------|-------|
| `--shadow-sm` | 0 1px 2px rgba(0,0,0,0.04) | Subtle elevation |
| `--shadow-md` | 0 4px 6px -1px rgba(0,0,0,0.06) | Cards |
| `--shadow-lg` | 0 10px 15px -3px rgba(0,0,0,0.08) | Dropdowns |
| `--shadow-xl` | 0 20px 25px -5px rgba(0,0,0,0.08) | Modals |
| `--shadow-glow` | 0 0 20px rgba(37,99,235,0.15) | Focus states |

---

### Animation

#### Durations
| Token | Value | Usage |
|-------|-------|-------|
| `--duration-instant` | 0ms | Immediate |
| `--duration-fast` | 150ms | Micro-interactions |
| `--duration-normal` | 250ms | Standard transitions |
| `--duration-slow` | 400ms | Entrance animations |
| `--duration-slower` | 600ms | Page transitions |

#### Easings
| Token | Value | Usage |
|-------|-------|-------|
| `--ease-linear` | linear | Continuous motion |
| `--ease-in` | cubic-bezier(0.4, 0, 1, 1) | Exit animations |
| `--ease-out` | cubic-bezier(0, 0, 0.2, 1) | Entrance animations |
| `--ease-in-out` | cubic-bezier(0.4, 0, 0.2, 1) | Standard transitions |
| `--ease-spring` | cubic-bezier(0.34, 1.56, 0.64, 1) | Bouncy effects |

---

### Z-Index Scale

| Token | Value | Usage |
|-------|-------|-------|
| `--z-base` | 0 | Default |
| `--z-dropdown` | 100 | Dropdowns |
| `--z-sticky` | 200 | Sticky headers |
| `--z-fixed` | 300 | Fixed elements |
| `--z-modal` | 400 | Modals |
| `--z-popover` | 500 | Popovers |
| `--z-tooltip` | 600 | Tooltips |

---

## Component Specifications

### Buttons

#### Primary Button
- Background: `--color-accent-600`
- Text: White
- Padding: 12px 24px (mobile), 14px 28px (desktop)
- Border Radius: `--radius-md`
- Font: `--font-body`, 14px, weight 600
- Hover: `--color-accent-700`
- Active: Scale 0.98
- Focus: Ring 2px `--color-accent-200`
- Transition: `--duration-normal` `--ease-out`

#### Secondary Button
- Background: Transparent
- Border: 1px `--color-primary-200`
- Text: `--color-primary-700`
- Hover: Background `--color-primary-50`, border `--color-primary-300`

#### Ghost Button
- Background: Transparent
- Text: `--color-primary-600`
- Hover: Background `--color-primary-50`

---

### Cards

#### Project Card
- Background: `--color-surface`
- Border: 1px `--color-primary-100`
- Border Radius: `--radius-lg`
- Shadow: `--shadow-sm`
- Hover Shadow: `--shadow-md`
- Hover Border: `--color-primary-200`
- Transition: `--duration-normal`
- Image Aspect Ratio: 16:9
- Overlay: `--color-primary-900` at 80% opacity

#### Blog Card
- Background: `--color-surface`
- Border: 1px `--color-primary-100`
- Border Radius: `--radius-lg`
- Padding: `--space-6`
- Hover: Border `--color-accent-200`, translateY -2px

---

### Form Elements

#### Input Field
- Background: `--color-surface`
- Border: 1px `--color-primary-200`
- Border Radius: `--radius-md`
- Padding: 12px 16px
- Font: `--font-body`, 15px
- Placeholder: `--color-primary-400`
- Focus: Border `--color-accent-500`, ring 3px `--color-accent-100`
- Error: Border `--color-error`, background tint

---

### Navigation

#### Navbar
- Background: `--color-surface` at 95% opacity
- Backdrop: blur(12px)
- Border Bottom: 1px `--color-primary-100`
- Height: 64px (mobile), 72px (desktop)
- Position: Fixed, top 0

#### Nav Links
- Font: `--font-body`, 14px, weight 500
- Color: `--color-primary-600`
- Hover: `--color-accent-600`
- Active: `--color-accent-600` with underline

---

## Accessibility Guidelines

### Color Contrast
- Normal text: 4.5:1 minimum (WCAG AA)
- Large text: 3:1 minimum
- UI components: 3:1 minimum

### Focus Indicators
- All interactive elements have visible focus states
- Focus ring: 2px offset, `--color-accent-500`
- Tab order follows visual order

### Motion
- Respect `prefers-reduced-motion`
- Animations are subtle and purposeful
- No auto-playing content without pause control

### Semantic HTML
- Proper heading hierarchy (h1 > h2 > h3)
- Landmark regions (nav, main, footer)
- ARIA labels where needed
- Alt text for all images

### Touch Targets
- Minimum 44x44px for interactive elements
- Adequate spacing between touch targets

---

## Responsive Breakpoints

| Token | Value | Description |
|-------|-------|-------------|
| `--bp-sm` | 640px | Small tablets |
| `--bp-md` | 768px | Tablets |
| `--bp-lg` | 1024px | Small laptops |
| `--bp-xl` | 1280px | Desktops |
| `--bp-2xl` | 1536px | Large screens |

---

## Grid System

- Container max-width: 1280px
- Columns: 12-column grid
- Gutter: 24px (mobile), 32px (tablet), 48px (desktop)
- Page padding: 16px (mobile), 24px (tablet), 32px (desktop)
