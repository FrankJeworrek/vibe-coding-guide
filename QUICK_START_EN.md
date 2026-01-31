# Quick Start: Vibe Coding Guide v3.0 🚀

**Reading Time:** 5-10 minutes | **For:** All developers with AI assistants

---

## What is Vibe Coding?

**Vibe Coding** = Intuitive, flow-based programming with AI assistants (Claude, GPT, Gemini).

**Problem:** Without structure, 80% of Vibe Coding projects fail after 2-3 weeks.

**Solution:** The **6-Phase Methodology** from this guide.

---

## The 6 Phases (Ultra-Compact)

| Phase | When? | Duration | Focus | Deliverables |
|-------|-------|----------|-------|--------------|
| **Phase 0** | BEFORE code | 5-20% | Foundation | Charter, Tech-Stack, Plan, Git-Setup |
| **Phase 1** | After Phase 0 | 5-15% | Research | Mockups, PoC, Data-Model, Test-Setup |
| **Phase 2** | Main Phase | 30-50% | Implementation | MVP Features, Tests, Database |
| **Phase 3** | After MVP | 20-30% | Expansion | Secondary Features, Export, Shortcuts |
| **Phase 4** | Almost done | 10-20% | Polish | UI/UX, Performance, Accessibility |
| **Phase 5** | Before Release | 10-15% | Hardening | E2E Tests, Security, Bug-Fixes |
| **Phase 6** | Release | 5-10% | Documentation | README, Release, Community |

**Important:** DO NOT skip to Phase 2 without Phase 0! This leads to chaos.

---

## 5-Minute Start

### Step 1: Create a Project Charter (10 Min)

```markdown
# Project Charter: [Your Project Name]

## Vision (1 sentence)
A [product-type] for [target-audience], to solve [problem].

## Success Criteria (V1.0)
- [ ] User can [Feature 1]
- [ ] User can [Feature 2]
- [ ] User can [Feature 3]
- [ ] Performance: [Measurable goal]

## Non-Goals (V1.0)
- ❌ [Feature X] (V2.0 only)
- ❌ [Feature Y] (V1.5 only)

## Constraints
- [Time budget]: [X weeks]
- [Team size]: [Solo / 2-5 / 5+ people]
- [Platform]: [Web / Mobile / Desktop / CLI]
```

**Save as:** `project-charter.md`

### Step 2: Choose Your Tech Stack (10 Min)

**Use Decision Matrices:**

```markdown
# Tech Stack: [Project Name]

## Language
- **Chosen:** [Python / JavaScript / Go / Rust / Java]
- **Rationale:** [See ADR-001]

## Framework
- **Chosen:** [Next.js / Django / Spring / Electron / React Native]
- **Rationale:** [See ADR-002]

## Database
- **Chosen:** [PostgreSQL / SQLite / MongoDB]
- **Rationale:** [See ADR-003]

## Testing
- **Unit:** [Jest / Vitest / pytest / Go-Test]
- **E2E:** [Playwright / Cypress / Selenium]

## Hosting
- **Platform:** [Vercel / AWS / Heroku / Self-Hosted]
```

**Save as:** `tech-stack.md`

### Step 3: Setup Git + .continuity/ (5 Min)

```bash
# 1. Initialize Git
git init
git branch -M main

# 2. Create .continuity/ structure
mkdir -p .continuity/{sessions,decisions,context,config,private}

# 3. Create .gitignore
cat > .gitignore <<EOF
node_modules/
.env
.continuity/private/
dist/
build/
EOF

# 4. Initial Commit
git add .
git commit -m "Initial commit: Phase 0 Foundation"

# 5. Create GitHub Repo (via gh CLI)
gh repo create my-project --public --source=. --remote=origin
git push -u origin main
```

### Step 4: Session-based Development (Ongoing)

**Simple Session Pattern:**

```yaml
# .continuity/sessions/2026-01-31_session-001.yml
session_id: 2026-01-31_session-001
date: 2026-01-31
phase: "Phase 2 - Core Implementation"
developer: alice

goals:
  - Implement user authentication

start_time: "14:00:00"
end_time: "16:30:00"
status: completed

commits:
  - hash: "abc123"
    message: "Add JWT authentication"

files_created:
  - "src/auth/jwt.ts"
  - "src/auth/jwt.test.ts"

achievements:
  - "✅ JWT auth works"
  - "✅ Tests passing (85% coverage)"

blockers: []

next_session_plan: |
  - Add password reset functionality
  - Implement refresh tokens
```

