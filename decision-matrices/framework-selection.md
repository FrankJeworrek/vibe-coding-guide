# Decision Matrix: Framework Selection

Framework selection depends heavily on your chosen language and project type.

---

## Web Frameworks (JavaScript/TypeScript)

| Criterion | Next.js | Remix | Astro | SvelteKit |
|-----------|---------|-------|-------|-----------|
| **SSR Support** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **SEO** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Developer Experience** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **Ecosystem** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Deployment** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Learning Curve** | ⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Performance** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **TOTAL** | 19/21 | 18/21 | 18/21 | 18/21 |

**Recommendation:** Next.js (best all-around, especially for Vercel deployment)

---

## Web Frameworks (Python)

| Criterion | Django | FastAPI | Flask | Pyramid |
|-----------|--------|---------|-------|---------|
| **Batteries Included** | ⭐⭐⭐ | ⭐ | ⭐ | ⭐⭐ |
| **Performance** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **ORM** | ⭐⭐⭐ | ❌ | ❌ | ⭐ |
| **Admin Panel** | ⭐⭐⭐ | ❌ | ❌ | ❌ |
| **API Development** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Learning Curve** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Community** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TOTAL** | 17/21 | 13/21 | 12/21 | 11/21 |

**Recommendation:**
- **Full-stack web app:** Django
- **API-only:** FastAPI

---

## Mobile Frameworks

| Criterion | React Native | Flutter | Swift (iOS) | Kotlin (Android) |
|-----------|--------------|---------|-------------|------------------|
| **Cross-Platform** | ⭐⭐⭐ | ⭐⭐⭐ | ❌ | ❌ |
| **Performance** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Developer Experience** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Ecosystem** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Native Access** | ⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Hot Reload** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **TOTAL** | 16/18 | 16/18 | 13/18 | 13/18 |

**Recommendation:**
- **Cross-platform:** React Native or Flutter (tie)
- **iOS-only:** Swift
- **Android-only:** Kotlin

---

## Desktop Frameworks

| Criterion | Electron | Tauri | Qt | PyQt6 |
|-----------|----------|-------|----|----|
| **Cross-Platform** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Bundle Size** | ❌ | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Performance** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Developer Experience** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Ecosystem** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Native Look & Feel** | ⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **TOTAL** | 13/18 | 15/18 | 16/18 | 14/18 |

**Recommendation:**
- **Web tech stack:** Electron (if bundle size OK) or Tauri (smaller)
- **Native UI:** Qt or PyQt6

---

## CLI Frameworks

| Language | Framework | Strengths |
|----------|-----------|-----------|
| **Go** | Cobra | Single binary, fast, excellent for distribution |
| **Rust** | Clap | Maximum performance, memory safe |
| **Python** | Click/Typer | Rapid development, rich ecosystem |
| **Node.js** | Commander | npm distribution, cross-platform |

**Recommendation:** Go + Cobra (best for CLIs)

---

## Template: Your Framework Selection

```markdown
# Framework Selection: [Project Name]

## Context
- Language: [Language]
- Project Type: [Web/Mobile/Desktop/CLI]
- Team Size: [X]
- Key Requirements: [SSR/Performance/Cross-platform/etc.]

## Evaluation

| Criterion | [Framework 1] | [Framework 2] | [Framework 3] |
|-----------|---------------|---------------|---------------|
| [Criterion 1] | ⭐⭐⭐ | ⭐⭐ | ⭐ |
| [Criterion 2] | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TOTAL** | X/Y | X/Y | X/Y |

## Decision
**Chosen:** [Framework]

**Rationale:**
- [Reason 1]
- [Reason 2]

**ADR:** [Link to ADR-002]
```

---

**Last Updated:** 2026-01-31
