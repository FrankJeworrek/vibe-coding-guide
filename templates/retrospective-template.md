# Retrospective: [Phase/Sprint Name]

**Date:** YYYY-MM-DD
**Participants:** [Names]
**Facilitator:** [Name]
**Duration:** [XX minutes]

---

## Overview

**What period are we reflecting on?**
- Start Date: [YYYY-MM-DD]
- End Date: [YYYY-MM-DD]
- Phase/Sprint: [Phase X / Sprint Y]

**Goals for this period:**
- [Goal 1]
- [Goal 2]
- [Goal 3]

---

## What Went Well? 😊

**Things that worked and we should continue:**

- [Item 1]
- [Item 2]
- [Item 3]

**Example:**
- Pair programming sessions were very productive (3x faster than solo)
- CI/CD pipeline caught 5 bugs before they reached production
- Daily standups kept everyone aligned

---

## What Didn't Go Well? 😟

**Things that caused problems:**

- [Item 1]
- [Item 2]
- [Item 3]

**Example:**
- Tests took too long to run (5 minutes), slowing down development
- Unclear requirements led to 2 features being re-implemented
- Database migrations were done manually (error-prone)

---

## What Can We Improve? 💡

**Specific, actionable improvements:**

| Issue | Action Item | Owner | Target Date |
|-------|-------------|-------|-------------|
| [Problem] | [Specific action] | [Name] | [Date] |

**Example:**
| Issue | Action Item | Owner | Target Date |
|-------|-------------|-------|-------------|
| Slow tests | Parallelize tests, use in-memory DB for unit tests | Bob | Next sprint |
| Unclear requirements | Add acceptance criteria to all user stories | Alice | Immediately |
| Manual migrations | Setup migration automation (Flyway/Liquibase) | Carol | Week 2 |

---

## Metrics (Objective Data)

**How did we perform?**

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Velocity (Story Points) | [X] | [Y] | ✅/❌ |
| Test Coverage | ≥70% | [Y]% | ✅/❌ |
| Bug Count (Critical) | 0 | [N] | ✅/❌ |
| Deployment Frequency | [X/week] | [Y/week] | ✅/❌ |

**Example:**
| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Story Points | 30 | 28 | ✅ (93%) |
| Test Coverage | ≥70% | 76% | ✅ |
| Critical Bugs | 0 | 1 | ❌ |
| Deploys | 5/week | 7/week | ✅ |

---

## Key Learnings & Insights

**What did we learn?**

- **Technical:** [Learning about tech/architecture]
- **Process:** [Learning about workflow/process]
- **Team:** [Learning about collaboration/communication]

**Example:**
- **Technical:** React Server Components are tricky with client-side state - need clearer component boundaries
- **Process:** Code reviews are faster when PRs are <300 lines
- **Team:** Async communication (Slack) works better than meetings for simple decisions

---

## Action Items (SMART Goals)

**Specific, Measurable, Achievable, Relevant, Time-bound actions:**

- [ ] **[Owner]:** [Action] by [Date]
- [ ] **[Owner]:** [Action] by [Date]
- [ ] **[Owner]:** [Action] by [Date]

**Example:**
- [ ] **Bob:** Implement test parallelization (target: reduce test time to <2min) by Feb 15
- [ ] **Alice:** Create "Definition of Ready" checklist for user stories by Feb 10
- [ ] **Carol:** Setup Flyway for automated migrations by Feb 20

---

## Shout-Outs 🎉

**Who deserves recognition?**

- **[Name]:** [What they did well]
- **[Name]:** [What they did well]

**Example:**
- **Alice:** Excellent debugging session that found the root cause of the race condition in 30 minutes!
- **Bob:** Great documentation on the new API endpoints - made onboarding the new developer much easier
- **Carol:** Thanks for staying late to fix the production bug!

---

## Next Retrospective

**When:** [Date]
**Focus Areas:** [What to pay attention to]

**Example:**
**When:** 2026-02-28
**Focus Areas:**
- Did test parallelization improve development speed?
- Are automated migrations working reliably?
- How is the new "Definition of Ready" working?

---

## Notes & Comments

**Free-form notes:**

- [Note 1]
- [Note 2]

**Example:**
- Team requested more time for spikes/PoC work - add 20% buffer to estimates
- Consider adopting mob programming for complex features (trial in next sprint)

---

## Appendix: Retrospective Formats

**Use different formats to keep retros fresh:**

### Format 1: Start/Stop/Continue
- **Start:** What should we start doing?
- **Stop:** What should we stop doing?
- **Continue:** What should we keep doing?

### Format 2: Liked/Learned/Lacked/Longed For (4Ls)
- **Liked:** What went well?
- **Learned:** What did we learn?
- **Lacked:** What was missing?
- **Longed For:** What do we wish we had?

### Format 3: Sailboat
- **Wind (Propelling):** What's pushing us forward?
- **Anchor (Holding Back):** What's slowing us down?
- **Rocks (Risks):** What dangers are ahead?
- **Sun (Goals):** Where are we heading?

---

**Retrospective Owner:** [Name]
**Next Review:** [Date]