**Workflow:**
1. Start session → create `session-001.yml`
2. Develop with AI → write code + tests
3. Commit → update session YAML
4. End session → write `next_session_plan`

---

## 10 Core Principles (Checklist)

- [ ] **1. Phase 0 First** — No code without Charter + Tech-Stack
- [ ] **2. Session-Driven** — Every dev session has YAML file
- [ ] **3. Test-Driven** — Tests parallel to code (not "later")
- [ ] **4. Git-Disciplined** — Small, atomic commits (1 Feature = 1 Commit)
- [ ] **5. AI-Assisted** — Use AI for boilerplate + tests
- [ ] **6. Quality-Gated** — Automated checks before phase transition
- [ ] **7. Document-WHY** — ADRs for all major decisions
- [ ] **8. Backup-Redundant** — 3+ backup layers (Git + Local + Cloud)
- [ ] **9. Iterative** — Feature-by-feature (not everything at once)
- [ ] **10. Pragmatic** — "Good enough" > "Perfect"

---

## Common Mistakes (Avoid!)

### ❌ MISTAKE 1: Start with code directly

**Problem:** "I'll write a proof-of-concept first" → 3 weeks later: unstructured chaos

**Solution:** Phase 0 ALWAYS first! Charter + Tech-Stack + Plan = 1-2 days investment, saves 2-3 weeks later.

### ❌ MISTAKE 2: "I'll document later"

**Problem:** "Later" never happens. After 6 weeks you don't remember WHY you chose X.

**Solution:** Write ADRs IMMEDIATELY (takes 5 minutes). Example:

```markdown
# ADR-001: Why React instead of Vue?

## Status
✅ ACCEPTED — 2026-01-31

## Decision
React 18 (not Vue 3)

## Rationale
- Team expertise: 3/5 know React, 1/5 knows Vue
- Ecosystem: More React component libraries (Material-UI, Chakra)
- Hiring: Easier to find React developers

## Consequences
- Positive: Faster development (team expertise)
- Negative: Larger bundle size than Vue
```

### ❌ MISTAKE 3: No tests

**Problem:** "I'll test manually" → After 10 features: 2 hours testing per feature change

**Solution:** TDD from the start. Tests are NOT optional!

```typescript
// 1. Write test (RED)
test('user can login with valid credentials', () => {
  const result = login('alice@example.com', 'password123');
  expect(result.success).toBe(true);
});

// 2. Write code (GREEN)
function login(email, password) {
  if (email && password) return { success: true };
  return { success: false };
}

// 3. Refactor (REFACTOR)
// ... Improve code, tests stay green
```

### ❌ MISTAKE 4: Feature Creep

**Problem:** "I'll just quickly add X" → Project never finishes

**Solution:** **Non-Goals** in Charter explicitly exclude features!

```markdown
## Non-Goals (V1.0)
- ❌ Dark Mode (V1.5 only)
- ❌ Multi-Language Support (V2.0 only)
- ❌ Mobile App (Web-Only for V1.0)
```

### ❌ MISTAKE 5: No Backups

**Problem:** Laptop stolen/crashed → Complete project loss

**Solution:** 3+ backup layers:
1. **Git Remote** (GitHub/GitLab) — Real-time
2. **Time Machine** (Mac) / File History (Windows) — Hourly
3. **Cloud Backup** (Dropbox/S3 via rclone) — Daily

---

## Language-Agnostic (Works with ANY Language)

This methodology works with:

| Language | Framework | Project Type | Adaptations |
|----------|-----------|--------------|-------------|
| **JavaScript** | Next.js, React, Vue | Web-App | Only tech-stack documentation |
| **Python** | Django, FastAPI, PyQt | Web/Desktop | Only tech-stack documentation |
| **Go** | Cobra, Gin, gRPC | CLI/API | Only tech-stack documentation |
| **Rust** | Tauri, Actix, Axum | Desktop/Web | Only tech-stack documentation |
| **Java** | Spring Boot, JavaFX | Enterprise/Desktop | Only tech-stack documentation |

**The process stays identical:** Phase 0 → Phase 1 → ... → Phase 6

---

## Team Adaptations

