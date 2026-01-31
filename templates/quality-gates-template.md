# Quality Gates: [Project Name]

**Purpose:** Define automated checks that must pass before phase transitions

---

## Global Gates (All Phases)

**These must pass for EVERY commit:**

- [ ] **Linter:** `npm run lint` (0 errors)
- [ ] **Type Check:** `tsc --noEmit` (0 errors)
- [ ] **Unit Tests:** `npm test` (all passing)
- [ ] **Build:** `npm run build` (successful)

---

## Phase 0 → Phase 1 Gates

**Before entering Phase 1:**

- [ ] Project Charter exists and is approved
- [ ] Tech Stack documented (tech-stack.md + ADRs)
- [ ] Implementierungsplan exists
- [ ] Git repository initialized with remote
- [ ] Development environment functional (`npm install && npm run dev`)
- [ ] .continuity/ structure created
- [ ] Backup strategy implemented (3+ layers)

**Automated Check:**
```bash
#!/bin/bash
test -f project-charter.md || exit 1
test -f tech-stack.md || exit 1
test -d .git || exit 1
git remote get-url origin || exit 1
test -d .continuity/sessions || exit 1
echo "✅ Phase 0 → 1 Gates PASSED"
```

---

## Phase 1 → Phase 2 Gates

**Before entering Phase 2:**

- [ ] UI/UX mockups exist
- [ ] PoC successful (critical tech validated)
- [ ] Data model designed (schema + types)
- [ ] Test framework functional (`npm test` works)
- [ ] Architecture diagram created

**Automated Check:**
```bash
npm test -- --run
test $? -eq 0 || exit 1
echo "✅ Phase 1 → 2 Gates PASSED"
```

---

## Phase 2 → Phase 3 Gates

**Before entering Phase 3:**

- [ ] MVP features functional (defined in charter)
- [ ] Unit test coverage ≥70%
- [ ] Database integration works
- [ ] 0 Critical bugs
- [ ] CI/CD pipeline green

**Automated Check:**
```bash
# Test coverage
npm test -- --coverage
COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)
if (( $(echo "$COVERAGE < 70" | bc -l) )); then
  echo "❌ FAIL: Coverage $COVERAGE% (required: ≥70%)"
  exit 1
fi

# Critical bugs
CRITICAL_BUGS=$(gh issue list --label "critical" --state open --json number | jq length)
if [ "$CRITICAL_BUGS" -gt 0 ]; then
  echo "❌ FAIL: $CRITICAL_BUGS critical bugs open"
  exit 1
fi

echo "✅ Phase 2 → 3 Gates PASSED"
```

---

## Phase 3 → Phase 4 Gates

**Before entering Phase 4:**

- [ ] Secondary features implemented
- [ ] Unit test coverage ≥75%
- [ ] E2E tests for critical flows exist
- [ ] Performance: No regression vs. Phase 2

**Automated Check:**
```bash
# E2E tests
npm run test:e2e
test $? -eq 0 || exit 1

# Coverage check (75%)
COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)
if (( $(echo "$COVERAGE < 75" | bc -l) )); then
  echo "❌ FAIL: Coverage $COVERAGE% (required: ≥75%)"
  exit 1
fi

echo "✅ Phase 3 → 4 Gates PASSED"
```

---

## Phase 4 → Phase 5 Gates

**Before entering Phase 5:**

- [ ] UI Polish complete (loading states, errors)
- [ ] Lighthouse score ≥90 (if web)
- [ ] Accessibility: 0 critical issues
- [ ] Performance targets met

**Automated Check:**
```bash
# Lighthouse CI (if web app)
npm run lighthouse-ci
SCORE=$(jq '.performance' lighthouse-report.json)
if (( $(echo "$SCORE < 90" | bc -l) )); then
  echo "❌ FAIL: Lighthouse score $SCORE (required: ≥90)"
  exit 1
fi

# Accessibility audit
npx axe-core --exit
test $? -eq 0 || exit 1

echo "✅ Phase 4 → 5 Gates PASSED"
```

---

## Phase 5 → Phase 6 Gates

**Before entering Phase 6:**

- [ ] E2E tests: 100% critical flows covered
- [ ] Security: 0 High/Critical vulnerabilities
- [ ] Cross-platform: Tested on all platforms
- [ ] Critical bugs: 0

**Automated Check:**
```bash
# Security audit
npm audit --audit-level=high
test $? -eq 0 || exit 1

# E2E tests
npm run test:e2e
test $? -eq 0 || exit 1

# Critical bugs
CRITICAL=$(gh issue list --label "critical" --state open --json number | jq length)
if [ "$CRITICAL" -gt 0 ]; then
  echo "❌ FAIL: $CRITICAL critical bugs"
  exit 1
fi

echo "✅ Phase 5 → 6 Gates PASSED"
```

---

## Phase 6 → Release Gates

**Before V1.0 release:**

- [ ] README.md complete (install + quick start)
- [ ] CONTRIBUTING.md exists
- [ ] All documentation current
- [ ] Release notes written
- [ ] All quality gates from previous phases still pass

**Manual Checklist:**
- [ ] Smoke test on production environment
- [ ] Rollback plan documented
- [ ] Monitoring/alerts configured
- [ ] Support channels ready (email, GitHub issues)

---

## CI/CD Integration

**GitHub Actions Example:**

```yaml
# .github/workflows/quality-gates.yml
name: Quality Gates

on: [push, pull_request]

jobs:
  gates:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4

      - run: npm ci
      - run: npm run lint
      - run: npm run type-check
      - run: npm test -- --coverage
      - run: npm run build

      - name: Check Coverage
        run: |
          COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)
          if (( $(echo "$COVERAGE < 70" | bc -l) )); then
            echo "❌ Coverage too low: $COVERAGE%"
            exit 1
          fi
          echo "✅ Coverage: $COVERAGE%"

      - name: Security Audit
        run: npm audit --audit-level=high
```

---

## Overriding Gates (Emergency Only!)

**When you MUST bypass a gate:**

1. Document reason in commit message
2. Create issue to fix later
3. Get approval from Tech Lead
4. Add `[SKIP-GATE]` tag to commit

**Example:**
```bash
git commit -m "[SKIP-GATE] Emergency fix for production outage

Bypassing test coverage gate (currently 65%, target 70%)
because critical bug needs immediate fix.

Issue created: #123 'Increase test coverage to 70%'
Approved by: Alice (Tech Lead)
"
```

**Automatically track skipped gates:**
```bash
# Count skipped gates
git log --all --grep="\[SKIP-GATE\]" --oneline | wc -l
```

---

**Review Frequency:** After each phase completion
**Owner:** Tech Lead
