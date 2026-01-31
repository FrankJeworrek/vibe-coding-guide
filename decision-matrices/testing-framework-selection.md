# Decision Matrix: Testing Frameworks

---

## Unit Testing (JavaScript/TypeScript)

| Framework | Jest | Vitest | Mocha |
|-----------|------|--------|-------|
| **Speed** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Features** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TypeScript** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Ecosystem** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **Setup** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TOTAL** | 12/15 | 14/15 | 11/15 |

**Recommendation:** Vitest (fastest, best for Vite projects)

---

## E2E Testing

| Framework | Playwright | Cypress | Selenium |
|-----------|------------|---------|----------|
| **Speed** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Reliability** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Developer Experience** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Browser Support** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **Debugging** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TOTAL** | 15/15 | 12/15 | 11/15 |

**Recommendation:** Playwright (fastest, most reliable)

---

## By Language

| Language | Unit Test | E2E Test |
|----------|-----------|----------|
| JavaScript/TypeScript | Vitest | Playwright |
| Python | pytest | Playwright |
| Go | testing | Playwright |
| Rust | cargo test | Playwright |
| Java | JUnit | Selenium |

---

**Last Updated:** 2026-01-31