### Solo Developer (1 Person)
- **Session-YAML:** Simplified (only for "Future You")
- **Code-Review:** Self-review or AI-review
- **Phase 0:** 1-2 days

### Small Team (2-5 People)
- **Session-YAML:** Include `developer: alice`
- **Code-Review:** Peer-review (1 reviewer)
- **Phase 0:** 2-3 days (alignment meeting)

### Medium/Large Team (5+ People)
- **Session-YAML:** Integration with JIRA/Linear
- **Code-Review:** 2+ reviewers + approval gates
- **Phase 0:** 1 week (enterprise governance)

---

## Templates & Tools

### Download Templates
```bash
# Clone this repo
git clone https://github.com/FrankJeworrek/vibe-coding-guide.git

# Copy templates to your project
cp vibe-coding-guide/templates/project-charter.md my-project/
cp vibe-coding-guide/templates/tech-stack.md my-project/
cp vibe-coding-guide/templates/session-context.md my-project/.continuity/
```

### Scripts
```bash
# Start session (Node.js)
node vibe-coding-guide/scripts/session-management/session-start.js

# Start session (Python)
python vibe-coding-guide/scripts/session-management/session-start.py

# Start session (Bash)
bash vibe-coding-guide/scripts/session-management/session-start.sh
```

---

## AI-Assisted Development Tips

### ✅ Good AI Prompts (Specific!)

```
GOOD: "Implement a React hook called useLocalStorage that:
- Syncs state with localStorage
- Handles JSON serialization/deserialization
- Returns [value, setValue] tuple like useState
- Includes TypeScript types
- Write unit tests with Jest"

BAD: "Make a localStorage hook"
```

### ✅ Iterative Workflow

```
Round 1: "Create basic hook structure"
Round 2: "Add localStorage sync with useEffect"
Round 3: "Handle edge case: localStorage disabled"
Round 4: "Add TypeScript types"
Round 5: "Write tests covering all scenarios"
```

### ✅ AI as Code Reviewer

```
Prompt: "Review this code for:
- Security vulnerabilities (SQL injection, XSS)
- Performance issues (N+1 queries)
- Best practices violations

[paste code]
"
```

---

## Next Steps

### Option 1: Complete Guide (30 Min Reading Time)
→ [AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md](AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md)

**Contains:**
- All 6 phases (detailed)
- Code examples (Python, JavaScript, Go)
- CI/CD integration
- Secrets management
- Multi-repo vs. Monorepo
- Recovery & disaster recovery

### Option 2: Start Now!

```bash
# 1. Create project-charter.md (10 min)
# 2. Create tech-stack.md (10 min)
# 3. Setup Git + .continuity/ (5 min)
# 4. Start coding! (with AI assistant)
```

### Option 3: Use Templates & Scripts

```bash
# Clone repo
git clone https://github.com/FrankJeworrek/vibe-coding-guide.git

# Use templates
cd vibe-coding-guide/templates/
ls -la

# Use scripts
cd vibe-coding-guide/scripts/
ls -la
```

---

## Resources

- **Main Guide (EN):** [AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md](AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md)
- **Quick Start (DE):** [QUICK_START_DE.md](QUICK_START_DE.md)
- **Templates:** [templates/](templates/)
- **Scripts:** [scripts/](scripts/)
- **Decision Matrices:** [decision-matrices/](decision-matrices/)
- **Examples:** [examples/](examples/)
- **GitHub:** https://github.com/FrankJeworrek/vibe-coding-guide

---

## FAQ (Frequently Asked Questions)

### Q: Isn't this too much overhead?

**A:** No! Phase 0 takes 1-2 days but saves 2-3 weeks later. ROI is massively positive.

### Q: Does this work for small projects (1-2 weeks)?

**A:** Yes! For micro-projects: Phase 0 = 2 hours, Phase 1 = 1 hour. Still worth it.

### Q: Do I need Session-YAMLs as solo dev?

**A:** Recommended! "Future You" (in 3 months) will be grateful. Takes only 2 minutes per session.

### Q: Can I skip phases?

**A:** **NEVER skip Phase 0!** Other phases can be shortened (e.g., Phase 4 for internal tools).

### Q: What if I'm in the middle of a project?

**A:** No problem! Create a retrospective charter + tech-stack.md NOW. Better late than never.

---

**Good luck with your next Vibe Coding project! 🚀**

**Version:** 3.0.0 | **Author:** Frank Jeworrek | **License:** MIT
