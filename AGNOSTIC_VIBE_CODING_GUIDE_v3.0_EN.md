# The Universal Vibe Coding Handbook v3.0

**Version:** 3.0.0
**Last Updated:** 2026-01-31
**Language:** English
**Status:** Stable Release

**AI-Agnostic:** Works with any AI assistants (Claude, GPT, Gemini, local LLMs) or human teams
**Language-Agnostic:** Works with Python, JavaScript, Go, Rust, Java, C#, PHP, Ruby and more
**Framework-Agnostic:** Works for Web, Mobile, CLI, Desktop, Microservices, Embedded Systems
**Team-Scalable:** Works for solo developers to 20+ person enterprise teams

---

## 📖 Table of Contents

**[Part I: Fundamentals](#part-i-fundamentals)**
1. [Introduction: Why Vibe Coding Often Fails](#1-introduction-why-vibe-coding-often-fails)
2. [The Vibe Coding Methodology: Overview](#2-the-vibe-coding-methodology-overview)
3. [Scaling Guide](#3-scaling-guide)

**[Part II: The 6-Phase Architecture](#part-ii-the-6-phase-architecture)**
- [Phase 0: Pre-Project Foundation](#phase-0-pre-project-foundation)
- [Phase 1: Implementation Plan Excellence](#phase-1-implementation-plan-excellence)
- [Phase 2: Session Continuity & State Management](#phase-2-session-continuity--state-management)
- [Phase 3: Backup & Recovery](#phase-3-backup--recovery)
- [Phase 4: Decision Logging (ADR System)](#phase-4-decision-logging-adr-system)
- [Phase 5: Quality Gates & Verification](#phase-5-quality-gates--verification)
- [Phase 6: Continuous Learning](#phase-6-continuous-learning)

**[Part III: Practical Application](#part-iii-practical-application)**
7. [Complete Workflow Examples](#7-complete-workflow-examples)
8. [Critical Success Factors](#8-critical-success-factors)
9. [Checklists](#9-checklists)
10. [Tool Selection Guides](#10-tool-selection-guides)

**[Part IV: Advanced Topics](#part-iv-advanced-topics)**
11. [Team Scaling Patterns](#11-team-scaling-patterns)
12. [AI Assistant Strategies](#12-ai-assistant-strategies)
13. [Security & Compliance](#13-security--compliance)
14. [Performance Optimization](#14-performance-optimization)
15. [Deployment & Operations](#15-deployment--operations)

**[Part V: Appendix](#part-v-appendix)**
- [Appendix A: Complete Script Library](#appendix-a-complete-script-library)
- [Appendix B: Template Library](#appendix-b-template-library)
- [Appendix C: Case Studies](#appendix-c-case-studies)
- [Appendix D: Quick Reference](#appendix-d-quick-reference)
- [Appendix E: Additional Resources](#appendix-e-additional-resources)

---

# Part I: Fundamentals

## 1. Introduction: Why Vibe Coding Often Fails

### 1.1 The Problem with Ad-hoc AI Coding

**Vibe Coding** – intuitive, flow-based programming with AI assistants – has revolutionized software development. With tools like Claude, GPT-4, and Gemini, developers can generate code in minutes that previously took hours or days.

**But the reality is sobering:**

❌ **80% of Vibe Coding projects fail** before the first release
❌ **Mid-Course Chaos** occurs after 2-4 weeks, when initial excitement fades
❌ **Context-Loss** during interruptions leads to duplicate work and inconsistencies
❌ **Technical Debt** accumulates faster than in traditional development
❌ **Team-Coordination** fails because each developer has their own "vibe"

**Why do so many projects fail?**

The problem is NOT the AI. The problem is the **lack of professional software engineering practices**:

1. **No clear specification** → Mid-Course Chaos
   - Development starts with "Let's just begin"
   - Features are implemented randomly, no prioritization
   - After 3 weeks: "Wait, what are we building?"

2. **Missing continuity mechanism** → Context-Loss during interruptions
   - After a break: "What did I do last?"
   - AI assistant has no persistent state
   - No handoff information between sessions
   - Result: Duplicate work, contradictory implementations

3. **No backup strategy** → Data loss during crashes
   - "Git is enough" – until hard drive crashes
   - No local backups, no cloud redundancy
   - Session state not backed up
   - Result: Project loss, weeks wasted

4. **Incomplete documentation** → Onboarding impossible
   - Code without context: "Why was this implemented this way?"
   - No README, no architecture documentation
   - Team member joins: "Where do I start?"
   - Result: Only original developer can understand code

5. **Missing decision documentation** → Repeated discussions
   - After 3 months: "Why did we choose X instead of Y?"
   - No documented alternatives and trade-offs
   - Result: Same discussions are held repeatedly

**The traditional answers are WRONG:**

🚫 **"Vibe Coding is only for prototypes"** → Wrong. With the right practices, it works for production software.
🚫 **"You need classical project management"** → Wrong. Excessive process kills the flow that makes Vibe Coding valuable.
🚫 **"AI assistants aren't mature"** → Wrong. The AI is fantastic. The problem is the missing professional framework.

### 1.2 The Vibe Coding Philosophy: Best of Both Worlds

**This handbook solves the problem through a pragmatic middle ground:**

> **Vibe Coding + professional practices = Successful projects**

**Core Principle:**
> **Preparation determines success or failure.**
> Phase 0 (1 week for medium projects) closes all known gaps BEFORE Phase 1 (Implementation) begins.

**The 6-Phase Methodology:**

```
┌────────────────────────────────────────────────────────────┐
│  PHASE 0: Pre-Project Foundation (1 Week)                 │
│  → Close gaps BEFORE implementation begins                 │
│  → project-charter.md, tech-stack.md, Test Data, ADR-001  │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 1: Implementation Plan Excellence (2-5 Days)       │
│  → Specification BEFORE implementation                     │
│  → Concrete deliverables (not vague tasks)                 │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 2: Session Continuity & State Management (Setup)   │
│  → YAML sessions with handoff protocol                     │
│  → Three-layer architecture (WHY/WHAT/EXISTS)              │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 3: Backup & Recovery (Setup)                       │
│  → 5-Layer Backup Model (Defense in Depth)                │
│  → Git + Local + Cloud + Tracking + Portable              │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 4: Decision Logging (ADR System)                   │
│  → Architecture Decision Records for every important choice│
│  → Alternatives Considered documented                      │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 5: Quality Gates & Verification (per Phase)        │
│  → Quality built-in, not checked afterwards                │
│  → Automated + Manual + Documentation + CI/CD              │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 6: Continuous Learning (per Session)               │
│  → Post-Session Retrospectives                             │
│  → Process Improvement Loops                               │
└────────────────────────────────────────────────────────────┘
```

**What makes this approach different?**

✅ **Pragmatic over Perfect**: No academic concepts, only what works in real projects
✅ **Flow-preserving**: Minimal overhead during development, maximum structure in preparation
✅ **Language-agnostic**: Works with Python, JavaScript, Go, Rust, Java – any technology
✅ **Team-scalable**: From solo developer to 20+ person enterprise teams
✅ **AI-agnostic**: Works with Claude, GPT, Gemini, or local LLMs
✅ **Battle-tested**: Based on 28-week real project (THE_SONG_APP, 15,000+ LOC)

**What this handbook is NOT:**

❌ Not a replacement for software engineering knowledge (Clean Code, Design Patterns, etc.)
❌ Not a "silver bullet" that solves all problems
❌ Not a rigid framework (adapt it to your needs!)
❌ Not a comprehensive AI prompt engineering guide
❌ Not a project management framework like Scrum or Kanban

**This handbook IS:**

✅ A **pragmatic guide** for Vibe Coding with professional practices
✅ A **proven methodology** from real projects
✅ A **flexible framework** you can adapt
✅ A **collection of best practices** for session management, backup, ADRs, quality gates
✅ A **starting point** for successful Vibe Coding projects

### 1.3 Who Is This Guide For?

**This guide is for you if you...**

#### Solo Developers (1 Person)

You work alone with an AI assistant (Claude, GPT, Gemini) and want to:
- ✅ Successfully complete your projects (not just start them!)
- ✅ Quickly resume after interruptions
- ✅ Document decisions (for your future self)
- ✅ Have professional backup strategies
- ✅ Upgrade from "chaotic prototyping" to "structured development"

**Use Cases:** Side projects, freelance projects, startup MVPs, learning projects

#### Small Teams (2-5 People)

Your team works with AI assistants and you need:
- ✅ Coordination mechanisms (who's working on what?)
- ✅ Handoff protocols (how do I hand off to colleagues?)
- ✅ Shared context (how does the team stay synchronized?)
- ✅ ADR system (how do we document team decisions?)
- ✅ Code review integration (how do we review AI-generated code?)

**Use Cases:** Startup teams, small agency projects, open-source collaborations

#### Medium Teams (5-15 People)

Your team has multiple squads and you need:
- ✅ Squad-based session management
- ✅ Cross-team ADRs (decisions affecting multiple teams)
- ✅ Onboarding process for new developers
- ✅ Quality gates with CI/CD integration
- ✅ Team retrospectives and knowledge transfer

**Use Cases:** Scale-ups, mid-size company projects, enterprise innovation labs

#### Large Teams (15+ People)

Your enterprise team needs:
- ✅ Governance structures for AI code generation
- ✅ Compliance integration (GDPR, HIPAA, SOC2)
- ✅ Multi-team session coordination
- ✅ Architecture Review Boards for ADRs
- ✅ Enterprise backup & disaster recovery

**Use Cases:** Enterprise projects, multi-product platforms, regulated industries

#### Project Types

This guide works for:

**Web Applications:**
- Frontend: React, Vue, Angular, Svelte
- Backend: Node.js, Django, Spring Boot, Laravel, Ruby on Rails
- Full-Stack: Next.js, Remix, SvelteKit

**Mobile Applications:**
- Cross-Platform: React Native, Flutter, Xamarin
- Native: Swift (iOS), Kotlin (Android)

**CLI Tools:**
- Go (Cobra, urfave/cli)
- Rust (clap, structopt)
- Python (Click, Typer, argparse)
- Node.js (Commander, yargs)

**Desktop Applications:**
- Electron, Tauri, Qt, GTK
- Native: Swift (macOS), C# (Windows)

**Microservices:**
- gRPC, REST APIs, GraphQL
- Go, Rust, Node.js, Java/Spring Cloud

**Embedded Systems:**
- Rust, C, C++ (with limitations)

**Databases & Backend:**
- SQL: PostgreSQL, MySQL, SQLite
- NoSQL: MongoDB, Redis, Cassandra

### 1.4 How to Use This Guide

#### For the Hurried: Quick Start (5 Minutes)

```bash
# 1. Read: QUICK_START_EN.md
less QUICK_START_EN.md

# 2. Copy templates
cp templates/project-charter.md my-project/
cp templates/session-context.md my-project/

# 3. Start session
python scripts/session-management/session-start.py

# 4. Develop → End session → Repeat!
```

**→ [To Quick Start Guide](QUICK_START_EN.md)**

#### For the Thorough: Complete Walkthrough (30-60 Minutes)

**Phase 1: Reading (30 Min)**
1. Read [Part I: Fundamentals](#part-i-fundamentals) (this section)
2. Skim [Part II: The 6-Phase Architecture](#part-ii-the-6-phase-architecture)
3. Decide your [Scaling Mode](#3-scaling-guide) (Micro/Small/Medium/Large)

**Phase 2: Setup (20 Min)**
4. Copy relevant [Templates](#part-v-appendix) for your project
5. Install [Scripts](#appendix-a-complete-script-library) (optional)
6. Create `project-charter.md` and `tech-stack.md`

**Phase 3: Implementation (10 Min)**
7. Start your first session with `session-start.py/js/sh`
8. Develop following [Phase 1: Implementation Plan](#phase-1-implementation-plan-excellence)
9. End session with `session-end.py/js/sh`

#### For Teams: Onboarding (1-2 Hours)

**Day 1: Team Alignment (1h)**
1. **Team Reading:** Everyone reads [Part I](#part-i-fundamentals) (30 Min)
2. **Discussion:** Which phases are relevant for us? (15 Min)
3. **Decisions:** [Scaling Mode](#3-scaling-guide) and tool selection (15 Min)

**Day 2: Setup & First Session (1h)**
4. **Joint Setup:** Copy templates, install scripts (20 Min)
5. **First Team Session:** With [Phase 2: Session Continuity](#phase-2-session-continuity--state-management) (30 Min)
6. **Retrospective:** What worked? What to adjust? (10 Min)

#### Reference Usage: During Development

**As a Reference:**
- 🔍 **Search:** Use Markdown anchors (`#phase-0-pre-project-foundation`)
- 📋 **Checklists:** [Chapter 9: Checklists](#9-checklists) for concrete TODOs
- 🛠️ **Scripts:** [Appendix A: Script Library](#appendix-a-complete-script-library)
- 📊 **Decisions:** [Decision Matrices](decision-matrices/) for tech stack choice

**Typical Questions During Development:**

| Question | Answer in... |
|-------|---------------|
| "How do I start a session?" | [Phase 2.3: Session Lifecycle Scripts](#phase-2-session-continuity--state-management) |
| "Which language should I choose?" | [decision-matrices/language-selection.md](decision-matrices/language-selection.md) |
| "How do I document a decision?" | [Phase 4: ADR System](#phase-4-decision-logging-adr-system) |
| "How do I set quality gates?" | [Phase 5: Quality Gates](#phase-5-quality-gates--verification) |
| "How does our team coordinate?" | [Phase 2.6: Team Collaboration Patterns](#phase-2-session-continuity--state-management) |
| "What do I do with data loss?" | [Phase 3: Backup & Recovery](#phase-3-backup--recovery) |

### 1.5 Glossary & Core Concepts

Before we dive deeper, let's clarify the most important terms:

#### Vibe Coding
**Definition:** Intuitive, flow-based programming with AI assistants, where the developer communicates in natural language and the AI generates, explains, or refactors code.

**Not to be confused with:**
- **Pair Programming:** Two humans, no AI
- **Code Generation:** Vibe Coding is more than just generating code (also architecture, design, debugging)
- **No-Code/Low-Code:** Vibe Coding is full-stack development with AI support

#### Session
**Definition:** A coherent work block (typically 30 Min – 4 hours) where a developer works with an AI assistant. Each session has:
- **session-start:** Beginning with context loading
- **Work:** Development with AI assistant
- **session-end:** Completion with handoff documentation

**Example:** "I start a session to implement feature X, work for 2 hours, and end the session with notes for my future self (or team member)."

#### ADR (Architecture Decision Record)
**Definition:** A structured document that documents an important architecture decision.

**Structure:**
- **Context:** Why do we need a decision?
- **Decision:** What did we decide?
- **Alternatives Considered:** What did we NOT choose and why?
- **Consequences:** What are the positive/negative impacts?

**Example:** "ADR-003: We choose PostgreSQL instead of MongoDB because our data needs relational integrity. Alternative MongoDB was rejected due to lack of transactions. Consequence: More setup effort, but better data consistency."

#### Deliverable
**Definition:** A concrete result of a phase (not a vague task).

**Good (Deliverable):**
- ✅ `src/core/auth_manager.py` (180 LOC, OAuth2 integration)
- ✅ `tests/test_auth.py` (150 LOC, 90% coverage)
- ✅ `docs/api/authentication.md` (API documentation)

**Bad (Vague Task):**
- ❌ "Implement auth"
- ❌ "Write tests"
- ❌ "Document API"

#### Quality Gate
**Definition:** A checkpoint at the end of each phase that must be met before the next phase begins.

**Typical Quality Gates:**
- **Automated:** pytest 0 failures, coverage >80%, linting passed
- **Manual:** Feature works for 5 test cases, performance <100ms
- **Documentation:** README updated, docstrings present

**Example:** "Phase 3 Quality Gate: All tests green, coverage >85%, performance budget met, ADR-005 written."

#### Handoff
**Definition:** Structured information at the end of a session that describes:
- What was achieved?
- What is the current status?
- What are the next steps?
- Are there blockers?

**Example:**
```yaml
handoff:
  state: "in_progress"
  achieved:
    - Implemented OAuth2 login flow
    - Added unit tests (85% coverage)
  next_steps:
    - Implement refresh token logic
    - Add integration tests
  blockers:
    - Need API credentials for testing
```

#### Phase 0
**Definition:** The Pre-Project Foundation Phase (typically 1 week for medium projects) where all known gaps are closed BEFORE implementation begins.

**Deliverables:**
- project-charter.md (Vision, Success Criteria, Out-of-Scope)
- tech-stack.md (Chosen Technologies + Rejected Alternatives)
- Test Data (10-20 Golden Samples)
- ADR-001 (Main Architecture Decision)
- Timeline with Buffer (+30%)

**Why Important:** Prevents expensive mid-course corrections and gives all participants shared understanding.

#### Buffer
**Definition:** Additional time (+30% recommended) added to bottom-up estimates to absorb unknown complexities.

**Example:**
- **Base Estimate:** 10 weeks (calculated)
- **Buffer:** +3 weeks (+30%)
- **Recommended:** 13 weeks (communicated to stakeholders)

**Why Important:** Buffer is NOT pessimism, but best practice. Stakeholders prefer "Finish Early" > "Late".

#### Stack-Agnostic
**Definition:** This guide works with any programming language, any framework, and any platform. Where necessary, examples are given in multiple languages.

**Example instead of "Use Python":**
→ "Choose a language with: Type System, Mature Ecosystem, Team Expertise. See [decision-matrices/language-selection.md](decision-matrices/language-selection.md)"

#### Three-Layer Architecture (Session Context)
**Definition:** Session management is based on 3 information levels:

```
Layer 1: CONTEXT (WHY)
├── ADRs (Architecture Decision Records)
├── Rationales, Alternatives, Consequences
└── Change Frequency: Rare

Layer 2: SESSION (WHAT/WHEN)
├── YAML sessions with handoffs
├── Work, Tasks, Changes, Progress
└── Change Frequency: Every session

Layer 3: PROJECT (EXISTS)
├── Code, Docs, Config, Database
├── Deliverables, Build Artifacts
└── Change Frequency: Continuous
```

---

## 2. The Vibe Coding Methodology: Overview

### 2.1 The 6-Phase Architecture (Visual)

```
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 0: Pre-Project Foundation                                 ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 1 Day (Micro) | 3-5 Days (Small) | 1-2 Weeks (Large) ║
║  Goal: Close gaps BEFORE implementation begins                    ║
║                                                                    ║
║  Deliverables:                                                     ║
║  ├── project-charter.md (Vision, Success Criteria, Scope)         ║
║  ├── tech-stack.md (Chosen + Rejected Alternatives)               ║
║  ├── Test Data (10-20 Golden Samples)                             ║
║  ├── ADR-001 (Main Architecture Decision)                         ║
║  └── Timeline with Buffer (+30%)                                   ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] All stakeholders aligned                                      ║
║  [ ] Tech stack documented with rationales                         ║
║  [ ] Test data prepared                                            ║
║  [ ] Risks identified & mitigated                                  ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 1: Implementation Plan Excellence                         ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 1 Day (Micro) | 2-5 Days (Small) | 1 Week (Large)    ║
║  Principle: Specification BEFORE implementation                   ║
║                                                                    ║
║  Deliverables:                                                     ║
║  └── IMPLEMENTATION_PLAN.md                                        ║
║      ├── Phase Breakdown (concrete deliverables)                  ║
║      ├── Timeline (Bottom-up + Buffer)                             ║
║      ├── Risk Analysis                                             ║
║      └── Quality Gates per phase                                   ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] Each phase has concrete deliverables (not vague tasks)       ║
║  [ ] Timeline realistic (with buffer)                              ║
║  [ ] Quality gates defined                                         ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 2: Session Continuity & State Management                  ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 3-5 hours (one-time setup)                             ║
║  Principle: Project continuity is not an afterthought             ║
║                                                                    ║
║  Three-Layer Architecture:                                         ║
║  ├── Layer 1 (WHY): ADRs → Rationales                            ║
║  ├── Layer 2 (WHAT/WHEN): YAML sessions → Handoffs               ║
║  └── Layer 3 (EXISTS): Code/Docs → Deliverables                  ║
║                                                                    ║
║  Session Lifecycle:                                                ║
║  1. session-start.py/js/sh → Loads context                        ║
║  2. Work with AI assistant                                         ║
║  3. session-end.py/js/sh → Saves handoff                          ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] Sessions are YAML-schema-valid                                ║
║  [ ] Handoff information complete                                  ║
║  [ ] Team can seamlessly hand off sessions                         ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 3: Backup & Recovery                                       ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 2-3 hours (one-time setup)                             ║
║  Principle: Defense in Depth                                       ║
║                                                                    ║
║  Five-Layer Backup Model:                                          ║
║  ├── Layer 1: Git Version Control                                 ║
║  ├── Layer 2: Local Timestamped Backups (rsync/robocopy/rclone)  ║
║  ├── Layer 3: STATUS_TRACKING.md (Human-Readable)                 ║
║  ├── Layer 4: Cloud Backup (S3, Azure, GCP)                       ║
║  └── Layer 5: Portable Packages                                    ║
║                                                                    ║
║  Additionally:                                                     ║
║  ├── Secrets Management (git-crypt, SOPS, Vault)                  ║
║  └── Disaster Recovery Drills                                      ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] Backup runs automatically (daily or at session-end)          ║
║  [ ] Restore tested (recovery drill performed)                     ║
║  [ ] Secrets NOT in backups (or encrypted)                         ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 4: Decision Logging (ADR System)                          ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 15-30 Min per ADR                                       ║
║  Principle: Architecture decisions are project assets             ║
║                                                                    ║
║  ADR Lifecycle:                                                    ║
║  1. 🔵 Proposed → Discussion                                       ║
║  2. 🟢 Accepted → Implementation                                   ║
║  3. 🟡 Superseded → Replaced by newer ADR                          ║
║  4. ⚫ Deprecated → No longer relevant                              ║
║                                                                    ║
║  When to create ADR?                                               ║
║  ├── Language/Framework choice                                     ║
║  ├── Architecture decisions (Monolith vs Microservices)           ║
║  ├── Database choice (SQL vs NoSQL)                               ║
║  ├── Deployment strategy (Cloud vs Self-Hosted)                   ║
║  └── Scope changes (Remove feature X from v1.0)                   ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] Alternatives Considered documented                            ║
║  [ ] Consequences (positive + negative) stated                     ║
║  [ ] Team reviewed ADR (for teams >1)                              ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 5: Quality Gates & Verification                           ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 30-60 Min per phase (define + check gates)             ║
║  Principle: Quality built-in, not checked afterwards              ║
║                                                                    ║
║  Quality Gate Template (per phase):                                ║
║  ├── Automated:                                                    ║
║  │   ├── Tests (pytest/Jest/go test/cargo test/JUnit)             ║
║  │   ├── Coverage >80%                                             ║
║  │   ├── Linting (flake8/ESLint/golangci-lint/clippy)             ║
║  │   └── Type-Checking (mypy/TypeScript/built-in)                 ║
║  ├── Manual:                                                       ║
║  │   ├── Feature works (5 test cases)                              ║
║  │   ├── Performance budget met                                    ║
║  │   └── UI/UX responsive (no freeze)                              ║
║  └── Documentation:                                                ║
║      ├── README updated                                            ║
║      ├── CHANGELOG contains entry                                  ║
║      └── Docstrings for public APIs                                ║
║                                                                    ║
║  CI/CD Integration:                                                ║
║  └── GitHub Actions / GitLab CI / Jenkins / CircleCI              ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] All quality gates green                                       ║
║  [ ] No regression in previous features                            ║
║  [ ] CI/CD pipeline passed (when using CI/CD)                      ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 6: Continuous Learning                                    ║
║  ─────────────────────────────────────────────────────────────    ║
║  Duration: 5 Min per session (retrospective)                      ║
║  Principle: Projects evolve, plans too                             ║
║                                                                    ║
║  Post-Session Retrospective:                                       ║
║  ├── What went well?                                               ║
║  ├── What went poorly?                                             ║
║  ├── Lessons learned                                               ║
║  └── Action items for process improvement                          ║
║                                                                    ║
║  Team Retrospectives (for teams):                                  ║
║  ├── Daily standup integration                                     ║
║  ├── Sprint retrospectives (every 2 weeks)                         ║
║  └── Post-mortem analysis (after major incidents)                  ║
║                                                                    ║
║  Verification:                                                     ║
║  [ ] Retrospective documented                                      ║
║  [ ] Action items implemented (in next session/sprint)             ║
║  [ ] Process iteratively improved                                  ║
╚═══════════════════════════════════════════════════════════════════╝
```

### 2.2 10 Core Principles

These principles run through the entire methodology:

#### 1. Specification Before Implementation

❌ **Wrong:** "Let's just start and see what happens"
✅ **Right:** "Phase 0 + Phase 1 define vision, scope, and implementation plan BEFORE code is written"

**Why:** Mid-course chaos occurs when nobody knows what should be built. Specification (not perfect, but good enough) saves weeks of wasted work.

**Example:**
```markdown
# BEFORE implementation:
project-charter.md:
- Vision: "A CLI tool that analyzes Git repos"
- Success Criteria: [ ] Analyzes 100+ repos in <5 Min
                    [ ] Exports CSV/JSON
- Out-of-Scope: ❌ No GUI (v1.0)
                ❌ No GitHub API integration (v2.0)
```

#### 2. Iterative Refinement Is Allowed

❌ **Wrong:** "Plan v1.0 is perfect, no changes"
✅ **Right:** "Plan v1.0 → v2.0 (Feedback) → v2.1 (Review)"

**Why:** Projects evolve. New insights emerge during implementation. Versions show learning process.

**Example:**
```markdown
IMPLEMENTATION_PLAN.md Version History:

v1.0.0 (2026-01-15): Initial (8 weeks, 6 features)
v2.0.0 (2026-01-22): Expansion (12 weeks, +4 features)
  Reason: User research identified gaps
v2.1.0 (2026-01-31): Refinement (14 weeks, fixed 3 blockers)
  Reason: Technical review identified dependencies
```

#### 3. Pragmatism Over Perfection

❌ **Wrong:** "We need Alembic because it's best practice"
✅ **Right:** "Alembic is overhead for desktop app (5000+ LOC just for migrations). Simple SQL runner suffices."

**Why:** Over-engineering kills projects. Choose technologies based on **actual need**, not hype.

**Example:**
```markdown
# tech-stack.md - Rejected Alternatives

| Alternative | Rejection Reason |
|-------------|------------------|
| Alembic     | Overhead for desktop app. Simple SQL + Python runner suffices. |
| PostgreSQL  | Requires server. SQLite is embedded and perfect for desktop. |
| Electron    | 200+ MB bundle. Tauri is 10× smaller. |
```

#### 4. Build Quality In, Don't Inspect It Out

❌ **Wrong:** "Phase 10: Write tests for everything"
✅ **Right:** "Every phase: Tests parallel to code, 80% coverage gate"

**Why:** Writing tests after the fact is painful and leads to untestable code. Tests parallel = better design.

**Example:**
```markdown
Phase 3: Auth System (Week 3)
Deliverables:
- src/auth/manager.py (200 LOC)
- tests/test_auth.py (180 LOC) ← Written in parallel!
- Coverage: 92% ← Verified

Quality Gate:
[ ] pytest 0 failures
[ ] Coverage >80% ✓ (92%)
[ ] Auth works for 5 test cases
```

#### 5. Session Continuity as First-Class Concern

❌ **Wrong:** "We'll note things in Slack/Email"
✅ **Right:** "YAML sessions + ADRs + quick-start context"

**Why:** Context loss is the #1 productivity killer during interruptions. Structured handoff solves this.

**Example:**
```yaml
# .continuity/sessions/2026-01-31_session-001.yml
session:
  handoff:
    state: "in_progress"
    achieved:
      - Implemented OAuth2 login
      - Added unit tests (85% coverage)
    next_steps:
      - Implement refresh token logic
      - Add integration tests
    blockers:
      - Need API credentials for testing (ask ops team)
```

#### 6. Backup Redundancy Without Overhead

❌ **Wrong:** "Git is enough, backups are overhead"
✅ **Right:** "5-layer system (Git + Local + Cloud + Tracking + Portable)"

**Why:** Single point of failure. Hard drives crash. Git remote fails. Redundancy saves projects.

**Example:**
```bash
# Automatic backup at session-end
./session-end.sh
→ Triggers:
  1. Git commit + push
  2. rsync to local backup (timestamped)
  3. rclone sync to S3 (incremental)
  4. STATUS_TRACKING.md updated

# Recovery after hard drive crash:
./restore-from-backup.sh 2026-01-31_14-30
→ Restored in 5 minutes
```

#### 7. Document Decisions

❌ **Wrong:** "We already know this"
✅ **Right:** "ADR for every important decision"

**Why:** After 3 months: "Why did we choose X instead of Y?" Without ADR: Repeated discussions.

**Example:**
```markdown
# ADR-005: Why React Instead of Vue?

Context: Frontend framework choice for web app

Decision: React

Alternatives Considered:
- Vue: ✅ Simpler, ❌ Smaller ecosystem
- Angular: ✅ Enterprise-ready, ❌ Too heavyweight
- Svelte: ✅ Performant, ❌ Hiring difficult

Chosen: React
- ✅ Largest ecosystem (component libraries)
- ✅ Team has React expertise
- ❌ More complex state management

Consequences:
+ Faster development (many ready components)
- More boilerplate than Vue
```

#### 8. Transparent Buffer Strategy

❌ **Wrong:** "30 weeks, definitely"
✅ **Right:** "30 weeks base, 39 weeks recommended (+30% buffer)"

**Why:** Buffer is NOT pessimism, but best practice. Stakeholders prefer "Finish Early" > "Late".

**Example:**
```markdown
## Timeline Estimates

Approach: Bottom-up, per-phase calculation
Realism: Based on similar projects
Buffer: Industry-standard +30%

Base Estimate: 10 weeks (calculated)
Recommended (With Buffer): 13 weeks (~3 months)

Rationale:
- Unknown complexities will emerge
- Buffer is NOT pessimism, but best practice
- Stakeholders prefer "Finish Early" > "Late"
```

#### 9. Handle Team Scaling Explicitly

❌ **Wrong:** "We're now 5 people, but continue as solo"
✅ **Right:** "Team patterns for multi-developer sessions, ADR conflict resolution, async handoffs"

**Why:** Solo patterns DON'T work for teams. Without explicit team coordination: Chaos.

**Example:**
```yaml
# Multi-Developer Session Naming
sessions/
├── 2026-01-31_dev-alice_001.yml  # Alice's session
├── 2026-01-31_dev-bob_001.yml    # Bob's session
└── 2026-01-31_dev-carol_001.yml  # Carol's session

# Handoff Protocol: Next developer explicitly named
handoff:
  next_developer: "bob"
  context_for_bob:
    - "I started auth-system refactor"
    - "See ADR-008 for decision rationale"
    - "Tests are failing, need your help debugging"
```

#### 10. CI/CD as Quality Gate Enforcer

❌ **Wrong:** "We manually check quality gates before merge"
✅ **Right:** "GitHub Actions / GitLab CI checks automatically on every push"

**Why:** Humans forget. CI/CD never forgets. Automation = Consistency.

**Example:**
```yaml
# .github/workflows/quality-gates.yml
name: Quality Gates
on: [push, pull_request]

jobs:
  quality-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      # Session YAML Validation
      - name: Validate Sessions
        run: python scripts/quality/validate-session.py

      # Tests
      - name: Run Tests
        run: pytest

      # Coverage Check (Fail if < 80%)
      - name: Check Coverage
        run: pytest --cov --cov-fail-under=80

      # Linting
      - name: Lint Code
        run: flake8 src/
```

### 2.3 Success Metrics

**How do we measure if Vibe Coding with this guide is successful?**

#### Project-Level Metrics

| Metric | Without Guide (typical) | With Guide (Goal) |
|--------|----------------------|------------------|
| **Project Completion Rate** | 20-30% | >80% |
| **Mid-Course Pivot Rate** | 60-80% | <20% |
| **Context-Loss Incidents** | 5-10 per project | <2 per project |
| **Data-Loss Incidents** | 10-20% projects | <1% projects |
| **Time-to-Implementation** | 2-4 weeks (chaos start) | 1 week (Phase 0) + clean start |
| **Technical Debt** | High (after-the-fact tests) | Low (tests parallel) |

#### Session-Level Metrics

| Metric | Without Guide | With Guide |
|--------|-----------|-----------|
| **Session Start Time** | 15-30 Min (context search) | <5 Min (YAML loading) |
| **Session Productivity** | 40-60% (interruptions) | 70-90% (flow) |
| **Handoff Quality** | Vague notes | Structured (YAML) |
| **Onboarding Time (new members)** | 2-3 weeks | 3-5 days |

#### Team-Level Metrics

| Metric | Without Guide | With Guide |
|--------|-----------|-----------|
| **Team Alignment** | Low (everyone their "vibe") | High (shared ADRs) |
| **Repeated Discussions** | 10-20 per project | <3 per project |
| **Merge Conflict Rate** | 30-50% PRs | <10% PRs |
| **Code Review Time** | 2-5 days | <1 day |

#### Quality-Level Metrics

| Metric | Without Guide | With Guide |
|--------|-----------|-----------|
| **Test Coverage** | 20-40% | >80% |
| **Bug Escape Rate** | High (no quality gates) | Low (gates per phase) |
| **Regression Rate** | 30-50% releases | <10% releases |
| **Production Incidents** | 5-10 per month | <2 per month |

**How to Track Your Metrics:**

```markdown
# QUALITY_METRICS.md

## Project: MyProject
## Start: 2026-01-15
## Current Phase: Phase 5

### Success Metrics (Updated: 2026-01-31)

#### Project-Level:
- [x] Phase 0 completed (1 week)
- [x] IMPLEMENTATION_PLAN.md v2.1 (iterative refinement)
- [ ] Mid-Course Pivot: 0 (Goal: <2)
- [ ] Context-Loss Incidents: 1 (Goal: <2)

#### Quality-Level:
- Test Coverage: 87% (Goal: >80%) ✓
- Bug Escape Rate: 5% (Goal: <10%) ✓
- CI/CD Pipeline: Green (15 consecutive passes)

#### Session-Level:
- Avg Session Start Time: 3 Min (Goal: <5 Min) ✓
- Sessions with complete handoff: 12/12 (100%)
- Team Onboarding Time (last 2 members): 4 days (Goal: <5 days) ✓
```

### 2.4 Common Anti-Patterns

**These patterns lead to failure – avoid them!**

#### Anti-Pattern 1: "Vibe Coding Without a Plan"

**Problem:**
- No clear vision
- Features implemented randomly
- No prioritization
- After 3 weeks: "What are we building?"

**Symptoms:**
- No project-charter.md
- No IMPLEMENTATION_PLAN.md
- Each session has a random goal
- Features half-implemented, then forgotten

**Solution:**
- Phase 0 with project-charter.md
- IMPLEMENTATION_PLAN.md with phase breakdown
- Each session has concrete goal from plan

**Example (Good):**
```markdown
# project-charter.md
Vision: A CLI tool that analyzes Git repos
Success Criteria:
- [ ] Analyzes 100+ repos in <5 Min
- [ ] Exports CSV/JSON
- [ ] 90% user satisfaction

# IMPLEMENTATION_PLAN.md
Phase 1: Core (Week 1) → src/core/analyzer.py (200 LOC)
Phase 2: Export (Week 2) → src/export/csv.py (150 LOC)
...
```

#### Anti-Pattern 2: "Context-Loss During Interruptions"

**Problem:**
- After break: "What did I do last?"
- No handoff information
- Duplicate work
- Inconsistent implementations

**Symptoms:**
- No session tracking
- Notes scattered in Slack/Email
- AI assistant has no persistent state
- Team members constantly ask "What's the status?"

**Solution:**
- Session framework with handoff
- YAML sessions with structured information
- Read last session YAML at session-start

**Example (Good):**
```yaml
# sessions/2026-01-31_session-003.yml
session:
  handoff:
    achieved:
      - Implemented CSV export
      - Added unit tests (90% coverage)
    current_status:
      - CSV works for 50+ repos tested
      - JSON export next
    next_steps:
      - Implement JSON export (similar to CSV)
      - Add integration test with real Git repos
    blockers:
      - None currently
```

#### Anti-Pattern 3: "We'll Write Tests Later"

**Problem:**
- Tests never get written
- Code is untestable (tight coupling)
- Regression bugs frequent
- Refactoring impossible (fear of breaking)

**Symptoms:**
- Coverage <20%
- No tests in deliverables
- "Phase 10: Testing" in plan
- Frequent production incidents

**Solution:**
- Tests parallel to code
- Quality gates per phase (coverage >80%)
- Test-driven or test-alongside development

**Example (Good):**
```markdown
Phase 3: Auth System (Week 3)
Deliverables:
- src/auth/manager.py (200 LOC)
- tests/test_auth.py (180 LOC) ← Parallel!
- tests/test_auth_integration.py (120 LOC)

Quality Gate:
[ ] pytest 0 failures ✓
[ ] Coverage >80% ✓ (92%)
[ ] Auth works for 5 test cases ✓
```

#### Anti-Pattern 4: "Decisions in the Fog"

**Problem:**
- After months: "Why did we do X this way?"
- No documentation of alternatives
- Repeated discussions
- New team members don't understand architecture

**Symptoms:**
- No ADRs
- Architecture decisions only in code comments
- Team constantly asks "Why not Y?"
- Tech stack choice not justified

**Solution:**
- ADR for every important decision
- Document alternatives considered
- ADRs linked with sessions

**Example (Good):**
```markdown
# ADR-003: Why SQLite Instead of PostgreSQL?

Context: Desktop app needs local database

Decision: SQLite

Alternatives Considered:
- PostgreSQL: ✅ Robust, ❌ Requires server (user must install)
- MySQL: ✅ Known, ❌ Also server requirement
- JSON Files: ✅ Simple, ❌ No transactions, poor performance

Chosen: SQLite
- ✅ Embedded (no installation)
- ✅ Zero-config
- ✅ Transactions
- ❌ Not for multi-user (acceptable for desktop app)

Consequences:
+ Simple deployment
+ No server dependencies
- Migration to PostgreSQL later harder (accepted)
```

#### Anti-Pattern 5: "One Backup Is Enough"

**Problem:**
- Single point of failure
- Hard drive crash → project lost
- Git without remote → no backup
- Session state not backed up

**Symptoms:**
- Only Git (no remote)
- Or: Only local backups (no cloud)
- No backup automation
- Restore never tested

**Solution:**
- 5-layer backup system
- Regular restore tests
- Automation via session-end.sh

**Example (Good):**
```bash
# Automatic Backup System

Layer 1: Git Version Control
→ git push origin main (at session-end)

Layer 2: Local Timestamped Backups
→ rsync -a --link-dest=latest project/ backups/2026-01-31_14-30/

Layer 3: Cloud Backup
→ rclone sync project/ s3:my-bucket/project-backups/

Layer 4: STATUS_TRACKING.md
→ Human-readable recovery guide

Layer 5: Portable Package
→ tar.gz for archive (at milestones)
```

#### Anti-Pattern 6: "Using Solo Patterns for Teams"

**Problem:**
- Team grows from 1 → 5 people
- But: Workflows remain solo-focused
- No team coordination
- Merge conflicts, duplicate work

**Symptoms:**
- Sessions without developer name
- No explicit handoff to colleagues
- ADRs decided individually
- No team retrospectives

**Solution:**
- Team patterns for multi-developer sessions
- ADR conflict resolution (when 2+ proposals)
- Async handoffs across time zones

**Example (Good):**
```yaml
# sessions/2026-01-31_dev-alice_002.yml
session:
  operator:
    type: "human"
    identity: "alice@company.com"
  handoff:
    next_developer: "bob@company.com"
    context_for_next:
      - "Started feature-X, see branch feature/X"
      - "Tests failing, need help debugging auth issue"
      - "See ADR-009 for decision rationale"
    blockers:
      - "Need Bob's review on PR #42"
```

#### Anti-Pattern 7: "No CI/CD → Manual Quality Checks"

**Problem:**
- Quality gates are forgotten
- Inconsistent enforcement
- Human errors
- Code with bugs merged

**Symptoms:**
- No CI/CD pipeline
- "Please check tests before merge" → gets forgotten
- Coverage continuously drops
- Production bugs frequent

**Solution:**
- CI/CD with automatic quality gates
- Pre-merge checks (GitHub Actions / GitLab CI)
- Coverage enforcement (fail if <80%)

**Example (Good):**
```yaml
# .github/workflows/pr-quality-gates.yml
name: PR Quality Gates
on: pull_request

jobs:
  quality:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Tests
        run: pytest --cov --cov-fail-under=80
      - name: Lint
        run: flake8 src/
      - name: Type Check
        run: mypy src/
      - name: Validate Sessions
        run: python scripts/quality/validate-session.py

# → Merge only possible when all checks green
```

---

## 3. Scaling Guide

**A guide that DOESN'T scale is useless.**

This chapter shows how to adapt the 6-phase methodology to your project size, team size, and project type.

### 3.1 Scaling by Project Size

#### Micro Projects (1-2 Weeks)

**Characteristics:**
- Solo developer or pair
- Clear, limited scope
- Proof-of-concept or small tool
- 500-2000 LOC

**Application Examples:**
- CLI tool for local file processing
- Landing page for event
- Automation script for workflow
- Quick prototype for idea validation

**Simplifications:**

| Phase | Standard | Micro Version |
|-------|----------|---------------|
| **Phase 0** | 1 week | **1 day** |
| | project-charter.md (2 pages) | project-charter.md (1 page, only Vision + Success Criteria) |
| | tech-stack.md (with alternatives) | tech-stack.md (only Chosen, no alternatives) |
| | 10-20 test data | 3-5 test data |
| | ADR-001 (Architecture) | Optional (only for critical decision) |
| **Phase 1** | 2-5 days | **Half day** |
| | IMPLEMENTATION_PLAN.md (10 phases) | Combine with project-charter.md (3 phases) |
| | Detailed LOC estimates | Rough estimates (Small/Medium/Large) |
| **Phase 2** | YAML sessions (complete) | Simplified YAML sessions (5 fields) |
| **Phase 3** | 5-layer backup | 2-layer (Git + 1 cloud backup) |
| **Phase 4** | ADRs for all decisions | Only for critical architecture decisions |
| **Phase 5** | Quality gates per phase | Basic linting + manual tests |
| **Phase 6** | Retrospective per session | Optional (only for problems) |

**Example:** CLI Tool in Go (1 Week)

```markdown
# project-charter.md (Micro Version)

## Vision
A CLI tool that scans Git repos for TODOs and exports CSV

## Success Criteria
- [ ] Scans 100+ repos in <1 Min
- [ ] Exports CSV with TODO list
- [ ] Works on Mac/Linux/Windows

## Out-of-Scope (v1.0)
- ❌ No GUI
- ❌ No GitHub API integration
- ❌ No config file (only CLI flags)

## Timeline
- Base: 4 days
- With Buffer (+30%): 5-6 days

## Tech Stack
- Language: Go (fast, cross-platform)
- Libraries: cobra (CLI), filepath (file traversal)

## Implementation Phases
Phase 1 (Day 1-2): Core Scanner
Phase 2 (Day 3): CSV Export
Phase 3 (Day 4): Testing & Polish

## Quality Gates
- go test passes
- Works for 3 test repos
- README with installation instructions
```

**Session Lifecycle (Simplified):**

```bash
# Session Start (simplified)
echo "Starting session: $(date)" >> .sessions.log
git status  # Quick check

# [WORK]

# Session End (simplified)
echo "Ending session: $(date)" >> .sessions.log
echo "Achieved: Implemented CSV export" >> .sessions.log
git add . && git commit -m "Implement CSV export"
git push
rclone sync . s3:my-bucket/todo-scanner/  # Cloud backup
```

---

#### Small Projects (2-6 Weeks)

**Characteristics:**
- Solo or 2-3 developers
- Clearly defined scope
- MVP or small product feature
- 2,000-10,000 LOC

**Application Examples:**
- Web dashboard for analytics
- Mobile app MVP (React Native)
- REST API with 10-20 endpoints
- Desktop utility with UI

**Standard Vibe Coding (as described in guide):**

| Phase | Recommendation |
|-------|------------|
| **Phase 0** | **3-5 days** (full depth) |
| **Phase 1** | **2-5 days** (IMPLEMENTATION_PLAN.md with 3-6 phases) |
| **Phase 2** | **Full YAML sessions** with handoff |
| **Phase 3** | **3-layer backup** (Git + local backups + cloud) |
| **Phase 4** | **ADRs for important decisions** (~3-5 total) |
| **Phase 5** | **Automated quality gates** per phase |
| **Phase 6** | **Retrospective** per session (5 Min) |

**Example:** Web Dashboard with Next.js (4 Weeks)

```markdown
# project-charter.md

## Vision
A web dashboard that visualizes GitHub repo statistics

## Success Criteria
- [ ] Shows commits, issues, PRs for 10+ repos
- [ ] Responsive design (desktop + mobile)
- [ ] Loads in <2 seconds
- [ ] 90% Lighthouse score

## Out-of-Scope (v1.0)
- ❌ No multi-user auth (v2.0)
- ❌ No real-time updates (v2.0)
- ❌ No custom dashboards (v2.0)

## Timeline
- Base Estimate: 4 weeks (28 days)
- With Buffer (+30%): 5-6 weeks (~6 weeks = 42 days)

## Tech Stack
- Frontend: Next.js 14, React, Tailwind CSS
- Backend: Next.js API Routes
- Database: SQLite (embedded)
- Deployment: Vercel

# IMPLEMENTATION_PLAN.md

Phase 1: Foundation (Week 1)
├── Project setup (Next.js, Tailwind)
├── Database schema (SQLite)
└── GitHub API integration

Phase 2: Core Features (Week 2)
├── Repo stats fetching
├── Data visualization (charts)
└── Responsive layout

Phase 3: Polish (Week 3)
├── Performance optimization
├── Error handling
└── Unit + integration tests

Phase 4: Deployment (Week 4)
├── Vercel deployment
├── Production testing
└── Documentation
```

**Session Management (Standard):**

```yaml
# sessions/2026-01-31_session-005.yml
session:
  id: "2026-01-31_session-005"
  start_time: "2026-01-31T14:00:00Z"
  end_time: "2026-01-31T16:30:00Z"
  duration_minutes: 150
  context:
    type: "implementation"
    phase: "Phase 2: Core Features"
    goal: "Implement GitHub API integration"
  handoff:
    state: "completed"
    achieved:
      - "GitHub API OAuth flow working"
      - "Fetch repo stats (commits, issues, PRs)"
      - "Unit tests (85% coverage)"
    next_steps:
      - "Implement data visualization"
      - "Add caching layer (reduce API calls)"
    blockers: []
  metrics:
    commits: 8
    lines_added: 450
    lines_removed: 120
git:
  branch: "feature/github-api"
  commit_hash: "a3f7d92"
  uncommitted_changes: false
```

---

#### Medium Projects (2-4 Months)

**Characteristics:**
- 2-5 developers (or more)
- More complex architecture (microservices, multi-layer)
- Product with multiple features
- 10,000-50,000 LOC

**Application Examples:**
- SaaS platform MVP
- E-commerce website
- Mobile app with backend
- Data processing pipeline

**Enhancements Over "Small":**

| Phase | Small (2-6 Weeks) | Medium (2-4 Months) |
|-------|-------------------|---------------------|
| **Phase 0** | 3-5 days | **1-2 weeks** (deeper risk analysis) |
| **Phase 1** | 2-5 days | **1 week** (10-15 phases, milestone planning) |
| **Phase 2** | YAML sessions | YAML + **Team session patterns** (multi-developer) |
| **Phase 3** | 3-layer backup | **4-layer backup** (+ disaster recovery drills) |
| **Phase 4** | ~3-5 ADRs | **~10-15 ADRs** (more architecture decisions) |
| **Phase 5** | Basic CI/CD | **Full CI/CD pipeline** (GitHub Actions / GitLab) |
| **Phase 6** | Retrospective per session | **Sprint retrospectives** (every 2 weeks) |

**Additional Practices:**

1. **Milestone Planning:**
   ```markdown
   Milestone 1 (Week 4): Core Backend
   Milestone 2 (Week 8): Frontend MVP
   Milestone 3 (Week 12): Beta Release
   ```

2. **Team Coordination:**
   - Weekly team sync (1h)
   - ADR review meetings (30 Min for new ADRs)
   - Pair/mob programming for critical features

3. **CI/CD Integration:**
   ```yaml
   # .github/workflows/ci.yml
   on: [push, pull_request]
   jobs:
     backend-tests:
       runs-on: ubuntu-latest
       steps:
         - run: pytest backend/
         - run: pytest --cov --cov-fail-under=80
     frontend-tests:
       runs-on: ubuntu-latest
       steps:
         - run: npm test
         - run: npm run lint
   ```

4. **Quality Metrics Dashboard:**
   ```markdown
   # QUALITY_METRICS.md (auto-generated by CI/CD)

   ## Current Phase: Phase 7 (Week 7)

   ### Code Quality
   - Test Coverage: 84% (Target: >80%) ✓
   - Linting Errors: 0
   - Type Errors: 0

   ### Performance
   - Backend Response Time (P95): 120ms (Target: <200ms) ✓
   - Frontend Load Time: 1.8s (Target: <2s) ✓

   ### Team Metrics
   - Open PRs: 3
   - Avg PR Review Time: 18h (Target: <24h) ✓
   - ADRs Created: 12
   ```

**Example:** SaaS Platform MVP (3 Months)

```markdown
# project-charter.md

## Vision
A SaaS platform for team collaboration with AI assistance

## Success Criteria
- [ ] Multi-user auth with teams
- [ ] Real-time collaboration (WebSockets)
- [ ] AI chat integration (Claude/GPT)
- [ ] Payment integration (Stripe)
- [ ] 99% uptime (monitored)

## Timeline
- Base: 10 weeks
- With Buffer (+30%): 13 weeks (~3 months)

## Tech Stack
- Frontend: Next.js, React, Tailwind, Zustand
- Backend: Node.js, Fastify, Prisma, PostgreSQL
- Infrastructure: AWS (EC2, RDS, S3), Docker, Kubernetes
- AI: Anthropic API (Claude), OpenAI API

# IMPLEMENTATION_PLAN.md

Phase 1: Infrastructure (Week 1)
Phase 2: Auth & Teams (Week 2-3)
Phase 3: Real-time Collab (Week 4-5)
Phase 4: AI Integration (Week 6-7)
Phase 5: Payment (Week 8)
Phase 6: Testing & Optimization (Week 9)
Phase 7: Beta Deployment (Week 10)
```

---

#### Large Projects (4-6+ Months)

**Characteristics:**
- 5-20+ developers (multiple teams/squads)
- Enterprise-grade architecture
- Multi-product or platform
- 50,000-200,000+ LOC
- Compliance requirements (GDPR, HIPAA, SOC2)

**Application Examples:**
- Enterprise SaaS platform
- Multi-tenant microservices architecture
- Fintech application (regulated)
- Healthcare platform (HIPAA)

**Enterprise Enhancements:**

| Aspect | Medium (2-4 Months) | Large (4-6+ Months) |
|--------|---------------------|-------------------|
| **Phase 0** | 1-2 weeks | **2-3 weeks** (incl. prototyping phase) |
| **Planning** | 10-15 phases | **Quarterly planning** (OKRs, roadmaps) |
| **Team Structure** | 2-5 developers | **Multi-squad** (5-10 squads, 3-5 developers each) |
| **ADRs** | ~10-15 | **20-50+ ADRs** (Architecture Review Board) |
| **CI/CD** | Complete | **Enterprise CI/CD** (multi-environment, canary, blue-green) |
| **Backup** | 4-layer | **5-layer + DR drills** (weekly/monthly) |
| **Compliance** | Optional | **Mandatory** (GDPR, HIPAA, SOC2 checklists) |
| **Security** | Basic | **Security audits, pentesting, SAST/DAST** |

**Additional Enterprise Practices:**

1. **Architecture Review Board (ARB):**
   - ADRs must be approved by ARB (2-3 senior architects)
   - Bi-weekly ARB meetings
   - Critical ADRs require majority vote

2. **Multi-Squad Coordination:**
   ```markdown
   # Team Structure

   Squad 1: Frontend (5 developers)
   ├── Lead: Alice
   └── Focus: Web UI, Mobile UI

   Squad 2: Backend (5 developers)
   ├── Lead: Bob
   └── Focus: APIs, Microservices

   Squad 3: Platform (4 developers)
   ├── Lead: Carol
   └── Focus: Infrastructure, DevOps, Monitoring

   Cross-Squad Rituals:
   - Weekly all-hands (1h)
   - Monthly retros (2h)
   - Quarterly planning (1 day)
   ```

3. **Compliance Integration:**
   ```markdown
   # ADR-025: GDPR Data Retention Policy

   Context: EU user data must be managed per GDPR

   Decision:
   - User data deletion after 30 days (upon request)
   - Logs anonymized after 90 days
   - Backups encrypted (AES-256)

   Consequences:
   + GDPR compliant
   - More implementation effort (2 weeks)

   Verification:
   [ ] GDPR checklist completed
   [ ] External audit passed
   ```

4. **Disaster Recovery (DR) Drills:**
   ```bash
   # Monthly DR Drill

   # 1. Simulate disaster (database crash)
   kubectl delete pod postgres-0

   # 2. Restore from backup (Layer 4: Cloud)
   ./scripts/restore-from-s3.sh 2026-01-31_12-00

   # 3. Verify data integrity
   ./scripts/verify-db-checksums.sh

   # 4. Measure RTO/RPO
   Recovery Time Objective (RTO): 15 minutes (Target: <30 Min) ✓
   Recovery Point Objective (RPO): 0 data loss (Target: <1h) ✓

   # 5. Document lessons learned
   → Update RUNBOOK.md
   ```

**Example:** Enterprise SaaS Platform (6 Months)

```markdown
# project-charter.md (Enterprise Version)

## Vision
A multi-tenant SaaS platform for enterprise collaboration

## Success Criteria
- [ ] 10,000+ concurrent users
- [ ] 99.95% uptime SLA
- [ ] SOC2 Type II compliant
- [ ] <200ms response time (P95)
- [ ] Multi-region deployment (US, EU, APAC)

## Timeline
- Base: 20 weeks
- With Buffer (+30%): 26 weeks (~6 months)

## Tech Stack
- Frontend: Next.js, React, Zustand, Tailwind
- Backend: Go (gRPC), Node.js (REST APIs)
- Database: PostgreSQL (Citus for sharding), Redis (caching)
- Infrastructure: AWS, Kubernetes, Terraform, ArgoCD
- Monitoring: Prometheus, Grafana, Datadog
- Security: Vault (secrets), WAF, SIEM

## Quarterly Roadmap

Q1 (Month 1-3):
- MVP core features (auth, teams, collab)
- Infrastructure setup (K8s, multi-region)
- Security baseline (OWASP Top 10)

Q2 (Month 4-6):
- Advanced features (AI, analytics)
- SOC2 compliance (audits, policies)
- Performance optimization (caching, CDN)
```

---

### 3.2 Scaling by Team Size

#### Solo Developer (1 Person)

**Simplifications:**
- No team coordination needed
- Session YAML without `operator.identity` (optional)
- ADRs for your own future self (not for team review)
- Faster decisions (no alignment)

**Recommended Practices:**
- ✅ YAML sessions (for own continuity)
- ✅ ADRs (for "Why did I do it this way?")
- ✅ Backup system (5-layer, fully automated)
- ✅ Quality gates (self-enforced)
- ⚠️ Team patterns: Skip (not relevant)

**Session Workflow:**

```bash
# Morning: Start session
./session-start.sh implementation "Implement feature X"

# [2-4 hours work with AI assistant]

# Afternoon: End session
./session-end.sh
→ Handoff for my future self:
  "Achieved: Feature X 80% done
   Next: Add tests, then deploy"

# Automatic backup
→ Git push
→ rclone sync to S3
```

**Typical Daily Routine:**

```
09:00 - session-start.sh
       ├── Read last session YAML
       └── Goal: Implement OAuth flow

09:05-12:00 - Development with Claude
       ├── Implement OAuth
       ├── Write tests parallel
       └── Quick manual testing

12:00 - session-end.sh
       ├── Handoff: "OAuth 90% done, missing refresh tokens"
       ├── Git commit + push
       └── Backup to S3

14:00 - session-start.sh
       └── Goal: Finish OAuth + Add integration tests

14:05-17:00 - Development

17:00 - session-end.sh
       ├── Handoff: "OAuth complete, 92% coverage, deployed to staging"
       ├── ADR-007 created: "Why OAuth2 not SAML"
       └── Backup to S3
```

---

#### Small Teams (2-5 People)

**New Challenges:**
- Who's working on what? (Coordination)
- How do I hand off to colleagues? (Handoff)
- How do we synchronize context? (Shared docs)
- How do we review AI-generated code? (Code review)

**Recommended Practices:**
- ✅ Multi-developer session naming (`dev-alice_001.yml`)
- ✅ Explicit handoffs (`next_developer: "bob"`)
- ✅ Team ADRs (with discussion phase)
- ✅ Code review for AI code (like for human code)
- ✅ Weekly team sync (30 Min)

**Session Naming Convention:**

```
sessions/
├── 2026-01-31_dev-alice_001.yml  # Alice's morning session
├── 2026-01-31_dev-alice_002.yml  # Alice's afternoon session
├── 2026-01-31_dev-bob_001.yml    # Bob's session
└── 2026-01-31_dev-carol_001.yml  # Carol's session
```

**Handoff Protocol (Explicit):**

```yaml
# sessions/2026-01-31_dev-alice_002.yml
session:
  operator:
    type: "human"
    identity: "alice@company.com"
  handoff:
    state: "in_progress"
    next_developer: "bob@company.com"
    context_for_next:
      - "Started auth-system refactor on branch feature/auth-v2"
      - "See ADR-008 for decision rationale (OAuth2 not SAML)"
      - "Tests failing: test_refresh_token() needs debugging"
      - "PR #42 ready for your review"
    blockers:
      - "Need Bob's review on PR #42 before I can merge"
      - "API credentials for testing (ask ops team)"
```

**Team ADR Workflow (with Discussion Phase):**

```markdown
# ADR-009: Database Migration Strategy

Status: 🟠 Under Discussion (Conflicting Proposals)

Proposed by: Alice
Date: 2026-01-31
Deciders: Alice, Bob, Carol

## Context
Current migration approach (simple SQL runner) doesn't scale to multi-environment (dev, staging, prod).
Need better migration management.

## Proposed Decision
Use Prisma Migrate

## Conflicting Proposal (Bob)
Use Flyway

## Discussion Thread
- Alice: "Prisma Migrate integrates with our ORM"
- Bob: "Flyway more mature, better rollback support"
- Carol: "Prisma simpler, less overhead"

## Team Vote (2026-02-01)
- Alice: Prisma ✓
- Bob: Flyway
- Carol: Prisma ✓

→ Majority: Prisma Migrate

Status: 🟢 Accepted (2026-02-01)
```

**Code Review for AI Code:**

Treat AI-generated code EXACTLY like human code:

```markdown
# PR #42: Implement OAuth2 Flow (by Alice + Claude)

## Description
Implements OAuth2 authorization code flow with refresh tokens.
Generated with Claude Sonnet 4.5.

## Checklist (Reviewer: Bob)
- [x] Code functional (tested locally)
- [x] Tests comprehensive (92% coverage)
- [x] Security: No hardcoded secrets ✓
- [x] Performance: <100ms response time ✓
- [ ] LGTM pending: Minor refactor in auth_manager.py L45

## Review Comments
Bob: "Line 45: Extract magic number 3600 (token expiry) to constant"
Alice: "Fixed in commit a3f7d92"
Bob: "LGTM, approved ✓"
```

**Weekly Team Sync (Agenda):**

```markdown
# Weekly Team Sync - 2026-01-31

## Attendees
Alice, Bob, Carol

## Agenda (30 Min)

1. **Last Week Achievements** (5 Min)
   - Alice: OAuth2 flow complete
   - Bob: Database migration system
   - Carol: Frontend refactor (90% done)

2. **Current Week Goals** (5 Min)
   - Alice: Payment integration
   - Bob: API performance optimization
   - Carol: Finish frontend, start mobile

3. **Blockers & Help Needed** (10 Min)
   - Alice: Need API credentials (Carol to request from ops)
   - Bob: Performance bottleneck in query X (Alice to pair-program)
   - Carol: None

4. **ADRs & Decisions** (5 Min)
   - ADR-009 approved (Prisma Migrate)
   - ADR-010 proposed (Deployment strategy) → discuss next week

5. **Process Improvements** (5 Min)
   - Bob: "Can we automate session YAML validation?"
   - → Action: Bob creates validate-session.py script
```

---

#### Medium Teams (5-15 People)

**Squad-Based Organization:**

```
Team (15 people)
├── Squad 1: Frontend (5 developers)
│   ├── Lead: Alice
│   └── Sessions: sessions/squad-frontend/
├── Squad 2: Backend (5 developers)
│   ├── Lead: Bob
│   └── Sessions: sessions/squad-backend/
└── Squad 3: Platform (5 developers)
    ├── Lead: Carol
    └── Sessions: sessions/squad-platform/
```

**Session Organization Per Squad:**

```
sessions/
├── squad-frontend/
│   ├── 2026-01-31_dev-alice_001.yml
│   ├── 2026-01-31_dev-dave_001.yml
│   └── SQUAD_CONTEXT.md  # Shared context for squad
├── squad-backend/
│   ├── 2026-01-31_dev-bob_001.yml
│   └── SQUAD_CONTEXT.md
└── squad-platform/
    ├── 2026-01-31_dev-carol_001.yml
    └── SQUAD_CONTEXT.md
```

**Cross-Squad ADRs (Architecture Level):**

```markdown
# ADR-015: API Gateway Strategy

Status: 🔵 Proposed
Scope: Cross-Squad (Frontend, Backend, Platform)
Proposed by: Platform Squad
Deciders: Alice (Frontend Lead), Bob (Backend Lead), Carol (Platform Lead)

## Context
Currently: Each service has direct external exposure
Problem: No centralized auth, rate-limiting, monitoring

## Proposed Decision
Introduce API Gateway (Kong) managed by Platform Squad

## Impact Analysis

### Frontend Squad (Alice):
- ✅ Simplified auth (gateway handles)
- ❌ Need to update API endpoints (1 day work)
- Vote: Approve ✓

### Backend Squad (Bob):
- ✅ Centralized rate-limiting
- ❌ Additional network hop (latency concern)
- Vote: Approve with conditions (latency <10ms) ✓

### Platform Squad (Carol):
- ✅ We manage gateway (our responsibility)
- ❌ More infrastructure to maintain
- Vote: Approve ✓

## Decision
🟢 Accepted (2026-02-05) - All squads approved
Implementation: Platform Squad (Week 7-8)
```

**Onboarding New Developers:**

```markdown
# Onboarding Checklist - New Developer: Eve

## Day 1: Setup & Context (4h)
- [ ] Read PROJECT_FOCUS.md (30 Min)
- [ ] Read last 5 ADRs (30 Min)
- [ ] Setup dev environment (scripts/setup-dev.sh) (1h)
- [ ] Run app locally (1h)
- [ ] Join team Slack channels
- [ ] Intro meeting with Squad Lead (Alice) (30 Min)

## Day 2: First Session (4h)
- [ ] Pair-program with Alice (2h)
  - Run session-start.sh together
  - Implement small bug fix
  - Run session-end.sh
- [ ] Solo: Fix another small bug (2h)
  - Create your first session YAML
  - Create PR

## Day 3-5: First Real Feature (3 days)
- [ ] Implement feature from backlog (with Alice's guidance)
- [ ] Write ADR if architectural decision needed
- [ ] Code review from 2 squad members
- [ ] Deploy to staging

## Week 2: Autonomous
- [ ] Eve works autonomously
- [ ] Weekly sync with squad
- [ ] Onboarding complete ✓
```

---

#### Large Teams (15+ People)

**Multi-Squad with Governance:**

```
Organization (30 people)
├── Squad 1-5: Product Squads (5 people each)
│   └── Focus: Features
├── Platform Squad (5 people)
│   └── Focus: Infrastructure, DevOps
└── Architecture Review Board (ARB)
    ├── 3 Senior Architects
    └── Reviews: Critical ADRs, tech stack decisions
```

**Governance Structure:**

```markdown
# ADR Approval Process (Enterprise)

## Levels

### Level 1: Squad-Internal ADRs
- Scope: Only affects one squad
- Approval: Squad Lead
- Examples: Component design, local refactoring

### Level 2: Cross-Squad ADRs
- Scope: Affects 2+ squads
- Approval: Affected Squad Leads (Majority Vote)
- Examples: API contracts, shared libraries

### Level 3: Architecture ADRs
- Scope: Platform-wide impact
- Approval: Architecture Review Board (ARB)
- Examples: Database choice, deployment strategy, auth system

## ARB Meeting Schedule
- Bi-weekly (every 2 weeks)
- Duration: 2h
- Agenda: Review Level 3 ADRs

## ARB Composition
- Alice (Frontend Architect)
- Bob (Backend Architect)
- Carol (Platform Architect)
```

**Session Coordination (Enterprise Scale):**

```
sessions/
├── squad-frontend-web/
│   └── [sessions]
├── squad-frontend-mobile/
│   └── [sessions]
├── squad-backend-api/
│   └── [sessions]
├── squad-backend-data/
│   └── [sessions]
├── squad-platform-infra/
│   └── [sessions]
├── squad-platform-monitoring/
│   └── [sessions]
└── TEAM_DASHBOARD.md  # Auto-generated: Squad Status Overview
```

**Team Dashboard (Auto-Generated):**

```markdown
# Team Dashboard - Last Updated: 2026-01-31 18:00

## Squad Status

| Squad | Current Sprint | Active Sessions | Blockers | Health |
|-------|----------------|----------------|----------|--------|
| Frontend-Web | Sprint 12 | 3 | 0 | 🟢 Green |
| Frontend-Mobile | Sprint 12 | 2 | 1 (API issue) | 🟡 Yellow |
| Backend-API | Sprint 12 | 4 | 0 | 🟢 Green |
| Backend-Data | Sprint 12 | 3 | 2 (performance) | 🔴 Red |
| Platform-Infra | Sprint 12 | 2 | 0 | 🟢 Green |
| Platform-Monitoring | Sprint 12 | 1 | 0 | 🟢 Green |

## Recent ADRs (Last 7 Days)
- ADR-042: Migrate to gRPC (Backend-API) - 🟢 Approved
- ADR-043: Multi-region deployment (Platform-Infra) - 🔵 Under Review
- ADR-044: GraphQL federation (Backend-API, Frontend-Web) - 🟠 Discussion

## Cross-Squad Dependencies
- Frontend-Mobile blocked by Backend-API (ADR-042 implementation)
  - Expected resolution: Week 8
- Backend-Data performance issue affecting all squads
  - Incident: INC-234
  - Owner: Bob (Backend-Data Lead)
  - ETA: 2026-02-03
```

---

### 3.3 Scaling by Project Type

#### Web Applications

**Stack Examples:**
- **Frontend:** React, Vue, Angular, Svelte, Next.js, Remix
- **Backend:** Node.js, Django, Spring Boot, Laravel, Ruby on Rails
- **Database:** PostgreSQL, MySQL, MongoDB

**Special Considerations:**

1. **Performance Budgets:**
   ```markdown
   ## Quality Gates - Web-App-Specific

   - [ ] Lighthouse Score >90
   - [ ] First Contentful Paint (FCP) <1.8s
   - [ ] Largest Contentful Paint (LCP) <2.5s
   - [ ] Time to Interactive (TTI) <3.8s
   - [ ] Cumulative Layout Shift (CLS) <0.1
   ```

2. **CI/CD Pipeline (Web-Specific):**
   ```yaml
   # .github/workflows/web-ci.yml
   jobs:
     lighthouse:
       runs-on: ubuntu-latest
       steps:
         - name: Run Lighthouse CI
           run: |
             npm install -g @lhci/cli
             lhci autorun --config=./lighthouserc.json
         - name: Check Performance Budget
           run: lhci assert --preset lighthouse:recommended
   ```

3. **Deployment Strategies:**
   ```markdown
   # ADR-020: Deployment Strategy (Web App)

   Decision: Vercel (Frontend) + Railway (Backend)

   Alternatives:
   - AWS (EC2 + RDS): ✅ Flexible, ❌ High complexity
   - Heroku: ✅ Simple, ❌ Expensive at scale
   - Netlify + Supabase: ✅ Good DX, ❌ Lock-in

   Chosen: Vercel + Railway
   - ✅ Excellent DX (git push = deploy)
   - ✅ Auto-scaling
   - ✅ Reasonable pricing
   - ❌ Vendor lock-in (mitigated: containerized backend)
   ```

---

#### Mobile Applications

**Stack Examples:**
- **Cross-Platform:** React Native, Flutter
- **Native:** Swift (iOS), Kotlin (Android)

**Special Considerations:**

1. **App Size Budgets:**
   ```markdown
   ## Quality Gates - Mobile-App-Specific

   - [ ] APK/IPA Size <50 MB (without assets)
   - [ ] APK/IPA Size <100 MB (with assets)
   - [ ] Cold Start Time <2s
   - [ ] Warm Start Time <1s
   - [ ] Battery Usage <5% per hour (idle)
   - [ ] Memory Usage <100 MB (typical)
   ```

2. **Platform-Specific Testing:**
   ```bash
   # CI/CD for Mobile (Fastlane)

   # iOS
   fastlane ios test
   fastlane ios beta  # TestFlight

   # Android
   fastlane android test
   fastlane android beta  # Play Store Internal Testing
   ```

3. **Deployment Pipeline:**
   ```markdown
   # ADR-025: Mobile CI/CD Strategy

   Decision: GitHub Actions + Fastlane + App Center

   Workflow:
   1. Push to main → Run tests
   2. Tag release → Build app
   3. Upload to App Center (beta)
   4. Manual approval → Submit to stores
   ```

---

#### CLI Tools

**Stack Examples:**
- Go (Cobra), Rust (Clap), Python (Click), Node.js (Commander)

**Special Considerations:**

1. **Binary Size Budgets:**
   ```markdown
   ## Quality Gates - CLI-Tool-Specific

   - [ ] Binary Size <10 MB (Go/Rust)
   - [ ] Binary Size <50 MB (Node.js with pkg)
   - [ ] Cold Start Time <100ms
   - [ ] Cross-Platform (Linux, Mac, Windows)
   - [ ] No Runtime Dependencies (static binary preferred)
   ```

2. **Distribution:**
   ```markdown
   # ADR-030: CLI Distribution Strategy

   Decision: Homebrew (Mac), Scoop (Windows), apt/yum (Linux)

   Installation:
   ```bash
   # Mac
   brew install my-cli-tool

   # Windows
   scoop install my-cli-tool

   # Linux
   sudo apt install my-cli-tool
   ```

   Alternatives:
   - npm install -g: ✅ Simple, ❌ Requires Node.js runtime
   - Manual binary download: ✅ No dependencies, ❌ Poor UX
   - Chosen: Package managers ✓
   ```

3. **Testing:**
   ```bash
   # Integration tests for CLI

   # Test help command
   ./my-cli-tool --help | grep "Usage:"

   # Test actual functionality
   ./my-cli-tool scan ./test-repo | grep "10 TODOs found"

   # Test error handling
   ./my-cli-tool scan ./nonexistent && exit 1 || echo "Error handled"
   ```

---

#### Microservices

**Stack Examples:**
- Go (gRPC), Node.js (REST), Java (Spring Cloud)

**Special Considerations:**

1. **Service-Level Quality Gates:**
   ```markdown
   ## Quality Gates - Microservice-Specific

   Per Service:
   - [ ] Unit Tests >80% coverage
   - [ ] Integration Tests (with test containers)
   - [ ] Contract Tests (Pact)
   - [ ] Response Time P95 <200ms
   - [ ] Throughput >1000 req/s
   - [ ] Error Rate <0.1%
   ```

2. **Inter-Service Communication:**
   ```markdown
   # ADR-035: Service Communication Pattern

   Decision: gRPC for sync, RabbitMQ for async

   Sync (Request-Response):
   - Use gRPC (Protocol Buffers)
   - Timeout: 5s default
   - Retry: 3x with exponential backoff

   Async (Event-Driven):
   - Use RabbitMQ
   - Dead Letter Queue (DLQ) for failures
   - Idempotent consumers
   ```

3. **Deployment (Kubernetes):**
   ```yaml
   # k8s/deployment.yml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: my-service
   spec:
     replicas: 3
     selector:
       matchLabels:
         app: my-service
     template:
       spec:
         containers:
         - name: my-service
           image: my-service:v1.2.3
           resources:
             requests:
               memory: "128Mi"
               cpu: "250m"
             limits:
               memory: "512Mi"
               cpu: "1000m"
           livenessProbe:
             httpGet:
               path: /health
               port: 8080
             initialDelaySeconds: 10
             periodSeconds: 5
   ```

---

### 3.4 Decision Matrix: What to Include/Omit?

**Quick Reference Table:**

| Aspect | Micro (1-2w) | Small (2-6w) | Medium (2-4m) | Large (4-6m+) |
|--------|--------------|--------------|---------------|--------------|
| **Phase 0 Duration** | 1 day | 3-5 days | 1-2 weeks | 2-3 weeks |
| **project-charter.md** | 1 page | 2 pages | 3-5 pages | 5-10 pages |
| **tech-stack.md** | Chosen only | + Rejected | + Detailed rationale | + ARB approval |
| **Test Data** | 3-5 samples | 10-20 samples | 20-50 samples | 50-100 samples |
| **Total ADRs** | 0-2 | 3-5 | 10-15 | 20-50+ |
| **Session YAML** | Simplified (5 fields) | Complete | + Team fields | + Squad context |
| **Backup Layers** | 2 (Git + Cloud) | 3 (+ Local) | 4 (+ DR drills) | 5 (+ Portable) |
| **CI/CD** | Optional | Basic (tests + lint) | Full (+ coverage) | Enterprise (+ multi-env) |
| **Quality Gates** | Manual | Automated basic | Automated full | + Platform-specific |
| **Team Patterns** | Skip | Basic (2-5 dev) | Squad-based (5-15) | Multi-squad (15+) |
| **Retrospectives** | Optional | Per session (5 Min) | Sprint retros (2w) | + Monthly all-hands |
| **Compliance** | Skip | Optional | If needed | Mandatory (GDPR etc) |

**Decision Tree:**

```
Start Here: What is your project?
│
├─ Duration?
│  ├─ <2 weeks → MICRO
│  ├─ 2-6 weeks → SMALL
│  ├─ 2-4 months → MEDIUM
│  └─ 4-6+ months → LARGE
│
├─ Team Size?
│  ├─ 1 person → Solo patterns
│  ├─ 2-5 people → Basic team patterns
│  ├─ 5-15 people → Squad-based
│  └─ 15+ people → Multi-squad + ARB
│
├─ Project Type?
│  ├─ Web → Performance budgets (Lighthouse)
│  ├─ Mobile → App size + battery budgets
│  ├─ CLI → Binary size + cold-start time
│  ├─ Microservices → Service-level agreements
│  └─ Desktop → Platform-specific (macOS/Windows/Linux)
│
└─ Compliance Requirements?
   ├─ None → Standard process
   ├─ GDPR → + Data retention policy
   ├─ HIPAA → + Healthcare compliance
   └─ SOC2 → + Security audits
```

---

**End of Part I: Fundamentals**

You now have:
- ✅ Understood why Vibe Coding fails without structure
- ✅ Learned the 6-phase methodology and 10 core principles
- ✅ Learned how to adapt the methodology to your project size, team size, and project type

**Next Step:** [Part II: The 6-Phase Architecture](#part-ii-the-6-phase-architecture) (detailed implementation of each phase)

**Or:** [Quick Start Guide](QUICK_START_EN.md) for immediate start (5 minutes)

---

# Part II: The 6-Phase Architecture

**Goal of this part:** You will learn the detailed implementation of each phase, including concrete deliverables, quality gates, and best practices for different programming languages and project types.

**Content:**
- [Phase 0: Foundation & Vision](#phase-0-foundation--vision)
- [Phase 1: Research & Planning](#phase-1-research--planning)
- [Phase 2: Core Implementation](#phase-2-core-implementation)
- [Phase 3: Feature Expansion](#phase-3-feature-expansion)
- [Phase 4: Polish & Optimization](#phase-4-polish--optimization)
- [Phase 5: Hardening & Testing](#phase-5-hardening--testing)
- [Phase 6: Documentation & Maintenance](#phase-6-documentation--maintenance)

---

## Phase 0: Foundation & Vision

**Status:** BEFORE the first line of code is written
**Duration:** 5-20% of total project time
**Team:** Product Owner, Tech Lead, (optional) Key Stakeholders

### Goals

Phase 0 is the most important phase. Here you define **WHAT** is being built and **WHY**, but not yet **HOW** in detail.

**Core Deliverables:**
1. ✅ Project Charter (Vision, Success Criteria, Non-Goals)
2. ✅ Tech Stack Selection (with Decision Matrices)
3. ✅ Implementation Plan (Phase Breakdown)
4. ✅ Git Repository Setup (with .gitignore, README, LICENSE)
5. ✅ Backup Strategy (3+ Layers)
6. ✅ Session-Continuity System (.continuity/ Structure)

### Phase 0.1: Vision & Charter

**Activity:** Create `project-charter.md` with the AI Assistant

**Template Usage:**
```bash
# Copy the template
cp templates/project-charter.md my-project/

# Start an AI dialog
# "Help me create a Project Charter for [Project Name]"
```

**What belongs in the Charter:**

1. **Vision Statement** (1-2 sentences)
   ```markdown
   ## Vision
   A desktop tool for musicians to synchronize lyrics with audio timing.
   ```

2. **Success Criteria** (measurable!)
   ```markdown
   ## Success Criteria
   - [ ] Can import MP3/WAV files (≤100 MB)
   - [ ] Displays waveform visualization (≤1 second load time)
   - [ ] Saves timing data persistently (JSON format)
   - [ ] Runs on Windows, Mac, Linux
   ```

3. **Non-Goals** (explicitly exclude!)
   ```markdown
   ## Non-Goals (V1.0)
   - ❌ Video support (V2.0)
   - ❌ Cloud synchronization (V1.5)
   - ❌ Collaboration features (not planned)
   ```

4. **Constraints & Assumptions**
   ```markdown
   ## Constraints
   - Solo developer (no team resources)
   - 12 weeks project timeline
   - Desktop-only (no mobile app)

   ## Assumptions
   - User has basic knowledge of music theory
   - User has local music files (no streaming)
   ```

**Language-Agnostic:** The Charter is identical for Python, JavaScript, Go, etc. It describes **WHAT**, not **HOW**.

### Phase 0.2: Tech Stack Selection

**Activity:** Choose programming language, framework, database with Decision Matrices

**Decision Matrix Example: Language Selection**

| Criterion | Python | JavaScript | Go | Rust | Java |
|-----------|--------|------------|----|----|------|
| **Team Expertise** | ✅✅✅ (Expert) | ✅✅ (Intermediate) | ✅ (Basic) | ❌ (None) | ✅✅ (Intermediate) |
| **Desktop GUI Support** | ✅✅ (PyQt6) | ✅✅✅ (Electron) | ✅ (Wails) | ✅ (Tauri) | ✅✅ (JavaFX) |
| **Audio Library Ecosystem** | ✅✅✅ (librosa, pydub) | ✅✅ (Tone.js) | ✅ (oto) | ✅✅ (rodio) | ✅ (Java Sound API) |
| **Deployment Complexity** | ✅ (PyInstaller) | ✅✅✅ (npm build) | ✅✅✅ (single binary) | ✅✅✅ (single binary) | ✅ (JAR) |
| **Development Speed** | ✅✅✅ | ✅✅✅ | ✅✅ | ✅ | ✅✅ |
| **Performance (Audio)** | ✅✅ | ✅ | ✅✅✅ | ✅✅✅ | ✅✅ |
| **Cross-Platform** | ✅✅ | ✅✅✅ | ✅✅✅ | ✅✅✅ | ✅✅✅ |
| **TOTAL SCORE** | 17/21 | 19/21 | 16/21 | 13/21 | 15/21 |

**Decision:** JavaScript with Electron (highest score + best cross-platform story)

**Document in `tech-stack.md`:**

```markdown
# Tech Stack: SongSync Desktop App

## Primary Technologies

### Language & Runtime
- **JavaScript/TypeScript** (Node.js 20 LTS)
- **Rationale:** [see ADR-001]
- **Alternatives evaluated:** Python/PyQt6, Go/Wails, Rust/Tauri
- **Rejection reason:** See decision-matrices/language-selection.md

### Frontend Framework
- **Electron 28** + **React 18**
- **Rationale:** Established ecosystem, best desktop integration
- **Alternatives:** Tauri (too young), NW.js (less active)

### Audio Processing
- **Tone.js** (Web Audio API Wrapper)
- **Rationale:** Mature library, good TypeScript support

### State Management
- **Zustand** (lightweight, no boilerplate)
- **Alternatives:** Redux (too complex for solo project)

### Database
- **SQLite** (better-sqlite3 package)
- **Rationale:** Embedded, no server, perfect for desktop

### Testing
- **Vitest** (Unit), **Playwright** (E2E)

### Build & Packaging
- **electron-builder** (Cross-Platform Packaging)

## Development Tools
- **Vite** (Dev Server, faster than Webpack)
- **ESLint** + **Prettier** (Code Quality)
- **Husky** (Git Hooks for Pre-Commit Checks)

## ADRs (Architecture Decision Records)
- [ADR-001: Why JavaScript over Python](../.continuity/decisions/ADR-001_javascript-over-python.md)
- [ADR-002: Why Electron over Tauri](../.continuity/decisions/ADR-002_electron-over-tauri.md)
- [ADR-003: Why SQLite over JSON Files](../.continuity/decisions/ADR-003_sqlite-over-json.md)
```

**Create ADR-001 Example:**

```markdown
# ADR-001: JavaScript (Electron) instead of Python (PyQt6)

## Status
✅ ACCEPTED — 2026-01-31

## Context
We need a desktop app with audio processing and waveform visualization.

## Decision
We use **JavaScript with Electron + React** instead of Python with PyQt6.

## Rationale

### For JavaScript/Electron:
- ✅ Web Audio API is natively available (no C bindings)
- ✅ Electron-Builder makes cross-platform trivial (1 command)
- ✅ React ecosystem for UI components (react-wavesurfer)
- ✅ NPM ecosystem has 1M+ packages
- ✅ Hot-Module-Replacement for faster development

### Against Python/PyQt6:
- ❌ PyInstaller packaging is fragile (many pitfalls)
- ❌ PyQt6 license complexity (GPL vs. Commercial)
- ❌ Audio libraries use C bindings (compilation issues)
- ❌ No native waveform visualization (build yourself)

## Consequences

### Positive:
- Faster development (Web tech stack)
- Easier deployment (Electron-Builder)
- Larger hiring pool (more JS developers)

### Negative:
- Larger binary size (~150 MB vs. ~50 MB)
- Higher RAM usage (~200 MB vs. ~100 MB)
- Electron update overhead (security patches)

## Alternative
Python/PyQt6 remains option for V2.0 if performance becomes critical.

## Tags
`language-selection` `desktop-app` `audio-processing`
```

### Phase 0.3: Implementation Plan

**Activity:** Break down the project into 6 phases with deliverables

**Example Breakdown (SongSync App):**

```markdown
# Implementation Plan: SongSync Desktop App

## Timeline Overview
- **Phase 0:** Foundation (1 week) ← CURRENT
- **Phase 1:** Research & Planning (1 week)
- **Phase 2:** Core Implementation (4 weeks)
- **Phase 3:** Feature Expansion (3 weeks)
- **Phase 4:** Polish & Optimization (2 weeks)
- **Phase 5:** Hardening & Testing (1 week)
- **Phase 6:** Documentation & Maintenance (ongoing)

**Total:** 12 weeks

## Phase 0: Foundation (Week 1)
**Deliverables:**
- [x] Project Charter
- [x] Tech Stack Selection (JavaScript/Electron/React)
- [x] Git Repository Setup
- [x] Development Environment Setup
- [x] Backup Strategy (Git + Time Machine + Cloud)

**Success Criteria:**
- `npm install` works
- Electron app starts with "Hello World"
- Git remote works

## Phase 1: Research & Planning (Week 2)
**Deliverables:**
- [ ] UI/UX Mockups (Figma or Paper)
- [ ] Audio Library Evaluation (Tone.js Proof-of-Concept)
- [ ] Data Model Design (SQLite Schema)
- [ ] CI/CD Pipeline Setup (GitHub Actions)

**Quality Gates:**
- Proof-of-Concept: Load audio file + display waveform
- Unit test framework works (Vitest)

## Phase 2: Core Implementation (Week 3-6)
**Deliverables:**
- [ ] Audio Player Component (play, pause, seek)
- [ ] Waveform Visualization (react-wavesurfer)
- [ ] Lyrics Editor (synchronized timing)
- [ ] SQLite Persistence (save/load projects)
- [ ] Basic File I/O (import MP3/WAV)

**Quality Gates:**
- User can import song
- User can add lyrics
- User can set timing
- User can save/load project
- Unit Tests: ≥70% Coverage

## Phase 3: Feature Expansion (Week 7-9)
**Deliverables:**
- [ ] Keyboard Shortcuts (Space = play/pause, etc.)
- [ ] Export Feature (JSON, SRT, LRC formats)
- [ ] Undo/Redo Functionality
- [ ] Project Templates
- [ ] Recent Files List

**Quality Gates:**
- E2E Tests: Happy path works
- Performance: Song import ≤2 seconds

## Phase 4: Polish & Optimization (Week 10-11)
**Deliverables:**
- [ ] UI Polish (loading states, error messages)
- [ ] Performance Optimization (lazy loading)
- [ ] Accessibility (keyboard navigation, screen reader)
- [ ] Dark Mode Support

**Quality Gates:**
- Lighthouse Score: ≥90
- Accessibility Audit: 0 critical issues

## Phase 5: Hardening & Testing (Week 12)
**Deliverables:**
- [ ] Comprehensive E2E Tests (Playwright)
- [ ] Error Handling (graceful degradation)
- [ ] Cross-Platform Testing (Windows, Mac, Linux)
- [ ] Security Audit (npm audit)

**Quality Gates:**
- E2E Tests: ≥90% critical user flows
- Zero High-Severity npm audit issues

## Phase 6: Documentation & Maintenance (Week 13+)
**Deliverables:**
- [ ] User Documentation (README, Tutorials)
- [ ] Developer Documentation (CONTRIBUTING.md)
- [ ] Release Notes
- [ ] GitHub Release (v1.0.0)

**Quality Gates:**
- README has all setup steps
- CI/CD Pipeline: Auto-release on tag
```

**Important:** This plan is **NOT set in stone**. Adjustments are allowed (and expected)!

### Phase 0.4: Repository & Tooling Setup

**Activity:** Git, CI/CD, Development Environment

**Step 1: Git Repository**

```bash
# Initialize
git init
git branch -M main

# Create .gitignore (Electron-specific)
cat > .gitignore <<EOF
# Dependencies
node_modules/
package-lock.json

# Build Outputs
dist/
out/
build/

# Environment
.env
.env.local

# IDE
.vscode/
.idea/
*.swp

# OS
.DS_Store
Thumbs.db

# Logs
*.log
npm-debug.log*

# Private
.continuity/private/
EOF

# Initial Commit
git add .
git commit -m "Initial commit: Phase 0 Foundation

- Project Charter created
- Tech Stack selected (Electron + React + TypeScript)
- Implementation plan defined (12 weeks)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# Create GitHub Repo (via gh CLI)
gh repo create songsync-desktop --public --source=. --remote=origin
git push -u origin main
```

**Step 2: Package.json Setup**

```json
{
  "name": "songsync-desktop",
  "version": "0.1.0",
  "description": "Desktop tool for synchronizing lyrics with audio timing",
  "main": "dist/main.js",
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build && electron-builder",
    "test": "vitest",
    "test:e2e": "playwright test",
    "lint": "eslint src --ext .ts,.tsx",
    "format": "prettier --write src/**/*.{ts,tsx}"
  },
  "devDependencies": {
    "@types/node": "^20.0.0",
    "@types/react": "^18.2.0",
    "@typescript-eslint/eslint-plugin": "^6.0.0",
    "@typescript-eslint/parser": "^6.0.0",
    "electron": "^28.0.0",
    "electron-builder": "^24.0.0",
    "eslint": "^8.0.0",
    "playwright": "^1.40.0",
    "prettier": "^3.0.0",
    "typescript": "^5.3.0",
    "vite": "^5.0.0",
    "vitest": "^1.0.0"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "better-sqlite3": "^9.2.0",
    "tone": "^14.7.77",
    "zustand": "^4.4.0"
  }
}
```

**Step 3: CI/CD Pipeline (GitHub Actions)**

```yaml
# .github/workflows/ci.yml
name: CI/CD Pipeline

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ${{ matrix.os }}
    strategy:
      matrix:
        os: [ubuntu-latest, windows-latest, macos-latest]
        node-version: [20.x]

    steps:
      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}
          cache: 'npm'

      - name: Install Dependencies
        run: npm ci

      - name: Run Linter
        run: npm run lint

      - name: Run Unit Tests
        run: npm test -- --coverage

      - name: Run E2E Tests
        run: npm run test:e2e

      - name: Build Application
        run: npm run build

      - name: Upload Coverage
        if: matrix.os == 'ubuntu-latest'
        uses: codecov/codecov-action@v3
        with:
          files: ./coverage/coverage-final.json

  quality-gates:
    runs-on: ubuntu-latest
    needs: test

    steps:
      - uses: actions/checkout@v4

      - name: Check Quality Metrics
        run: |
          # Ensure test coverage ≥70%
          COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)
          if (( $(echo "$COVERAGE < 70" | bc -l) )); then
            echo "❌ Coverage too low: $COVERAGE% (required: ≥70%)"
            exit 1
          fi
          echo "✅ Coverage: $COVERAGE%"

      - name: Security Audit
        run: |
          npm audit --audit-level=high
```

### Phase 0.5: Session-Continuity System

**Activity:** Setup .continuity/ structure for session management

```bash
# Create Directory Structure
mkdir -p .continuity/{sessions,decisions,context,config,private}

# Create README
cat > .continuity/README.md <<EOF
# Project Continuity System

This structure enables seamless session interruptions and recovery.

## Structure
- \`sessions/\` - YAML-based session logs (committed to Git)
- \`decisions/\` - Architecture Decision Records (committed)
- \`context/\` - Session context (committed)
- \`config/\` - Session management config (committed)
- \`private/\` - Private notes (NOT committed, .gitignore)

## Usage
\`\`\`bash
# Start session
node scripts/session-start.js

# End session
node scripts/session-end.js
\`\`\`
EOF

# Create Session-Start Script (simplified)
cat > scripts/session-start.js <<'EOF'
#!/usr/bin/env node
const fs = require('fs');
const path = require('path');

const timestamp = new Date().toISOString().split('T')[0];
const sessionFile = path.join('.continuity', 'sessions', `${timestamp}_session-001.yml`);

// Find next session number for today
let sessionNum = 1;
while (fs.existsSync(sessionFile.replace('001', String(sessionNum).padStart(3, '0')))) {
  sessionNum++;
}

const sessionPath = sessionFile.replace('001', String(sessionNum).padStart(3, '0'));

const sessionTemplate = `
session_id: ${timestamp}_session-${String(sessionNum).padStart(3, '0')}
date: ${timestamp}
phase: "Phase 0 - Foundation"
goals:
  - Complete project charter
  - Setup development environment

start_time: ${new Date().toTimeString().split(' ')[0]}
status: in_progress

commits: []
files_modified: []
decisions_made: []
blockers: []
next_session_plan: ""
`.trim();

fs.writeFileSync(sessionPath, sessionTemplate);
console.log(`✅ Session started: ${sessionPath}`);
console.log(`📝 Edit this file during your session to track progress.`);
EOF

chmod +x scripts/session-start.js
```

**Session YAML Example:**

```yaml
# .continuity/sessions/2026-01-31_session-001.yml
session_id: 2026-01-31_session-001
date: 2026-01-31
phase: "Phase 0 - Foundation"
developer: "alice"

goals:
  - Setup Electron + React project structure
  - Create first "Hello World" window
  - Configure TypeScript + Vite

start_time: "14:00:00"
end_time: "16:30:00"
duration_hours: 2.5
status: completed

commits:
  - hash: "a3f9c21"
    message: "Setup Electron + Vite + React boilerplate"
  - hash: "b7e1234"
    message: "Add TypeScript configuration"

files_created:
  - "src/main.ts"
  - "src/renderer/App.tsx"
  - "tsconfig.json"
  - "vite.config.ts"

files_modified:
  - "package.json"
  - ".gitignore"

decisions_made:
  - "Use Vite instead of Webpack (faster HMR)"
  - "TypeScript strict mode enabled"

ai_assistant_used: true
ai_model: "claude-sonnet-4.5"

blockers: []

achievements:
  - "✅ Electron window opens successfully"
  - "✅ Hot-Module-Replacement works"
  - "✅ TypeScript compiles without errors"

next_session_plan: |
  - Install Tone.js for audio processing
  - Create basic Audio Player component
  - Add SQLite database setup

notes: |
  - Vite config was tricky (needed electron-vite plugin)
  - React DevTools work in Electron!
```

### Phase 0.6: Backup Strategy

**Activity:** Implement 3+ backup layers

**Layer 1: Git (Remote)**
```bash
# GitHub (primary)
git remote add origin https://github.com/username/songsync-desktop.git

# GitLab (mirror, optional)
git remote add gitlab https://gitlab.com/username/songsync-desktop.git

# Push to both
git push origin main
git push gitlab main
```

**Layer 2: Time Machine (Mac) / File History (Windows)**
```bash
# Mac: Automatic when enabled
# Windows: Enable File History in Settings

# Verify Backup
# Mac:
tmutil listbackups

# Windows:
# Settings → Update & Security → Backup → More options
```

**Layer 3: Cloud Backup (rclone)**
```bash
# Install rclone
# Mac: brew install rclone
# Windows: Download from rclone.org

# Configure (one-time)
rclone config
# Choose: Dropbox, Google Drive, AWS S3, etc.

# Create Backup Script
cat > scripts/backup.sh <<'EOF'
#!/bin/bash
PROJECT_DIR="$HOME/projects/songsync-desktop"
BACKUP_NAME="songsync_$(date +%Y%m%d_%H%M%S).tar.gz"

# Create tarball (exclude node_modules, dist)
tar -czf "/tmp/$BACKUP_NAME" \
  --exclude="node_modules" \
  --exclude="dist" \
  --exclude=".git" \
  "$PROJECT_DIR"

# Upload to Cloud (Dropbox example)
rclone copy "/tmp/$BACKUP_NAME" dropbox:backups/songsync/

# Keep local backup for 7 days
mv "/tmp/$BACKUP_NAME" "$HOME/backups/"
find "$HOME/backups/" -name "songsync_*.tar.gz" -mtime +7 -delete

echo "✅ Backup completed: $BACKUP_NAME"
EOF

chmod +x scripts/backup.sh

# Run manually or via cron
# crontab -e
# 0 2 * * * /path/to/scripts/backup.sh
```

**Document Backup Strategy:**

```markdown
# BACKUP_STRATEGY.md

## Layer 1: Git Remote (Real-time)
- **Primary:** GitHub (https://github.com/username/songsync-desktop)
- **Mirror:** GitLab (https://gitlab.com/username/songsync-desktop)
- **Frequency:** Every `git push` (multiple times per day)
- **Recovery:** `git clone`

## Layer 2: Time Machine (Hourly)
- **Mac:** Time Machine → External Drive (2 TB)
- **Frequency:** Hourly (automatic)
- **Retention:** 30 days
- **Recovery:** Time Machine UI

## Layer 3: Cloud Backup (Daily)
- **Service:** Dropbox
- **Location:** `dropbox:backups/songsync/`
- **Frequency:** Daily @ 2:00 AM (cron)
- **Retention:** 90 days
- **Recovery:** `rclone copy dropbox:backups/songsync/latest.tar.gz .`

## Layer 4: USB Drive (Weekly, manual)
- **Device:** USB 3.0 Drive (1 TB)
- **Frequency:** Every Friday
- **Retention:** 4 weeks
- **Recovery:** Manual copy

## Private Files (.continuity/private/)
- **NOT** in Git (excluded via .gitignore)
- Backup: USB Drive (Layer 4) only
- Contains: Personal notes, commercial plans, sensitive data
```

### Phase 0 Quality Gates

**Before proceeding to Phase 1, ensure:**

- [ ] **Project Charter exists** and is approved by stakeholders
- [ ] **Tech Stack is documented** (tech-stack.md with ADRs)
- [ ] **Implementation plan exists** with phase breakdown
- [ ] **Git repository is initialized** with remote (GitHub/GitLab)
- [ ] **Development environment works** (`npm install && npm run dev` starts app)
- [ ] **CI/CD pipeline runs** (GitHub Actions: ✅ Green)
- [ ] **Session-continuity system is setup** (.continuity/ structure)
- [ ] **Backup strategy is implemented** (3+ layers)
- [ ] **README.md exists** with setup instructions

**Quality Gate Check:**
```bash
# Run automated check
npm run check:phase-0

# Example Output:
# ✅ project-charter.md exists
# ✅ tech-stack.md exists
# ✅ IMPLEMENTATION_PLAN.md exists
# ✅ Git remote configured
# ✅ CI/CD pipeline passing
# ✅ .continuity/ structure exists
# ✅ README.md exists
#
# Phase 0 Quality Gate: PASSED ✅
```

**When all checks are ✅ → Commit:**

```bash
git add .
git commit -m "Phase 0 Complete: Foundation & Vision

All Phase 0 deliverables completed:
- Project Charter defined
- Tech Stack selected (Electron + React + TypeScript)
- Implementation plan created (12 weeks, 6 phases)
- Git repository setup with CI/CD
- Session-continuity system established
- Backup strategy implemented (4 layers)

Quality Gates: PASSED ✅

Next: Phase 1 - Research & Planning

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

git push origin main
```

### Phase 0: Best Practices

**✅ DOs:**

1. **Invest time in Phase 0** — It saves 10x time in later phases
2. **Document WHY** — Not just WHAT (use ADRs!)
3. **Be specific with success criteria** — "Fast" is not measurable, "≤2 seconds" is measurable
4. **Limit the scope** — Use "Non-Goals" aggressively!
5. **Setup CI/CD from the start** — "Later" never happens
6. **Create session structure** — Even if you don't use it yet
7. **Prepare Test-Driven Development** — Test framework in Phase 0 setup

**❌ DON'Ts:**

1. **DON'T start with code directly** — "I'll just write a proof-of-concept" leads to technical debt
2. **DON'T "document later"** — Document NOW (while decisions are fresh)
3. **DON'T add too many technologies at once** — Electron + React is enough, don't add Redux + GraphQL + Docker
4. **DON'T be perfectionist** — ADRs don't need to be perfect, they need to exist
5. **DON'T decide everything alone** — Ask AI assistants about trade-offs!
6. **DON'T ignore backup strategy** — Murphy's Law applies: "What can go wrong, will go wrong"

### Phase 0: Language-Agnostic Adaptations

**Phase 0 is identical for:**

| Project Type | Language | Framework | Phase 0 Difference |
|-------------|---------|-----------|---------------------|
| Desktop App | JavaScript | Electron | Only tech stack documentation |
| Desktop App | Python | PyQt6 | Only tech stack documentation |
| Web App | JavaScript | Next.js | Only tech stack documentation |
| Web App | Python | Django | Only tech stack documentation |
| CLI Tool | Go | Cobra | Only tech stack documentation |
| CLI Tool | Rust | Clap | Only tech stack documentation |

**The process remains the same:**
1. Define vision
2. Choose tech stack (with decision matrix)
3. Create plan
4. Setup tooling
5. Check quality gates

---

## Phase 1: Research & Planning

**Status:** AFTER Phase 0, BEFORE real implementation begins
**Duration:** 5-15% of total project time
**Team:** Tech Lead, Senior Developers, (optional) UX Designer

### Goals

Phase 1 is the **Proof-of-Concept Phase**. Here you validate technical assumptions and design the architecture BEFORE fully investing.

**Core Deliverables:**
1. ✅ UI/UX Mockups (low-fidelity is enough!)
2. ✅ Proof-of-Concept for critical technologies
3. ✅ Data Model Design (database schema)
4. ✅ API Design (if backend exists)
5. ✅ Architecture Diagram
6. ✅ Test Strategy & Framework Setup

### Phase 1.1: UI/UX Mockups

**Activity:** Design the user interface (not perfect, just sufficient!)

**Important:** Phase 1 mockups are **LOW-FIDELITY**. No pixel-perfect designs!

**Tools (choose one):**
- ✏️ **Paper & Pencil** (fastest, solo dev)
- 🎨 **Excalidraw** (free, web-based, collaborative)
- 🎨 **Figma** (free tier, professional, team-capable)
- 🎨 **Balsamiq** (wireframe-focused)

**Example Workflow (SongSync App):**

```markdown
## UI Mockup: Main Window

┌─────────────────────────────────────────────────────┐
│ SongSync                                   ─ □ ✕    │
├─────────────────────────────────────────────────────┤
│ File  Edit  View  Help                              │
├─────────────────────────────────────────────────────┤
│                                                      │
│  ┌─ Audio Track ─────────────────────────────────┐ │
│  │                                                 │ │
│  │  [Waveform Visualization]                      │ │
│  │  ▓▓▓░░▓▓▓▓░░░▓▓▓▓▓░░░▓▓░░▓▓▓▓▓                │ │
│  │                                                 │ │
│  │  [=========>                ] 01:23 / 03:45    │ │
│  │  [▶] [⏸] [⏹] [⏮] [⏭]                          │ │
│  └──────────────────────────────────────────────────┘│
│                                                      │
│  ┌─ Lyrics Editor ──────────────────────────────┐ │
│  │ Line 1: [00:05.20] Welcome to the machine    │ │
│  │ Line 2: [00:12.80] Where have you been?      │ │
│  │ Line 3: [00:18.30] It's alright we know      │ │
│  │ Line 4: [______] [Add timing...]             │ │
│  │                                                 │ │
│  │ [+ Add Line]                                   │ │
│  └──────────────────────────────────────────────────┘│
│                                                      │
│  [💾 Save Project] [📁 Load Project] [📤 Export]   │
│                                                      │
└─────────────────────────────────────────────────────┘
```

**AI-Assisted Mockup Creation:**

```
Prompt to AI assistant:

"Help me create a low-fidelity mockup for a desktop app.

App Name: SongSync
Main Features:
- Audio player with waveform visualization
- Lyrics editor with timing synchronization
- Project save/load

Create an ASCII art mockup of the main window."
```

**Save Mockup:**

```bash
# Create docs/ directory
mkdir -p docs/mockups

# Save mockup
cat > docs/mockups/main-window.md <<EOF
# Main Window Mockup

[Insert ASCII Art or Screenshot here]

## Components:
1. **Audio Track Panel** (top, 40% height)
   - Waveform visualization (react-wavesurfer)
   - Playback controls (play, pause, stop, prev, next)
   - Timeline scrubber
   - Current time / Duration

2. **Lyrics Editor Panel** (bottom, 50% height)
   - List of lyric lines with timestamps
   - Editable text fields
   - "Add timing" button per line
   - "Add line" button at bottom

3. **Toolbar** (very bottom, 10% height)
   - Save Project button
   - Load Project button
   - Export button (JSON/SRT/LRC)

## User Flows:
1. **Import Audio:**
   - File → Open Audio File
   - User selects MP3/WAV
   - Waveform loads in top panel

2. **Add Lyrics:**
   - User types lyrics in editor
   - Clicks "Add timing" button
   - Presses key when audio reaches correct moment
   - Timestamp auto-captured

3. **Save Project:**
   - User clicks "Save Project"
   - File picker opens
   - Project saved as .songsync JSON file
EOF
```

### Phase 1.2: Proof-of-Concept (Critical Technologies)

**Activity:** Validate technical assumptions with mini prototypes

**What needs a PoC?**
- ✅ **New Technology** (you've never used before)
- ✅ **Critical Feature** (e.g., audio processing, real-time sync)
- ✅ **Performance-critical Operation** (e.g., large file processing)
- ✅ **Third-Party Integration** (e.g., Spotify API, payment gateway)

**What doesn't need a PoC?**
- ❌ Standard CRUD Operations (you've done 100 times)
- ❌ UI Components (library documentation is enough)
- ❌ Simple Business Logic

**PoC Example (SongSync: Audio Waveform Visualization):**

```bash
# Create PoC directory
mkdir -p poc/waveform-visualization
cd poc/waveform-visualization

# Initialize minimal project
npm init -y
npm install tone wavesurfer.js

# Create PoC
cat > index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
  <title>Waveform PoC</title>
  <script src="https://unpkg.com/wavesurfer.js@7"></script>
</head>
<body>
  <h1>Waveform Visualization PoC</h1>

  <div id="waveform"></div>
  <button onclick="wavesurfer.playPause()">Play/Pause</button>

  <script>
    const wavesurfer = WaveSurfer.create({
      container: '#waveform',
      waveColor: 'violet',
      progressColor: 'purple',
      height: 128
    });

    // Load sample audio
    wavesurfer.load('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');

    // Success criteria: Waveform loads in ≤2 seconds
    const startTime = Date.now();
    wavesurfer.on('ready', () => {
      const loadTime = (Date.now() - startTime) / 1000;
      console.log(`✅ Waveform loaded in ${loadTime}s`);

      if (loadTime <= 2) {
        console.log('✅ SUCCESS: Meets performance criteria');
      } else {
        console.warn('⚠️ WARNING: Load time exceeds 2s target');
      }
    });
  </script>
</body>
</html>
EOF

# Test PoC
open index.html  # Mac
# start index.html  # Windows
```

**Document PoC Results:**

```markdown
# PoC: Waveform Visualization with WaveSurfer.js

## Goal
Validate that we can display audio waveforms with ≤2 second load time for typical MP3 files (3-5 MB).

## Approach
- Library: WaveSurfer.js v7
- Test Audio: SoundHelix Song (4.2 MB, 3:45 duration)

## Results
| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Load Time | ≤2s | 1.3s | ✅ PASS |
| Waveform Quality | Clear | Very Clear | ✅ PASS |
| Playback Controls | Smooth | Smooth | ✅ PASS |
| Memory Usage | <200 MB | 145 MB | ✅ PASS |

## Decision
✅ **GO** — WaveSurfer.js meets all requirements. Proceed with integration in Phase 2.

## Alternatives Tested
- ❌ Tone.js (no built-in waveform visualization)
- ❌ Peaks.js (overkill, designed for BBC-scale audio editing)

## Code Sample (for Phase 2 integration)
\`\`\`javascript
import WaveSurfer from 'wavesurfer.js';

const wavesurfer = WaveSurfer.create({
  container: '#waveform',
  waveColor: '#4a5568',
  progressColor: '#3182ce',
  height: 128,
  normalize: true
});

wavesurfer.load(audioFileUrl);
\`\`\`

## Tags
`poc` `audio-processing` `waveform` `phase-1`
```

### Phase 1.3: Data Model Design

**Activity:** Design database schema and data structures

**Example (SongSync: SQLite Schema):**

```sql
-- schema.sql

-- Projects Table
CREATE TABLE projects (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  audio_file_path TEXT NOT NULL,
  audio_duration_seconds REAL NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Lyrics Table (one-to-many with projects)
CREATE TABLE lyrics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  project_id INTEGER NOT NULL,
  line_number INTEGER NOT NULL,
  text TEXT NOT NULL,
  timestamp_seconds REAL,  -- NULL if not yet timed
  FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE,
  UNIQUE(project_id, line_number)
);

-- Project Settings (one-to-one with projects)
CREATE TABLE project_settings (
  project_id INTEGER PRIMARY KEY,
  waveform_color TEXT DEFAULT '#4a5568',
  playback_speed REAL DEFAULT 1.0,
  auto_save_enabled BOOLEAN DEFAULT 1,
  FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
);

-- Indexes for performance
CREATE INDEX idx_lyrics_project_id ON lyrics(project_id);
CREATE INDEX idx_lyrics_timestamp ON lyrics(timestamp_seconds);
```

**TypeScript Types (type-safe data models):**

```typescript
// types/models.ts

export interface Project {
  id: number;
  name: string;
  audioFilePath: string;
  audioDurationSeconds: number;
  createdAt: Date;
  updatedAt: Date;
}

export interface Lyric {
  id: number;
  projectId: number;
  lineNumber: number;
  text: string;
  timestampSeconds: number | null;
}

export interface ProjectSettings {
  projectId: number;
  waveformColor: string;
  playbackSpeed: number;
  autoSaveEnabled: boolean;
}

// Domain Logic: Project with Lyrics
export interface ProjectWithLyrics extends Project {
  lyrics: Lyric[];
  settings: ProjectSettings;
}

// Export Formats
export type ExportFormat = 'json' | 'srt' | 'lrc';

export interface ExportOptions {
  format: ExportFormat;
  includeMetadata: boolean;
}
```

**Migrations Setup (for schema changes):**

```javascript
// database/migrations/001_initial_schema.js
module.exports = {
  up: (db) => {
    db.exec(`
      CREATE TABLE projects (...);
      CREATE TABLE lyrics (...);
      CREATE TABLE project_settings (...);
    `);
  },

  down: (db) => {
    db.exec(`
      DROP TABLE IF EXISTS project_settings;
      DROP TABLE IF EXISTS lyrics;
      DROP TABLE IF EXISTS projects;
    `);
  }
};
```


### Phase 1.4: API Design (if backend)

**Activity:** Design REST/GraphQL API (skip for desktop-only apps)

**Example (Web App with Backend):**

```markdown
# API Design: SongSync Backend

## Authentication
All endpoints require JWT token in `Authorization: Bearer <token>` header.

## Endpoints

### Projects
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/projects` | List all user projects |
| POST | `/api/projects` | Create new project |
| GET | `/api/projects/:id` | Get project details + lyrics |
| PATCH | `/api/projects/:id` | Update project metadata |
| DELETE | `/api/projects/:id` | Delete project |

### Lyrics
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/projects/:id/lyrics` | Add lyric line |
| PATCH | `/api/lyrics/:id` | Update lyric (text or timestamp) |
| DELETE | `/api/lyrics/:id` | Delete lyric line |

### Export
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/projects/:id/export?format=srt` | Export project |

## Request/Response Examples

### POST /api/projects
**Request:**
\`\`\`json
{
  "name": "My Song Lyrics",
  "audioFilePath": "/uploads/song.mp3",
  "audioDurationSeconds": 225.5
}
\`\`\`

**Response:** (201 Created)
\`\`\`json
{
  "id": 42,
  "name": "My Song Lyrics",
  "audioFilePath": "/uploads/song.mp3",
  "audioDurationSeconds": 225.5,
  "createdAt": "2026-01-31T10:30:00Z",
  "updatedAt": "2026-01-31T10:30:00Z"
}
\`\`\`

### GET /api/projects/42
**Response:** (200 OK)
\`\`\`json
{
  "id": 42,
  "name": "My Song Lyrics",
  "audioFilePath": "/uploads/song.mp3",
  "audioDurationSeconds": 225.5,
  "lyrics": [
    {
      "id": 1,
      "lineNumber": 1,
      "text": "Welcome to the machine",
      "timestampSeconds": 5.2
    },
    {
      "id": 2,
      "lineNumber": 2,
      "text": "Where have you been?",
      "timestampSeconds": 12.8
    }
  ],
  "settings": {
    "waveformColor": "#4a5568",
    "playbackSpeed": 1.0,
    "autoSaveEnabled": true
  }
}
\`\`\`

## Error Responses
\`\`\`json
{
  "error": "Validation failed",
  "details": [
    {
      "field": "audioFilePath",
      "message": "Audio file not found"
    }
  ]
}
\`\`\`

## Rate Limiting
- 100 requests per minute per user
- Header: `X-RateLimit-Remaining: 95`
```

### Phase 1.5: Architecture Diagram

**Activity:** Visualize system architecture

**Example (SongSync Desktop App):**

```
┌─────────────────────────────────────────────────────────┐
│                     Electron App                        │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  ┌─── Main Process (Node.js) ────────────────────┐    │
│  │                                                 │    │
│  │  • Window Management (BrowserWindow)           │    │
│  │  • File System Access (fs, path)               │    │
│  │  • SQLite Database (better-sqlite3)            │    │
│  │  • IPC Communication (ipcMain)                 │    │
│  │                                                 │    │
│  └──────────────────┬──────────────────────────────┘    │
│                     │ IPC                               │
│                     ↓                                   │
│  ┌─── Renderer Process (Browser) ─────────────────┐    │
│  │                                                 │    │
│  │  ┌─ React App ──────────────────────────────┐ │    │
│  │  │                                            │ │    │
│  │  │  • App.tsx (Main Component)               │ │    │
│  │  │  • AudioPlayer Component                  │ │    │
│  │  │    └─ WaveSurfer.js                       │ │    │
│  │  │  • LyricsEditor Component                 │ │    │
│  │  │  • Zustand (State Management)             │ │    │
│  │  │                                            │ │    │
│  │  └────────────────────────────────────────────┘ │    │
│  │                                                 │    │
│  │  • HTML/CSS/JavaScript Bundle (Vite)          │    │
│  │  • IPC Communication (ipcRenderer)            │    │
│  │                                                 │    │
│  └──────────────────────────────────────────────────┘    │
│                                                         │
└─────────────────────────────────────────────────────────┘

External Dependencies:
┌────────────────┐  ┌───────────────┐  ┌──────────────┐
│  WaveSurfer.js │  │   Tone.js     │  │  SQLite DB   │
│  (Waveform)    │  │  (Playback)   │  │  (Storage)   │
└────────────────┘  └───────────────┘  └──────────────┘
```

**As Mermaid Diagram (for GitHub Markdown):**

```mermaid
graph TB
    subgraph Electron App
        A[Main Process Node.js]
        B[Renderer Process Browser]

        A --> |IPC| B

        subgraph Main Process
            A1[Window Management]
            A2[File System]
            A3[SQLite Database]
            A4[IPC Main]
        end

        subgraph Renderer Process
            B1[React App]
            B2[AudioPlayer Component]
            B3[LyricsEditor Component]
            B4[Zustand State]
            B2 --> B5[WaveSurfer.js]
        end
    end

    C[SQLite DB File] --> A3
    D[Audio Files MP3/WAV] --> A2
```

**Document Architecture:**

```markdown
# Architecture: SongSync Desktop App

## Technology Stack
- **Frontend:** React 18 + TypeScript
- **Backend:** Electron Main Process (Node.js)
- **Database:** SQLite (better-sqlite3)
- **Audio:** WaveSurfer.js + Tone.js
- **State:** Zustand
- **Build:** Vite + electron-builder

## Process Communication
- **IPC Pattern:** Renderer → Main (for database/file operations)
- **No Web Workers** (overkill for this app)

## Data Flow
1. User action in React component
2. Component dispatches Zustand action
3. Action triggers IPC call to Main Process
4. Main Process accesses SQLite/File System
5. Main Process sends result back via IPC
6. Zustand updates state
7. React re-renders UI

## Security
- **Context Isolation:** Enabled (Electron default)
- **Node Integration:** Disabled in renderer
- **IPC Whitelist:** Only allowed operations exposed

## Performance Targets
- App startup: ≤2 seconds
- Audio load: ≤2 seconds
- Database query: ≤100ms
- UI responsiveness: ≤16ms (60 FPS)

## Scalability
Current design supports:
- Projects: Up to 1000
- Lyrics per project: Up to 500 lines
- Audio file size: Up to 100 MB

Limitations acceptable for V1.0 (desktop use case).
```

### Phase 1.6: Test Strategy

**Activity:** Define testing approach (BEFORE writing code)

**Test Pyramid (SongSync):**

```
         /\
        /  \  E2E Tests (10%)
       /────\  - Playwright
      /      \  - Critical user flows only
     /────────\
    /          \ Integration Tests (20%)
   /────────────\  - Component + Database
  /              \  - API endpoints (if backend)
 /────────────────\
/                  \ Unit Tests (70%)
─────────────────────  - Pure functions
                      - Business logic
                      - Utilities
```

**Test Framework Setup:**

```bash
# Install test dependencies
npm install --save-dev \
  vitest \
  @testing-library/react \
  @testing-library/user-event \
  playwright \
  @playwright/test

# Create test config
cat > vitest.config.ts <<'EOF'
import { defineConfig } from 'vitest/config';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
  test: {
    environment: 'jsdom',
    coverage: {
      provider: 'v8',
      reporter: ['text', 'json', 'html'],
      lines: 70,
      functions: 70,
      branches: 70,
      statements: 70
    }
  }
});
EOF

# Create Playwright config
cat > playwright.config.ts <<'EOF'
import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './e2e',
  fullyParallel: true,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: process.env.CI ? 1 : undefined,
  reporter: 'html',

  use: {
    baseURL: 'http://localhost:5173',
    trace: 'on-first-retry',
  },

  projects: [
    { name: 'chromium', use: { ...devices['Desktop Chrome'] }},
  ],

  webServer: {
    command: 'npm run dev',
    url: 'http://localhost:5173',
    reuseExistingServer: !process.env.CI,
  },
});
EOF
```

**Test Coverage Targets:**

```markdown
# Test Strategy: SongSync

## Coverage Targets (Phase 2+)
| Category | Target | Enforcement |
|----------|--------|-------------|
| Unit Tests | ≥70% | CI/CD blocks merge if <70% |
| Integration Tests | ≥50% | CI/CD warning if <50% |
| E2E Tests | 100% critical flows | CI/CD blocks merge if E2E fails |

## Critical User Flows (E2E)
1. ✅ Import audio file → See waveform
2. ✅ Add lyric line → Set timing → Save project
3. ✅ Load project → Edit lyric → Save
4. ✅ Export project → Verify JSON/SRT format

## Unit Test Examples
\`\`\`typescript
// utils/formatTime.test.ts
import { formatTime } from './formatTime';

describe('formatTime', () => {
  it('formats seconds to MM:SS', () => {
    expect(formatTime(0)).toBe('00:00');
    expect(formatTime(65)).toBe('01:05');
    expect(formatTime(3661)).toBe('61:01');
  });

  it('handles invalid input', () => {
    expect(formatTime(-1)).toBe('00:00');
    expect(formatTime(NaN)).toBe('00:00');
  });
});
\`\`\`

## Integration Test Example
\`\`\`typescript
// database/projects.test.ts
import { describe, it, expect, beforeEach } from 'vitest';
import { createProject, getProject } from './projects';
import { initDatabase } from './init';

describe('Project Database', () => {
  beforeEach(() => {
    initDatabase(':memory:'); // In-memory SQLite for tests
  });

  it('creates and retrieves project', () => {
    const project = createProject({
      name: 'Test Song',
      audioFilePath: '/test.mp3',
      audioDurationSeconds: 180
    });

    const retrieved = getProject(project.id);
    expect(retrieved.name).toBe('Test Song');
  });
});
\`\`\`

## E2E Test Example
\`\`\`typescript
// e2e/import-audio.spec.ts
import { test, expect } from '@playwright/test';

test('imports audio file and displays waveform', async ({ page }) => {
  await page.goto('/');

  // Click "Import Audio"
  await page.click('[data-testid="import-audio-btn"]');

  // Select file (using test fixture)
  await page.setInputFiles('[data-testid="file-input"]', './fixtures/test-audio.mp3');

  // Wait for waveform to render
  await expect(page.locator('[data-testid="waveform"]')).toBeVisible();

  // Verify duration is displayed
  await expect(page.locator('[data-testid="duration"]')).toContainText('03:00');
});
\`\`\`

## Test Data Management
- **Fixtures:** `/e2e/fixtures/` (test audio files, ~1 MB each)
- **Mocks:** `/src/__mocks__/` (mock database, file system)
- **Factories:** `/tests/factories/` (generate test data)

## CI/CD Integration
\`\`\`yaml
# .github/workflows/test.yml
- name: Run Unit Tests
  run: npm test -- --coverage

- name: Run E2E Tests
  run: npm run test:e2e

- name: Check Coverage
  run: |
    COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)
    if (( $(echo "$COVERAGE < 70" | bc -l) )); then
      echo "❌ Coverage too low"
      exit 1
    fi
\`\`\`
```

### Phase 1 Quality Gates

**Before proceeding to Phase 2:**

- [ ] **UI/UX Mockups exist** (low-fidelity is enough)
- [ ] **Proof-of-Concept for critical technologies** is successful
- [ ] **Data Model is designed** (Schema + Types)
- [ ] **API Design documented** (if backend)
- [ ] **Architecture Diagram exists** (visualizes components)
- [ ] **Test Framework is setup** (Vitest + Playwright configured)
- [ ] **Test Strategy is documented** (Coverage goals defined)
- [ ] **CI/CD Pipeline runs** (Tests are automatically executed)

**Phase 1 Commit:**

```bash
git add .
git commit -m "Phase 1 Complete: Research & Planning

Deliverables:
- UI Mockups created (main window, dialogs)
- PoC successful: WaveSurfer.js loads waveforms in <2s
- Data Model designed (SQLite schema + TypeScript types)
- Architecture documented (Electron + React + SQLite)
- Test strategy defined (70% unit, 50% integration, 100% critical E2E)
- Test frameworks configured (Vitest, Playwright)

All Phase 1 Quality Gates: PASSED ✅

Next: Phase 2 - Core Implementation

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

git push origin main
```

### Phase 1: Best Practices

**✅ DOs:**

1. **PoC for EVERYTHING new** — 2 hours PoC saves 20 hours debugging later
2. **Low-Fidelity Mockups** — ASCII art or pencil sketch is enough!
3. **Data Model FIRST** — Database schema influences everything else
4. **Test Setup NOW** — "Later" never happens
5. **Document Decisions** — "Why WaveSurfer instead of Peaks.js?"
6. **Show Mockups to Stakeholders** — Feedback in Phase 1 is cheap!

**❌ DON'Ts:**

1. **DON'T make perfect mockups** — They will change!
2. **DON'T commit without PoC** — "I think it will work" is not a strategy
3. **DON'T include all features in Phase 1** — Focus on critical features
4. **DON'T create complex test setups** — Unit + E2E is enough for Phase 1
5. **DON'T stay long in Phase 1** — 1-2 weeks maximum!

---


## Phase 2: Core Implementation

**Status:** The main implementation phase
**Duration:** 30-50% of total project time
**Team:** All Developers

### Goals

Phase 2 is where the **real code** is created. Here you implement the core features defined in the Project Charter.

**Core Deliverables:**
1. ✅ Minimum Viable Product (MVP) Features
2. ✅ Core Business Logic
3. ✅ Database Integration
4. ✅ UI Components (functional, not perfect)
5. ✅ Unit Tests (≥70% Coverage)
6. ✅ Integration Tests (critical flows)

**Important:** Phase 2 code must be **FUNCTIONAL** but NOT perfect. "Polish" comes in Phase 4!

### Phase 2.1: Session-driven Development Pattern

**Activity:** Use Session YAML for every dev session

**Session Workflow:**

```bash
# 1. Start session
node scripts/session-start.js

# Output:
# ✅ Session started: .continuity/sessions/2026-01-31_session-003.yml
# 📝 Goals: Implement AudioPlayer Component

# 2. Work with AI Assistant
# "Help me implement an AudioPlayer React component with play/pause/seek"

# 3. Write code + commit
git add src/components/AudioPlayer.tsx
git commit -m "Implement AudioPlayer component

Features:
- Play/pause toggle
- Seek functionality
- Current time display

Tests: AudioPlayer.test.tsx (85% coverage)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# 4. Update Session YAML
cat >> .continuity/sessions/2026-01-31_session-003.yml <<EOF
commits:
  - hash: "e5f8a32"
    message: "Implement AudioPlayer component"

files_created:
  - "src/components/AudioPlayer.tsx"
  - "src/components/AudioPlayer.test.tsx"

achievements:
  - "✅ AudioPlayer plays/pauses audio"
  - "✅ Seek functionality works"
  - "✅ Unit tests pass (85% coverage)"

blockers: []
EOF

# 5. End session
node scripts/session-end.js

# Output:
# ✅ Session ended: 2026-01-31_session-003 (duration: 2.5h)
# 📊 Commits: 1, Files: 2, Coverage: 85%
# 🎯 Next: Implement LyricsEditor component
```

### Phase 2.2: Feature-by-Feature Implementation (Iterative!)

**Important:** DON'T implement all features simultaneously. A feature-by-feature strategy is better.

**Feature Order (SongSync Example):**

```markdown
## Implementation Order

### Week 3: Audio Foundation
1. [x] AudioPlayer Component (play/pause/seek)
2. [x] Waveform Visualization (WaveSurfer.js integration)
3. [x] File Import (MP3/WAV)

**Quality Gate:** User can import audio and play it

### Week 4: Lyrics Basics
4. [x] LyricsEditor Component (text input)
5. [x] Add/Remove Lyric Lines
6. [x] Display lyrics list

**Quality Gate:** User can enter and edit lyrics

### Week 5: Timing Sync
7. [x] Capture Timestamp (keyboard shortcut)
8. [x] Sync Lyrics with Audio (highlight current line)
9. [x] Edit Timestamp (manual adjustment)

**Quality Gate:** User can add timing to lyrics

### Week 6: Persistence
10. [x] SQLite Integration (save/load)
11. [x] Project Management (create/open/save)
12. [x] Recent Files List

**Quality Gate:** User can save project and reopen later
```

**Advantages of this strategy:**
- ✅ Every week has a **demo-able feature**
- ✅ Early feedback possible
- ✅ Fewer merge conflicts (clear feature boundaries)
- ✅ Motivation through visible progress

### Phase 2.3: Test-Driven Development (TDD) Pattern

**Activity:** Write tests BEFORE (or parallel to) implementation

**TDD Workflow (Red-Green-Refactor):**

```typescript
// STEP 1: RED (Write test that fails)

// src/utils/formatTime.test.ts
import { describe, it, expect } from 'vitest';
import { formatTime } from './formatTime';

describe('formatTime', () => {
  it('formats seconds to MM:SS', () => {
    expect(formatTime(0)).toBe('00:00');
    expect(formatTime(65)).toBe('01:05');
    expect(formatTime(3661)).toBe('61:01');
  });
});

// ❌ Test fails: formatTime is not defined

// STEP 2: GREEN (Minimal code to make test pass)

// src/utils/formatTime.ts
export function formatTime(seconds: number): string {
  const mins = Math.floor(seconds / 60);
  const secs = Math.floor(seconds % 60);
  return `${String(mins).padStart(2, '0')}:${String(secs).padStart(2, '0')}`;
}

// ✅ Test passes

// STEP 3: REFACTOR (Improve code, tests stay green)

// src/utils/formatTime.ts (improved)
export function formatTime(seconds: number): string {
  // Handle edge cases
  if (seconds < 0 || isNaN(seconds)) {
    return '00:00';
  }

  const mins = Math.floor(seconds / 60);
  const secs = Math.floor(seconds % 60);

  return [mins, secs]
    .map(val => String(val).padStart(2, '0'))
    .join(':');
}

// ✅ Tests still pass, code is cleaner
```

**TDD for React Components:**

```typescript
// STEP 1: RED

// src/components/AudioPlayer.test.tsx
import { describe, it, expect, vi } from 'vitest';
import { render, screen, fireEvent } from '@testing-library/react';
import { AudioPlayer } from './AudioPlayer';

describe('AudioPlayer', () => {
  it('renders play button initially', () => {
    render(<AudioPlayer audioUrl="/test.mp3" />);
    expect(screen.getByRole('button', { name: /play/i })).toBeInTheDocument();
  });

  it('toggles to pause button when playing', () => {
    render(<AudioPlayer audioUrl="/test.mp3" />);

    const playButton = screen.getByRole('button', { name: /play/i });
    fireEvent.click(playButton);

    expect(screen.getByRole('button', { name: /pause/i })).toBeInTheDocument();
  });
});

// ❌ Test fails: AudioPlayer component doesn't exist

// STEP 2: GREEN

// src/components/AudioPlayer.tsx
import { useState } from 'react';

interface AudioPlayerProps {
  audioUrl: string;
}

export function AudioPlayer({ audioUrl }: AudioPlayerProps) {
  const [isPlaying, setIsPlaying] = useState(false);

  const handlePlayPause = () => {
    setIsPlaying(!isPlaying);
    // TODO: Actually control audio playback
  };

  return (
    <div>
      <button onClick={handlePlayPause}>
        {isPlaying ? 'Pause' : 'Play'}
      </button>
    </div>
  );
}

// ✅ Tests pass

// STEP 3: REFACTOR (Add real audio control)

// src/components/AudioPlayer.tsx (with real audio)
import { useState, useRef, useEffect } from 'react';

export function AudioPlayer({ audioUrl }: AudioPlayerProps) {
  const [isPlaying, setIsPlaying] = useState(false);
  const audioRef = useRef<HTMLAudioElement>(null);

  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    if (isPlaying) {
      audio.play();
    } else {
      audio.pause();
    }
  }, [isPlaying]);

  return (
    <div>
      <audio ref={audioRef} src={audioUrl} />
      <button onClick={() => setIsPlaying(!isPlaying)}>
        {isPlaying ? 'Pause' : 'Play'}
      </button>
    </div>
  );
}

// ✅ Tests still pass, real audio control added
```


### Phase 2.4: AI-Assisted Implementation Pattern

**Activity:** Use AI assistants effectively

**Good AI Prompts (Specific!):**

```
✅ GOOD:
"Implement a React component called AudioPlayer with the following requirements:
- Accept audioUrl prop (string)
- Display play/pause button
- Show current time and duration in MM:SS format
- Support keyboard shortcut: Space = play/pause
- Use HTML5 Audio API (not external library)
- Include TypeScript types
- Write unit tests with Vitest + React Testing Library"

❌ BAD:
"Make an audio player"
```

**Iterative AI Workflow:**

```
# Round 1: Basic structure
You: "Create AudioPlayer component skeleton with props and basic JSX"
AI: [generates basic component]

# Round 2: Add functionality
You: "Add play/pause functionality using useRef and Audio API"
AI: [adds audio control logic]

# Round 3: Improve UI
You: "Add seek bar (input type='range') that syncs with audio currentTime"
AI: [adds seek functionality]

# Round 4: Add tests
You: "Write unit tests for AudioPlayer covering play/pause and seek"
AI: [generates tests]

# Round 5: Edge cases
You: "Add error handling for invalid audio URLs and display error message"
AI: [adds error handling]
```

**AI Pair Programming Pattern:**

```typescript
// 1. Describe the problem to AI
/*
Problem: I need to sync lyrics display with audio playback.
When audio plays, the current lyric line should be highlighted based on timestamp.

Current State:
- I have lyrics array: Lyric[] with timestampSeconds
- I have audio currentTime from audioRef.current.currentTime
- I need to find which lyric line matches current time

Requirements:
- Update highlighted line every 100ms (while playing)
- Handle edge case: lyrics without timestamps
- Performance: O(log n) lookup preferred (binary search?)
*/

// 2. AI generates solution
// src/hooks/useCurrentLyric.ts
import { useState, useEffect } from 'react';
import type { Lyric } from '../types';

export function useCurrentLyric(
  lyrics: Lyric[],
  currentTime: number,
  isPlaying: boolean
) {
  const [currentLyricId, setCurrentLyricId] = useState<number | null>(null);

  useEffect(() => {
    if (!isPlaying) return;

    const interval = setInterval(() => {
      // Binary search for efficiency
      const index = lyrics.findIndex((lyric, i) => {
        const nextLyric = lyrics[i + 1];
        return (
          lyric.timestampSeconds !== null &&
          lyric.timestampSeconds <= currentTime &&
          (!nextLyric || nextLyric.timestampSeconds! > currentTime)
        );
      });

      setCurrentLyricId(index >= 0 ? lyrics[index].id : null);
    }, 100);

    return () => clearInterval(interval);
  }, [lyrics, currentTime, isPlaying]);

  return currentLyricId;
}

// 3. You review, test, and integrate
```

### Phase 2.5: Database Integration Pattern

**Activity:** Implement persistence layer

**Example (SQLite with better-sqlite3):**

```typescript
// src/database/client.ts
import Database from 'better-sqlite3';
import { app } from 'electron';
import path from 'path';

// Initialize database
const dbPath = path.join(app.getPath('userData'), 'songsync.db');
export const db = new Database(dbPath);

// Enable foreign keys
db.pragma('foreign_keys = ON');

// Run migrations
import { runMigrations } from './migrations';
runMigrations(db);

// src/database/projects.ts
import { db } from './client';
import type { Project, Lyric } from '../types';

export function createProject(data: Omit<Project, 'id' | 'createdAt' | 'updatedAt'>): Project {
  const stmt = db.prepare(`
    INSERT INTO projects (name, audio_file_path, audio_duration_seconds)
    VALUES (?, ?, ?)
  `);

  const result = stmt.run(data.name, data.audioFilePath, data.audioDurationSeconds);

  return {
    id: result.lastInsertRowid as number,
    ...data,
    createdAt: new Date(),
    updatedAt: new Date()
  };
}

export function getProject(id: number): Project & { lyrics: Lyric[] } {
  const project = db.prepare('SELECT * FROM projects WHERE id = ?').get(id) as Project;

  const lyrics = db.prepare('SELECT * FROM lyrics WHERE project_id = ? ORDER BY line_number').all(id) as Lyric[];

  return { ...project, lyrics };
}

export function updateProject(id: number, data: Partial<Project>): void {
  const fields = Object.keys(data).map(key => `${key} = ?`).join(', ');
  const values = Object.values(data);

  db.prepare(`UPDATE projects SET ${fields}, updated_at = CURRENT_TIMESTAMP WHERE id = ?`)
    .run(...values, id);
}

export function deleteProject(id: number): void {
  db.prepare('DELETE FROM projects WHERE id = ?').run(id);
}

// src/database/lyrics.ts
export function addLyric(projectId: number, text: string, lineNumber: number): Lyric {
  const stmt = db.prepare(`
    INSERT INTO lyrics (project_id, line_number, text)
    VALUES (?, ?, ?)
  `);

  const result = stmt.run(projectId, lineNumber, text);

  return {
    id: result.lastInsertRowid as number,
    projectId,
    lineNumber,
    text,
    timestampSeconds: null
  };
}

export function updateLyricTimestamp(id: number, timestamp: number): void {
  db.prepare('UPDATE lyrics SET timestamp_seconds = ? WHERE id = ?').run(timestamp, id);
}
```

**Electron IPC Integration (Main ↔ Renderer):**

```typescript
// electron/main.ts (Main Process)
import { ipcMain } from 'electron';
import * as ProjectDB from './database/projects';

// Handle IPC calls from renderer
ipcMain.handle('project:create', async (event, data) => {
  return ProjectDB.createProject(data);
});

ipcMain.handle('project:get', async (event, id) => {
  return ProjectDB.getProject(id);
});

ipcMain.handle('project:update', async (event, id, data) => {
  ProjectDB.updateProject(id, data);
});

ipcMain.handle('project:delete', async (event, id) => {
  ProjectDB.deleteProject(id);
});

// src/api/projects.ts (Renderer Process)
// Preload script exposes IPC to renderer
declare global {
  interface Window {
    api: {
      project: {
        create: (data: any) => Promise<Project>;
        get: (id: number) => Promise<Project>;
        update: (id: number, data: any) => Promise<void>;
        delete: (id: number) => Promise<void>;
      };
    };
  }
}

export const projectApi = window.api.project;

// Usage in React component
import { projectApi } from '../api/projects';

function MyComponent() {
  const handleSave = async () => {
    await projectApi.create({
      name: 'My Project',
      audioFilePath: '/path/to/audio.mp3',
      audioDurationSeconds: 180
    });
  };
}
```

### Phase 2.6: State Management Pattern

**Activity:** Implement global state (Zustand, Redux, Context)

**Example (Zustand Store):**

```typescript
// src/store/projectStore.ts
import { create } from 'zustand';
import type { Project, Lyric } from '../types';
import { projectApi } from '../api/projects';

interface ProjectState {
  currentProject: (Project & { lyrics: Lyric[] }) | null;
  isLoading: boolean;
  error: string | null;

  // Actions
  loadProject: (id: number) => Promise<void>;
  saveProject: () => Promise<void>;
  addLyric: (text: string) => void;
  updateLyricTimestamp: (lyricId: number, timestamp: number) => void;
  removeLyric: (lyricId: number) => void;
}

export const useProjectStore = create<ProjectState>((set, get) => ({
  currentProject: null,
  isLoading: false,
  error: null,

  loadProject: async (id) => {
    set({ isLoading: true, error: null });
    try {
      const project = await projectApi.get(id);
      set({ currentProject: project, isLoading: false });
    } catch (error) {
      set({ error: error.message, isLoading: false });
    }
  },

  saveProject: async () => {
    const { currentProject } = get();
    if (!currentProject) return;

    set({ isLoading: true });
    try {
      await projectApi.update(currentProject.id, {
        name: currentProject.name,
        // ... other fields
      });
      set({ isLoading: false });
    } catch (error) {
      set({ error: error.message, isLoading: false });
    }
  },

  addLyric: (text) => {
    const { currentProject } = get();
    if (!currentProject) return;

    const newLyric: Lyric = {
      id: Date.now(), // Temporary ID
      projectId: currentProject.id,
      lineNumber: currentProject.lyrics.length + 1,
      text,
      timestampSeconds: null
    };

    set({
      currentProject: {
        ...currentProject,
        lyrics: [...currentProject.lyrics, newLyric]
      }
    });
  },

  updateLyricTimestamp: (lyricId, timestamp) => {
    const { currentProject } = get();
    if (!currentProject) return;

    set({
      currentProject: {
        ...currentProject,
        lyrics: currentProject.lyrics.map(lyric =>
          lyric.id === lyricId
            ? { ...lyric, timestampSeconds: timestamp }
            : lyric
        )
      }
    });
  },

  removeLyric: (lyricId) => {
    const { currentProject } = get();
    if (!currentProject) return;

    set({
      currentProject: {
        ...currentProject,
        lyrics: currentProject.lyrics.filter(lyric => lyric.id !== lyricId)
      }
    });
  }
}));

// Usage in component
import { useProjectStore } from '../store/projectStore';

function LyricsEditor() {
  const { currentProject, addLyric, updateLyricTimestamp } = useProjectStore();

  const handleAddLine = () => {
    addLyric('New lyric line');
  };

  const handleSetTimestamp = (lyricId: number) => {
    const timestamp = audioRef.current?.currentTime ?? 0;
    updateLyricTimestamp(lyricId, timestamp);
  };

  return (
    <div>
      {currentProject?.lyrics.map(lyric => (
        <div key={lyric.id}>
          <span>{lyric.text}</span>
          <button onClick={() => handleSetTimestamp(lyric.id)}>
            Set Timestamp
          </button>
        </div>
      ))}
      <button onClick={handleAddLine}>Add Line</button>
    </div>
  );
}
```

### Phase 2 Quality Gates

**Before proceeding to Phase 3:**

- [ ] **MVP features are implemented** (defined in Project Charter)
- [ ] **Unit Tests: ≥70% Coverage** (automatically checked in CI/CD)
- [ ] **Integration Tests: Critical flows work**
- [ ] **Database integration works** (save/load/update/delete)
- [ ] **UI is functional** (not perfect, but usable)
- [ ] **No critical bugs** (app starts, no crashes in normal use)
- [ ] **Code review performed** (if team project)

**Quality Gate Check (automated):**

```bash
# Run all checks
npm run check:phase-2

# Example implementation:
#!/bin/bash
echo "🔍 Phase 2 Quality Gate Check..."

# 1. Unit Tests
echo "Running unit tests..."
npm test -- --coverage
COVERAGE=$(jq '.total.lines.pct' coverage/coverage-summary.json)

if (( $(echo "$COVERAGE < 70" | bc -l) )); then
  echo "❌ FAIL: Coverage $COVERAGE% (required: ≥70%)"
  exit 1
fi
echo "✅ PASS: Coverage $COVERAGE%"

# 2. Integration Tests
echo "Running integration tests..."
npm run test:integration
if [ $? -ne 0 ]; then
  echo "❌ FAIL: Integration tests failed"
  exit 1
fi
echo "✅ PASS: Integration tests"

# 3. Lint
echo "Running linter..."
npm run lint
if [ $? -ne 0 ]; then
  echo "❌ FAIL: Linting errors found"
  exit 1
fi
echo "✅ PASS: No linting errors"

# 4. Build
echo "Building application..."
npm run build
if [ $? -ne 0 ]; then
  echo "❌ FAIL: Build failed"
  exit 1
fi
echo "✅ PASS: Build successful"

echo ""
echo "🎉 Phase 2 Quality Gate: PASSED ✅"
echo "Ready for Phase 3: Feature Expansion"
```

**Phase 2 Commit:**

```bash
git add .
git commit -m "Phase 2 Complete: Core Implementation

MVP Features Implemented:
- AudioPlayer component (play/pause/seek)
- Waveform visualization (WaveSurfer.js)
- LyricsEditor component (add/edit/remove lines)
- Timestamp synchronization
- SQLite persistence (save/load/update/delete)
- Project management (create/open/save)

Quality Metrics:
- Unit Tests: 76% coverage (target: ≥70%) ✅
- Integration Tests: 5/5 passing ✅
- Build: Successful ✅
- Linting: 0 errors ✅

All Phase 2 Quality Gates: PASSED ✅

Next: Phase 3 - Feature Expansion

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

git push origin main
```

### Phase 2: Best Practices

**✅ DOs:**

1. **Feature-by-Feature** — Not everything at once!
2. **Test DURING implementation** — Not "later"
3. **Commit often** — Small, atomic commits (1 feature = 1 commit)
4. **Update Session YAML** — After each commit
5. **AI Pair Programming** — Use AI for boilerplate + tests
6. **Code Review (if team)** — Every day a PR
7. **Demo regularly** — Stakeholders want to see progress!

**❌ DON'Ts:**

1. **DON'T be perfectionist** — "Good enough" for Phase 2
2. **DON'T implement all features** — Focus on MVP (Charter-defined)
3. **DON'T skip tests** — "I'll test later" = Never
4. **DON'T have long branches** — Merge daily (trunk-based development)
5. **DON'T skip CI/CD** — "Works on my machine" is not enough
6. **DON'T allow feature creep** — "Just quickly..." leads to chaos

---

## Phase 3: Feature Expansion

**Status:** After MVP, BEFORE polish
**Duration:** 20-30% of total project time
**Team:** All Developers

### Goals

Phase 3 is where you add **nice-to-have features** defined in the Charter as "V1.0 Features" but not part of the absolute MVP.

**Core Deliverables:**
1. ✅ Secondary Features (Keyboard Shortcuts, Undo/Redo, etc.)
2. ✅ Export Functionality (various formats)
3. ✅ User Convenience Features (Recent Files, Templates)
4. ✅ Performance Optimizations (first round)
5. ✅ Extended Tests (edge cases)

### Feature Examples (SongSync)

**1. Keyboard Shortcuts:**
```typescript
// src/hooks/useKeyboardShortcuts.ts
import { useEffect } from 'react';

export function useKeyboardShortcuts(handlers: Record<string, () => void>) {
  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      const key = event.key.toLowerCase();
      const ctrl = event.ctrlKey || event.metaKey;

      if (key === ' ') {
        event.preventDefault();
        handlers.playPause?.();
      } else if (ctrl && key === 's') {
        event.preventDefault();
        handlers.save?.();
      } else if (ctrl && key === 'o') {
        event.preventDefault();
        handlers.open?.();
      } else if (ctrl && key === 'z') {
        event.preventDefault();
        handlers.undo?.();
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [handlers]);
}

// Usage:
useKeyboardShortcuts({
  playPause: () => setIsPlaying(!isPlaying),
  save: () => saveProject(),
  open: () => openFileDialog(),
  undo: () => undo()
});
```

**2. Undo/Redo System:**
```typescript
// src/hooks/useHistory.ts
import { useState, useCallback } from 'react';

export function useHistory<T>(initialState: T) {
  const [history, setHistory] = useState<T[]>([initialState]);
  const [currentIndex, setCurrentIndex] = useState(0);

  const setState = useCallback((newState: T) => {
    setHistory(prev => [...prev.slice(0, currentIndex + 1), newState]);
    setCurrentIndex(prev => prev + 1);
  }, [currentIndex]);

  const undo = useCallback(() => {
    if (currentIndex > 0) {
      setCurrentIndex(prev => prev - 1);
    }
  }, [currentIndex]);

  const redo = useCallback(() => {
    if (currentIndex < history.length - 1) {
      setCurrentIndex(prev => prev + 1);
    }
  }, [currentIndex, history.length]);

  return {
    state: history[currentIndex],
    setState,
    undo,
    redo,
    canUndo: currentIndex > 0,
    canRedo: currentIndex < history.length - 1
  };
}
```

**3. Export Functionality (Multiple Formats):**
```typescript
// src/export/formats.ts
import type { Project, Lyric } from '../types';

export interface ExportFormat {
  name: string;
  extension: string;
  export: (project: Project, lyrics: Lyric[]) => string;
}

// JSON Format
export const jsonFormat: ExportFormat = {
  name: 'JSON',
  extension: '.json',
  export: (project, lyrics) => {
    return JSON.stringify({ project, lyrics }, null, 2);
  }
};

// SRT Format (Subtitle)
export const srtFormat: ExportFormat = {
  name: 'SRT Subtitle',
  extension: '.srt',
  export: (project, lyrics) => {
    return lyrics
      .filter(l => l.timestampSeconds !== null)
      .map((lyric, index) => {
        const start = formatSRTTime(lyric.timestampSeconds!);
        const end = formatSRTTime(lyric.timestampSeconds! + 3); // 3 sec default
        return `${index + 1}\n${start} --> ${end}\n${lyric.text}\n`;
      })
      .join('\n');
  }
};

// LRC Format (Lyrics)
export const lrcFormat: ExportFormat = {
  name: 'LRC Lyrics',
  extension: '.lrc',
  export: (project, lyrics) => {
    return lyrics
      .filter(l => l.timestampSeconds !== null)
      .map(lyric => {
        const time = formatLRCTime(lyric.timestampSeconds!);
        return `[${time}]${lyric.text}`;
      })
      .join('\n');
  }
};

function formatSRTTime(seconds: number): string {
  const h = Math.floor(seconds / 3600);
  const m = Math.floor((seconds % 3600) / 60);
  const s = Math.floor(seconds % 60);
  const ms = Math.floor((seconds % 1) * 1000);
  return `${pad(h, 2)}:${pad(m, 2)}:${pad(s, 2)},${pad(ms, 3)}`;
}

function formatLRCTime(seconds: number): string {
  const m = Math.floor(seconds / 60);
  const s = Math.floor(seconds % 60);
  const cs = Math.floor((seconds % 1) * 100);
  return `${pad(m, 2)}:${pad(s, 2)}.${pad(cs, 2)}`;
}
```

### Phase 3 Quality Gates

- [ ] **Secondary features implemented** (at least 80% from Charter)
- [ ] **Export works** (all formats validated)
- [ ] **Keyboard shortcuts work** (documented in README)
- [ ] **Unit Tests: ≥75% Coverage** (increased from 70%)
- [ ] **Performance: No regression** (load times ≤ Phase 2 times)

---

## Phase 4: Polish & Optimization

**Status:** Functionality complete, now "make it pretty"
**Duration:** 10-20% of total project time
**Team:** Developers + (optional) Designer

### Goals

Phase 4 is **"Make it pretty and fast"**. Here you improve UI/UX and performance.

**Core Deliverables:**
1. ✅ UI/UX Polish (Loading States, Error Messages, Animations)
2. ✅ Performance Optimization (Profiling + Fixes)
3. ✅ Accessibility (Keyboard Navigation, Screen Reader)
4. ✅ Dark Mode (if desired)
5. ✅ Responsive Design (if web app)

### UI/UX Polish Checklist

**Loading States:**
```typescript
// Before (Phase 2/3)
return projects ? <ProjectList projects={projects} /> : null;

// After (Phase 4)
return (
  <>
    {isLoading && <Spinner />}
    {error && <ErrorMessage error={error} retry={retry} />}
    {projects && <ProjectList projects={projects} />}
    {!isLoading && !error && projects.length === 0 && (
      <EmptyState message="No projects yet. Create your first project!" />
    )}
  </>
);
```

**Error Handling:**
```typescript
// src/components/ErrorBoundary.tsx
import { Component, ErrorInfo, ReactNode } from 'react';

interface Props {
  children: ReactNode;
}

interface State {
  hasError: boolean;
  error?: Error;
}

export class ErrorBoundary extends Component<Props, State> {
  state: State = { hasError: false };

  static getDerivedStateFromError(error: Error): State {
    return { hasError: true, error };
  }

  componentDidCatch(error: Error, errorInfo: ErrorInfo) {
    console.error('Error caught by boundary:', error, errorInfo);
    // Optional: Send to error tracking service (Sentry, etc.)
  }

  render() {
    if (this.state.hasError) {
      return (
        <div className="error-page">
          <h1>Something went wrong</h1>
          <p>{this.state.error?.message}</p>
          <button onClick={() => window.location.reload()}>
            Reload Application
          </button>
        </div>
      );
    }

    return this.props.children;
  }
}
```

### Performance Optimization

**1. Profiling (React DevTools):**
```bash
# Enable React Profiler
npm run dev

# Open React DevTools → Profiler
# Record interaction (e.g., scroll lyrics list)
# Identify slow components
```

**2. Optimization Techniques:**
```typescript
// Memoization (prevent unnecessary re-renders)
import { memo, useMemo, useCallback } from 'react';

const LyricLine = memo(({ lyric, onUpdate }: Props) => {
  return <div>{lyric.text}</div>;
});

// useMemo (expensive calculations)
const sortedLyrics = useMemo(() => {
  return lyrics.sort((a, b) => a.lineNumber - b.lineNumber);
}, [lyrics]);

// useCallback (stable function references)
const handleUpdate = useCallback((id: number, text: string) => {
  updateLyric(id, text);
}, [updateLyric]);

// Lazy Loading (code splitting)
import { lazy, Suspense } from 'react';

const ExportDialog = lazy(() => import('./ExportDialog'));

function App() {
  return (
    <Suspense fallback={<Spinner />}>
      {showExportDialog && <ExportDialog />}
    </Suspense>
  );
}
```

### Accessibility (A11y)

```typescript
// Keyboard Navigation
<button
  aria-label="Play audio"
  onClick={handlePlay}
  onKeyDown={(e) => {
    if (e.key === 'Enter' || e.key === ' ') {
      handlePlay();
    }
  }}
>
  <PlayIcon />
</button>

// Screen Reader Support
<div role="region" aria-label="Lyrics editor">
  {lyrics.map(lyric => (
    <div
      key={lyric.id}
      role="listitem"
      aria-label={`Lyric line ${lyric.lineNumber}: ${lyric.text}`}
    >
      {lyric.text}
    </div>
  ))}
</div>

// Focus Management
const inputRef = useRef<HTMLInputElement>(null);

useEffect(() => {
  inputRef.current?.focus();
}, [isModalOpen]);
```

### Phase 4 Quality Gates

- [ ] **Loading states everywhere** (no "blank screens")
- [ ] **Error handling robust** (no uncaught exceptions)
- [ ] **Performance: ≥90 Lighthouse Score** (if web app)
- [ ] **Accessibility: 0 critical issues** (axe DevTools)
- [ ] **Dark mode works** (if desired)

---

## Phase 5: Hardening & Testing

**Status:** Feature-complete, now "make it bulletproof"
**Duration:** 10-15% of total project time
**Team:** QA + Developers

### Goals

Phase 5 is **"Break it before users do"**. Comprehensive testing + bug fixing.

**Core Deliverables:**
1. ✅ E2E Tests (all critical user flows)
2. ✅ Cross-Platform Testing (Windows, Mac, Linux)
3. ✅ Security Audit (dependencies + code)
4. ✅ Performance Testing (stress tests)
5. ✅ Bug Fixing (all critical + high bugs)

### E2E Test Suite

```typescript
// e2e/critical-flows.spec.ts
import { test, expect } from '@playwright/test';

test.describe('Critical User Flows', () => {
  test('full workflow: import → edit → save → load', async ({ page }) => {
    // 1. Import audio
    await page.goto('/');
    await page.click('[data-testid="import-btn"]');
    await page.setInputFiles('input[type="file"]', './fixtures/test-audio.mp3');
    await expect(page.locator('[data-testid="waveform"]')).toBeVisible();

    // 2. Add lyrics
    await page.fill('[data-testid="lyric-input"]', 'First line');
    await page.click('[data-testid="add-lyric-btn"]');
    await expect(page.locator('text=First line')).toBeVisible();

    // 3. Set timestamp
    await page.click('[data-testid="play-btn"]');
    await page.waitForTimeout(2000);
    await page.click('[data-testid="set-timestamp-btn"]');
    await expect(page.locator('[data-testid="timestamp"]')).toContainText('00:02');

    // 4. Save project
    await page.click('[data-testid="save-btn"]');
    await page.fill('[data-testid="project-name"]', 'Test Project');
    await page.click('[data-testid="confirm-save-btn"]');
    await expect(page.locator('text=Saved successfully')).toBeVisible();

    // 5. Load project
    await page.reload();
    await page.click('[data-testid="open-btn"]');
    await page.click('text=Test Project');
    await expect(page.locator('text=First line')).toBeVisible();
    await expect(page.locator('[data-testid="timestamp"]')).toContainText('00:02');
  });
});
```

### Security Audit

```bash
# Dependency Audit
npm audit --audit-level=moderate

# Fix vulnerabilities
npm audit fix

# Update dependencies
npm update

# Check for outdated packages
npm outdated
```

### Cross-Platform Testing

```yaml
# .github/workflows/cross-platform-test.yml
name: Cross-Platform Test

on: [push, pull_request]

jobs:
  test:
    strategy:
      matrix:
        os: [ubuntu-latest, windows-latest, macos-latest]
        node: [20.x]

    runs-on: ${{ matrix.os }}

    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node }}

      - run: npm ci
      - run: npm test
      - run: npm run build

      - name: E2E Tests
        run: npm run test:e2e
```

### Phase 5 Quality Gates

- [ ] **E2E Tests: 100% critical flows** (automated)
- [ ] **Security: 0 high/critical vulnerabilities**
- [ ] **Cross-Platform: Tested on Win/Mac/Linux**
- [ ] **Performance: Stress test passed** (1000 lyrics, 100 MB audio)
- [ ] **Critical Bugs: 0** (all fixed)

---

## Phase 6: Documentation & Maintenance

**Status:** Release-ready
**Duration:** 5-10% of total project time + ongoing
**Team:** All

### Goals

Phase 6 is **"Make it usable and maintainable"**. Documentation + release.

**Core Deliverables:**
1. ✅ User Documentation (README, Tutorials)
2. ✅ Developer Documentation (CONTRIBUTING, Architecture)
3. ✅ Release Notes
4. ✅ GitHub Release (v1.0.0)
5. ✅ Community Setup (Discussions, Issue Templates)

### README.md (User-Facing)

```markdown
# SongSync Desktop App

Sync lyrics with audio timing for musicians and podcasters.

## Features
- 🎵 Import MP3/WAV audio files
- 📝 Add and edit lyrics
- ⏱️ Sync lyrics with audio timestamps
- 💾 Save projects locally (SQLite)
- 📤 Export to JSON, SRT, LRC formats
- ⌨️ Keyboard shortcuts (Space = play/pause, Ctrl+S = save)
- 🌙 Dark mode support

## Installation

### Download Pre-built Binaries
- [Windows (64-bit)](https://github.com/user/songsync/releases/latest/SongSync-Setup.exe)
- [macOS (Intel + Apple Silicon)](https://github.com/user/songsync/releases/latest/SongSync.dmg)
- [Linux (AppImage)](https://github.com/user/songsync/releases/latest/SongSync.AppImage)

### Build from Source
\`\`\`bash
git clone https://github.com/user/songsync-desktop.git
cd songsync-desktop
npm install
npm run build
\`\`\`

## Quick Start
1. Launch SongSync
2. Click "Import Audio" and select your MP3/WAV file
3. Type your lyrics in the editor
4. Press Space to play audio
5. Click "Set Timestamp" when audio reaches the correct moment
6. Save your project (Ctrl+S)
7. Export to your preferred format (File → Export)

## Keyboard Shortcuts
| Shortcut | Action |
|----------|--------|
| Space | Play/Pause |
| Ctrl+S | Save Project |
| Ctrl+O | Open Project |
| Ctrl+E | Export |
| Ctrl+Z | Undo |
| Ctrl+Y | Redo |

## Troubleshooting
See [TROUBLESHOOTING.md](TROUBLESHOOTING.md)

## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md)

## License
MIT License - see [LICENSE.md](LICENSE.md)
```

### CONTRIBUTING.md (Developer-Facing)

```markdown
# Contributing to SongSync

## Development Setup
\`\`\`bash
# Clone repository
git clone https://github.com/user/songsync-desktop.git
cd songsync-desktop

# Install dependencies
npm install

# Run development server
npm run dev

# Run tests
npm test
npm run test:e2e
\`\`\`

## Architecture
See [ARCHITECTURE.md](docs/ARCHITECTURE.md)

## Coding Standards
- TypeScript strict mode
- ESLint + Prettier for formatting
- 70% minimum test coverage
- Write tests for all new features

## Pull Request Process
1. Create feature branch: `git checkout -b feature/my-feature`
2. Make changes + write tests
3. Run `npm run check:all` (lint + test + build)
4. Push and create Pull Request
5. Wait for CI/CD checks to pass
6. Request review from maintainers

## Testing
\`\`\`bash
# Unit tests
npm test

# E2E tests
npm run test:e2e

# Coverage report
npm test -- --coverage
\`\`\`

## Commit Convention
We use [Conventional Commits](https://www.conventionalcommits.org/):
- `feat: Add export to LRC format`
- `fix: Resolve audio sync issue`
- `docs: Update README installation steps`
- `test: Add E2E test for save workflow`
```

### Release Process

```bash
# 1. Update version
npm version 1.0.0 -m "Release v1.0.0"

# 2. Build for all platforms
npm run build:all

# 3. Create GitHub Release
gh release create v1.0.0 \
  --title "SongSync v1.0.0" \
  --notes "$(cat RELEASE_NOTES.md)" \
  dist/SongSync-Setup.exe \
  dist/SongSync.dmg \
  dist/SongSync.AppImage

# 4. Push tags
git push --tags
```

### Phase 6 Quality Gates

- [ ] **README.md complete** (installation + quick start)
- [ ] **CONTRIBUTING.md exists**
- [ ] **Release notes written**
- [ ] **GitHub release created** (v1.0.0)
- [ ] **All documentation current**

---

## Summary: 6-Phase Architecture

| Phase | Duration | Focus | Deliverables |
|-------|-------|-------|--------------|
| **Phase 0** | 5-20% | Foundation | Charter, Tech Stack, Plan, Git Setup |
| **Phase 1** | 5-15% | Research | Mockups, PoC, Data Model, Test Setup |
| **Phase 2** | 30-50% | Core Implementation | MVP Features, Tests, Database |
| **Phase 3** | 20-30% | Feature Expansion | Secondary Features, Export, Shortcuts |
| **Phase 4** | 10-20% | Polish | UI/UX, Performance, Accessibility |
| **Phase 5** | 10-15% | Hardening | E2E Tests, Security, Bug Fixes |
| **Phase 6** | 5-10% | Documentation | README, Release, Community |

**Total:** 100% (85-160% when accounting for overlap)

**Important:** Phases can overlap! Phase 6 (Documentation) often begins in Phase 2.

---

**End of Part II**

You have now learned:
- ✅ Detailed implementation of all 6 phases
- ✅ Concrete code examples (TypeScript/React/Electron)
- ✅ Quality gates per phase
- ✅ Best practices and common mistakes

**Next Step:** [Part III: Practical Applications](#part-iii-practical-applications) (How to apply the methodology to different project types)

---


# Part III: Practical Applications

**Goal of this part:** You will learn how to apply the 6-phase methodology to different project types, programming languages, and team sizes.

**Content:**
- [Web Applications](#web-applications)
- [Mobile Apps](#mobile-apps)
- [CLI Tools](#cli-tools)
- [Microservices](#microservices)
- [Team Adaptations](#team-adaptations)

---

## Web Applications

### Example: E-Commerce Web App (Next.js + TypeScript)

**Project Charter (Adapted):**
```markdown
## Vision
An online shop for handmade products with Stripe payment integration.

## Success Criteria (V1.0)
- [ ] User can browse products (grid view, filters)
- [ ] User can add products to cart
- [ ] User can pay with Stripe
- [ ] Admin can add/edit products (CMS)
- [ ] Performance: Lighthouse Score ≥90

## Non-Goals (V1.0)
- ❌ Multi-vendor support (V2.0)
- ❌ Internationalization (V1.5)
- ❌ Native mobile app (web-only for V1.0)
```

**Tech Stack Selection:**
```markdown
# Tech Stack: E-Commerce Web App

## Frontend
- **Framework:** Next.js 14 (App Router)
- **Language:** TypeScript
- **Styling:** Tailwind CSS
- **State:** Zustand + React Query

## Backend
- **API:** Next.js API Routes (Serverless)
- **Database:** PostgreSQL (Supabase)
- **ORM:** Prisma
- **Auth:** NextAuth.js
- **Payment:** Stripe

## Hosting
- **Platform:** Vercel (Next.js optimized)
- **Database:** Supabase (managed PostgreSQL)
- **CDN:** Vercel Edge Network

## Testing
- **Unit:** Vitest
- **E2E:** Playwright
- **API:** Supertest
```

**6-Phase Adaptation (Web App):**

| Phase | Web-Specific Activities |
|-------|---------------------------|
| **Phase 0** | Setup Vercel project, Supabase DB, Stripe test account |
| **Phase 1** | UI mockups in Figma, Prisma schema design, API design (REST) |
| **Phase 2** | Product listing, shopping cart (Zustand), Stripe checkout |
| **Phase 3** | Product search, filters, pagination, Admin CMS |
| **Phase 4** | Responsive design (mobile/tablet), image optimization (next/image) |
| **Phase 5** | E2E tests (checkout flow), Stripe webhooks testing |
| **Phase 6** | Deployment Vercel, custom domain, README |

**Key Differences (vs. Desktop App):**
- ✅ SEO important → Server-Side Rendering (Next.js)
- ✅ Responsive design → Mobile-first CSS
- ✅ API design → REST/GraphQL endpoints
- ✅ Deployment → Vercel/Netlify (not Electron-Builder)

---

## Mobile Apps

### Example: Fitness Tracker (React Native + Expo)

**Project Charter (Adapted):**
```markdown
## Vision
A mobile app to track workouts and progress.

## Success Criteria (V1.0)
- [ ] User can log workout (exercise, sets, reps, weight)
- [ ] User can see progress as charts
- [ ] User can create workout templates
- [ ] Offline support (local SQLite DB)
- [ ] iOS + Android support

## Non-Goals (V1.0)
- ❌ Social features (V2.0)
- ❌ Apple Watch/Wear OS integration (V1.5)
```

**Tech Stack Selection:**
```markdown
# Tech Stack: Fitness Tracker Mobile App

## Framework
- **Framework:** React Native (Expo)
- **Language:** TypeScript
- **Navigation:** React Navigation 6

## State & Data
- **State:** Zustand
- **Database:** SQLite (expo-sqlite)
- **Async Storage:** AsyncStorage (expo-secure-store for auth)

## UI/UX
- **UI Library:** React Native Paper
- **Charts:** Victory Native

## Testing
- **Unit:** Jest + React Native Testing Library
- **E2E:** Detox (iOS + Android simulators)

## Deployment
- **iOS:** TestFlight → App Store
- **Android:** Google Play Internal Testing → Production
```

**6-Phase Adaptation (Mobile):**

| Phase | Mobile-Specific Activities |
|-------|-------------------------------|
| **Phase 0** | Expo account setup, App Store developer accounts |
| **Phase 1** | Mobile UI mockups, SQLite schema, navigation structure |
| **Phase 2** | Workout logging screen, SQLite integration, charts |
| **Phase 3** | Workout templates, offline sync, push notifications |
| **Phase 4** | Native animations (react-native-reanimated), haptic feedback |
| **Phase 5** | E2E tests (Detox), device testing (various screen sizes) |
| **Phase 6** | App Store submission, screenshots, privacy policy |

**Key Differences (vs. Web App):**
- ✅ Offline-first → SQLite + local storage
- ✅ Platform specifics → iOS vs. Android UI patterns
- ✅ App Store review → Plan for approval process
- ✅ Performance → 60 FPS target (animations)

---

## CLI Tools

### Example: Code Generator CLI (Go + Cobra)

**Project Charter (Adapted):**
```markdown
## Vision
A CLI tool that generates boilerplate code for various frameworks.

## Success Criteria (V1.0)
- [ ] Generates React component boilerplate
- [ ] Generates Express API route boilerplate
- [ ] Interactive prompts (Inquirer-style)
- [ ] Config file support (.codegen.yaml)
- [ ] Cross-platform (Windows, Mac, Linux)

## Non-Goals (V1.0)
- ❌ GUI interface (CLI only)
- ❌ Plugin system (V2.0)
```

**Tech Stack Selection:**
```markdown
# Tech Stack: Code Generator CLI

## Language
- **Language:** Go 1.21
- **CLI Framework:** Cobra
- **Prompts:** Survey (interactive prompts)

## File Operations
- **Templating:** text/template (Go stdlib)
- **File System:** os, path/filepath (Go stdlib)

## Config
- **Config:** Viper (YAML/JSON)
- **Validation:** go-playground/validator

## Testing
- **Unit:** Go testing package
- **E2E:** Golden file tests (compare generated output)

## Distribution
- **Build:** GoReleaser (cross-platform binaries)
- **Package Managers:** Homebrew, Scoop, APT/YUM
```

**6-Phase Adaptation (CLI):**

| Phase | CLI-Specific Activities |
|-------|----------------------------|
| **Phase 0** | Go module init, Cobra setup, GoReleaser config |
| **Phase 1** | CLI command structure design, template design |
| **Phase 2** | `generate react` command, template engine, file writing |
| **Phase 3** | `generate express` command, config file support, flags |
| **Phase 4** | Colored output (fatih/color), progress bars, better error messages |
| **Phase 5** | Golden file tests, cross-platform testing (Win/Mac/Linux) |
| **Phase 6** | Homebrew formula, README (CLI usage examples) |

**Key Differences (vs. Web/Mobile):**
- ✅ No UI → Focus on UX via clear terminal output
- ✅ Cross-platform critical → Test on all OS
- ✅ Single binary distribution → GoReleaser very helpful
- ✅ Testing → Golden files (snapshot expected output)

**CLI-Specific Best Practices:**
```go
// Good CLI Error Messages
// ❌ BAD:
fmt.Println("Error")

// ✅ GOOD:
fmt.Fprintf(os.Stderr, "❌ Error: template file not found: %s\n", templatePath)
fmt.Fprintf(os.Stderr, "💡 Tip: Run 'codegen init' to create default templates\n")
os.Exit(1)

// Colored Output for Better UX
import "github.com/fatih/color"

color.Green("✅ Component generated successfully!")
color.Yellow("⚠️  Warning: Overwriting existing file")
color.Red("❌ Error: Invalid template syntax")

// Progress Indication
spinner := spinner.New(spinner.CharSets[14], 100*time.Millisecond)
spinner.Suffix = " Generating files..."
spinner.Start()
// ... do work ...
spinner.Stop()
```

---

## Microservices

### Example: Order Service (gRPC + Go)

**Project Charter (Adapted):**
```markdown
## Vision
A microservice for order management in an e-commerce system.

## Success Criteria (V1.0)
- [ ] gRPC API: CreateOrder, GetOrder, ListOrders, CancelOrder
- [ ] Event publishing (order.created, order.cancelled) via RabbitMQ
- [ ] PostgreSQL persistence
- [ ] Distributed tracing (OpenTelemetry)
- [ ] Kubernetes-ready (Helm chart)

## Non-Goals (V1.0)
- ❌ REST API (gRPC only, REST gateway V1.5)
- ❌ Order history service (separate service)
```

**Tech Stack Selection:**
```markdown
# Tech Stack: Order Service (Microservice)

## Language & Framework
- **Language:** Go 1.21
- **RPC:** gRPC + Protocol Buffers
- **HTTP:** (optional) grpc-gateway for REST endpoints

## Data & Messaging
- **Database:** PostgreSQL
- **ORM:** sqlx (lightweight) or GORM
- **Message Queue:** RabbitMQ
- **Cache:** Redis (optional, for read-heavy operations)

## Observability
- **Logging:** Zap (structured logging)
- **Tracing:** OpenTelemetry → Jaeger
- **Metrics:** Prometheus
- **Health Checks:** grpc-health-probe

## Deployment
- **Container:** Docker
- **Orchestration:** Kubernetes
- **Helm Chart:** Custom chart
- **CI/CD:** GitHub Actions → ArgoCD
```

**6-Phase Adaptation (Microservices):**

| Phase | Microservice-Specific Activities |
|-------|-------------------------------------|
| **Phase 0** | Proto file definition, K8s namespace setup |
| **Phase 1** | gRPC service definition, DB schema, event schema |
| **Phase 2** | gRPC handlers, PostgreSQL integration, RabbitMQ publisher |
| **Phase 3** | Event consumers, caching layer (Redis), rate limiting |
| **Phase 4** | Distributed tracing, structured logging, metrics |
| **Phase 5** | Integration tests (with Testcontainers), load tests (K6) |
| **Phase 6** | Helm chart, deployment docs, runbook |

**Key Differences (vs. Monolith):**
- ✅ Service boundaries → Clear gRPC interface
- ✅ Distributed tracing → Essential (not optional)
- ✅ Event-driven → RabbitMQ/Kafka integration
- ✅ Deployment → Kubernetes + Helm

**Microservice-Specific Best Practices:**
```proto
// Proto Definition (Phase 1)
syntax = "proto3";

package order.v1;

service OrderService {
  rpc CreateOrder(CreateOrderRequest) returns (CreateOrderResponse);
  rpc GetOrder(GetOrderRequest) returns (GetOrderResponse);
  rpc ListOrders(ListOrdersRequest) returns (ListOrdersResponse);
  rpc CancelOrder(CancelOrderRequest) returns (CancelOrderResponse);
}

message CreateOrderRequest {
  string user_id = 1;
  repeated OrderItem items = 2;
  string shipping_address = 3;
}

message CreateOrderResponse {
  string order_id = 1;
  OrderStatus status = 2;
  google.protobuf.Timestamp created_at = 3;
}

enum OrderStatus {
  ORDER_STATUS_UNSPECIFIED = 0;
  ORDER_STATUS_PENDING = 1;
  ORDER_STATUS_CONFIRMED = 2;
  ORDER_STATUS_SHIPPED = 3;
  ORDER_STATUS_DELIVERED = 4;
  ORDER_STATUS_CANCELLED = 5;
}
```

---

## Team Adaptations

### Solo Developer (1 Person)

**Adaptations:**
- ✅ **Phase 0:** Minimal (1-2 days), no stakeholder alignment needed
- ✅ **Session YAML:** Simpler (only for your own continuity)
- ✅ **Code Review:** Self-review (or AI review)
- ✅ **Communication:** Minimal (only documentation for "Future You")

**Best Practices:**
```markdown
# Session YAML (Solo, simplified)
session_id: 2026-01-31_session-001
goals: "Implement user authentication"
achievements:
  - "✅ JWT auth works"
  - "✅ Login/logout endpoints"
next: "Add password reset functionality"
```

### Small Team (2-5 People)

**Adaptations:**
- ✅ **Phase 0:** Charter alignment (1-2 meetings)
- ✅ **Session YAML:** Include developer name
- ✅ **Code Review:** Peer review (1 reviewer)
- ✅ **Communication:** Daily standups (async via Slack)

**Best Practices:**
```markdown
# Session YAML (Small Team)
session_id: 2026-01-31_dev-alice_002
developer: alice
goals: "Implement payment integration"
handoff_to: bob  # Next developer
handoff_notes: |
  - Stripe webhook not yet tested
  - TODO: Add retry logic for failed payments
```

### Medium Team (5-15 People)

**Adaptations:**
- ✅ **Phase 0:** Formal charter approval (meeting + document sign-off)
- ✅ **Session YAML:** Structured + team dashboard
- ✅ **Code Review:** 2 reviewers (1 senior)
- ✅ **Communication:** Daily standups + weekly planning

**Best Practices:**
```markdown
# Team Dashboard (Auto-generated from Session YAMLs)
## Active Sessions (2026-01-31)
- **Alice:** Implementing payment integration (Phase 2)
- **Bob:** Writing E2E tests for checkout (Phase 5)
- **Carol:** Designing admin panel mockups (Phase 1)

## Blockers
- **Alice:** Waiting for Stripe API keys from DevOps

## This Week Goals
- [ ] Complete payment integration (Alice)
- [ ] Finish E2E test suite (Bob)
- [ ] Approve admin panel design (Carol + Product Owner)
```

### Large Team (15+ People)

**Adaptations:**
- ✅ **Phase 0:** Enterprise governance (steering committee)
- ✅ **Session YAML:** Integration with JIRA/Linear
- ✅ **Code Review:** 2+ reviewers + approval gates
- ✅ **Communication:** Structured meetings + documentation-first

**Best Practices:**
```yaml
# Session YAML (Enterprise)
session_id: 2026-01-31_team-payments_sprint-05_alice_002
team: payments
sprint: sprint-05
developer: alice
jira_ticket: PAY-123

goals:
  - "Implement Stripe webhook handler (PAY-123)"

approvals:
  - name: "Bob (Tech Lead)"
    status: approved
  - name: "Security Team"
    status: pending

compliance:
  - security_scan: passed
  - license_check: passed
  - pii_review: required
```

---

**End of Part III**

You have now learned:
- ✅ Application of methodology to different project types
- ✅ Tech stack selection per project type
- ✅ Team adaptations (solo → enterprise)

**Next Step:** [Part IV: Advanced Topics](#part-iv-advanced-topics)

---


# Part IV: Advanced Topics

**Goal of this part:** You will learn advanced techniques for professional Vibe Coding projects.

**Content:**
- [CI/CD Integration](#cicd-integration)
- [Secrets Management](#secrets-management)
- [Multi-Repository Strategies](#multi-repository-strategies)
- [AI-Assisted Development Best Practices](#ai-assisted-development-best-practices)
- [Recovery & Disaster Recovery](#recovery--disaster-recovery)

---

## CI/CD Integration

### GitHub Actions (Recommended for Open Source)

**Complete CI/CD Pipeline:**

```yaml
# .github/workflows/ci-cd.yml
name: CI/CD Pipeline

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]
  release:
    types: [published]

jobs:
  # Job 1: Quality Checks
  quality:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20.x'
          cache: 'npm'

      - name: Install Dependencies
        run: npm ci

      - name: Lint
        run: npm run lint

      - name: Type-Check
        run: npm run type-check

      - name: Security Audit
        run: npm audit --audit-level=high

  # Job 2: Test
  test:
    runs-on: ${{ matrix.os }}
    needs: quality
    strategy:
      matrix:
        os: [ubuntu-latest, windows-latest, macos-latest]
        node: ['20.x']
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node }}

      - run: npm ci
      - run: npm test -- --coverage

      - name: Upload Coverage
        if: matrix.os == 'ubuntu-latest'
        uses: codecov/codecov-action@v3

  # Job 3: E2E Tests
  e2e:
    runs-on: ubuntu-latest
    needs: test
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
      - run: npm ci
      - run: npx playwright install --with-deps
      - run: npm run test:e2e

  # Job 4: Build
  build:
    runs-on: ubuntu-latest
    needs: [quality, test, e2e]
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
      - run: npm ci
      - run: npm run build

      - name: Upload Build Artifacts
        uses: actions/upload-artifact@v3
        with:
          name: build
          path: dist/

  # Job 5: Deploy (only on release)
  deploy:
    if: github.event_name == 'release'
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Download Build
        uses: actions/download-artifact@v3
        with:
          name: build

      - name: Deploy to Production
        run: |
          # Example: Deploy to Vercel, AWS, etc.
          npx vercel --prod --token=${{ secrets.VERCEL_TOKEN }}
```

### GitLab CI (Recommended for Private/Enterprise)

```yaml
# .gitlab-ci.yml
stages:
  - quality
  - test
  - build
  - deploy

quality:
  stage: quality
  image: node:20
  script:
    - npm ci
    - npm run lint
    - npm audit --audit-level=high
  cache:
    paths:
      - node_modules/

test:
  stage: test
  image: node:20
  parallel:
    matrix:
      - NODE_VERSION: ['18', '20']
  script:
    - npm ci
    - npm test -- --coverage
  coverage: '/Lines\s*:\s*(\d+\.\d+)%/'
  artifacts:
    reports:
      coverage_report:
        coverage_format: cobertura
        path: coverage/cobertura-coverage.xml

e2e:
  stage: test
  image: mcr.microsoft.com/playwright:latest
  script:
    - npm ci
    - npx playwright install
    - npm run test:e2e

build:
  stage: build
  image: node:20
  script:
    - npm ci
    - npm run build
  artifacts:
    paths:
      - dist/

deploy:production:
  stage: deploy
  image: node:20
  script:
    - npm run deploy:production
  only:
    - tags
  environment:
    name: production
```

---

## Secrets Management

### Local Development (.env Files)

```bash
# .env.example (committed to Git)
DATABASE_URL=postgresql://user:pass@localhost:5432/db
STRIPE_API_KEY=sk_test_...
API_BASE_URL=http://localhost:3000

# .env (NOT committed, in .gitignore)
DATABASE_URL=postgresql://realuser:realpass@prod-db.example.com:5432/prod_db
STRIPE_API_KEY=sk_live_REAL_SECRET_KEY_HERE
API_BASE_URL=https://api.example.com
```

**Load .env in Code:**
```typescript
// src/config.ts
import dotenv from 'dotenv';

dotenv.config();

export const config = {
  database: {
    url: process.env.DATABASE_URL!,
  },
  stripe: {
    apiKey: process.env.STRIPE_API_KEY!,
  },
  api: {
    baseUrl: process.env.API_BASE_URL!,
  }
};

// Validate all required env vars exist
const required = ['DATABASE_URL', 'STRIPE_API_KEY', 'API_BASE_URL'];
for (const key of required) {
  if (!process.env[key]) {
    throw new Error(`Missing required environment variable: ${key}`);
  }
}
```

### CI/CD Secrets (GitHub Actions)

```yaml
# .github/workflows/deploy.yml
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Deploy
        env:
          DATABASE_URL: ${{ secrets.DATABASE_URL }}
          STRIPE_API_KEY: ${{ secrets.STRIPE_API_KEY }}
        run: |
          npm run deploy
```

**Setup Secrets:**
```bash
# GitHub UI:
# Settings → Secrets and variables → Actions → New repository secret

# Or via gh CLI:
gh secret set DATABASE_URL --body "postgresql://..."
gh secret set STRIPE_API_KEY --body "sk_live_..."
```

### Advanced: SOPS (Secrets OPerationS)

**For encrypted secrets IN Git (Enterprise):**

```bash
# Install SOPS
brew install sops

# Setup (one-time)
# Create PGP key
gpg --gen-key

# Encrypt file
sops --encrypt secrets.yaml > secrets.enc.yaml

# Commit encrypted file
git add secrets.enc.yaml
git commit -m "Add encrypted secrets"

# Decrypt (during deployment)
sops --decrypt secrets.enc.yaml > secrets.yaml
```

---

## Multi-Repository Strategies

### Monorepo (One Repo, Multiple Packages)

**Tools:** Nx, Turborepo, Lerna

**Structure:**
```
my-monorepo/
├── apps/
│   ├── web/           (Next.js web app)
│   ├── mobile/        (React Native app)
│   └── api/           (Express API)
├── packages/
│   ├── ui/            (Shared UI components)
│   ├── types/         (Shared TypeScript types)
│   └── utils/         (Shared utilities)
├── .continuity/
│   └── sessions/      (Shared session tracking)
├── package.json       (Root)
└── turbo.json         (Turborepo config)
```

**Advantages:**
- ✅ Code sharing easy
- ✅ Atomic commits across multiple packages
- ✅ Easier refactoring

**Disadvantages:**
- ❌ Larger repo size
- ❌ More complex CI/CD (needs caching)

### Multi-Repo (Multiple Repos)

**Structure:**
```
my-org/
├── web-app/           (Separate repo)
├── mobile-app/        (Separate repo)
├── api-service/       (Separate repo)
└── shared-ui/         (Separate repo, as npm package)
```

**Advantages:**
- ✅ Clear ownership boundaries
- ✅ Independent deployment cycles
- ✅ Smaller repo sizes

**Disadvantages:**
- ❌ Code sharing harder (needs npm publish)
- ❌ Cross-repo refactoring complex

**Recommendation:**
- **Solo/Small Team:** Monorepo (simpler)
- **Medium/Large Team:** Multi-repo (better boundaries)

---

## AI-Assisted Development Best Practices

### Effective Prompts (Specific!)

**❌ Bad Prompts:**
```
"Make this better"
"Fix the bug"
"Add tests"
```

**✅ Good Prompts:**
```
"Refactor this function to use async/await instead of callbacks,
maintaining the same error handling behavior. Add JSDoc comments."

"Fix the race condition in the useEffect hook that causes the
component to fetch data twice on mount."

"Write unit tests for the UserService.createUser method covering:
- Happy path (user created successfully)
- Error case (duplicate email)
- Error case (invalid email format)
Use Jest + mock the database layer."
```

### Iterative AI Pair Programming

**Pattern: Problem → Solution → Review → Iterate**

```
Round 1 (Context):
You: "I'm building a React hook for managing shopping cart state.
      Requirements: add/remove items, update quantity, calculate total."
AI: [generates basic hook skeleton]

Round 2 (Implementation):
You: "Add localStorage persistence, so cart survives page refresh"
AI: [adds useEffect with localStorage sync]

Round 3 (Edge Cases):
You: "Handle edge case: what if localStorage is full or disabled?"
AI: [adds try-catch + fallback to memory-only state]

Round 4 (Tests):
You: "Write tests for all three scenarios: normal, localStorage-full, localStorage-disabled"
AI: [generates comprehensive test suite]

Round 5 (Optimization):
You: "Optimize: debounce localStorage writes to avoid too many writes"
AI: [adds debouncing logic]
```

### AI Code Review

**Use AI as "Second Reviewer":**

```
You: "Review this code for security vulnerabilities and performance issues:

[paste code]

Focus on:
- SQL injection risks
- XSS vulnerabilities
- Performance bottlenecks (N+1 queries)
- Memory leaks"

AI: [provides detailed review with specific line numbers and fixes]
```

---

## Recovery & Disaster Recovery

### Recovery Scenarios

**Scenario 1: Laptop stolen/crashed (no backups)**

```markdown
## Recovery Steps:
1. ✅ Git remote exists → `git clone` works!
2. ✅ Private docs (.continuity/private/) are gone
   → Reconstruct from memory + Git history
3. ⚠️ .env secrets are gone
   → Restore from password manager (e.g., 1Password)
4. ✅ Development environment setup new:
   → npm install, start, continue working

**Time Loss:** 2-4 hours (re-setup)
**Data Loss:** Minimal (only private notes)
```

**Scenario 2: Git remote deleted (GitHub account hacked)**

```markdown
## Recovery Steps:
1. ✅ Local Git history still exists → Everything there!
2. ✅ Recover GitHub account (2FA backup codes)
3. ✅ Create new repo + push:
   git remote set-url origin https://github.com/new-repo.git
   git push -u origin main
4. ✅ Reset CI/CD secrets (from password manager)

**Time Loss:** 1-2 hours
**Data Loss:** 0 (local copy intact)
```

**Scenario 3: Complete data loss (fire, flood)**

```markdown
## Recovery Steps (if backup strategy was followed):
1. ✅ Layer 1 (Git Remote): git clone
2. ✅ Layer 2 (Time Machine): [only relevant if local commits existed]
3. ✅ Layer 3 (Cloud Backup): rclone copy dropbox:backups/project/ .
4. ✅ Layer 4 (USB Drive @ Friend): [if everything else fails]

**Time Loss:** 4-8 hours (re-setup + restore secrets)
**Data Loss:** 0-7 days (depending on last backup)
```

### Backup Testing (At least quarterly!)

```bash
#!/bin/bash
# scripts/test-backup-restore.sh

echo "🧪 Testing Backup & Restore Process..."

# 1. Create test backup
echo "Creating backup..."
./scripts/backup.sh

# 2. Simulate fresh machine (Docker)
echo "Simulating fresh machine..."
docker run -it --rm -v $(pwd):/backup ubuntu:22.04 bash -c "
  cd /backup
  apt-get update && apt-get install -y git
  git clone <YOUR_REPO_URL> /tmp/restored
  cd /tmp/restored
  ls -la
  echo '✅ Restore successful if you see project files above'
"

# 3. Verify critical files
echo "Verifying critical files exist..."
test -f project-charter.md && echo "✅ project-charter.md" || echo "❌ Missing"
test -f tech-stack.md && echo "✅ tech-stack.md" || echo "❌ Missing"
test -d .continuity/sessions && echo "✅ .continuity/sessions/" || echo "❌ Missing"

echo "🎉 Backup test complete!"
```

---

**End of Part IV**

You have now learned:
- ✅ CI/CD pipeline setup (GitHub Actions + GitLab)
- ✅ Secrets management (local + CI/CD + SOPS)
- ✅ Multi-repo vs. monorepo
- ✅ AI-assisted development best practices
- ✅ Disaster recovery strategies

**Next Step:** [Part V: Appendix](#part-v-appendix)

---

# Part V: Appendix

**Content:**
- [Glossary](#glossary)
- [Checklists](#checklists)
- [Troubleshooting](#troubleshooting)
- [Resources](#resources)

---

## Glossary

**Vibe Coding:** Intuitive, flow-based programming with AI assistants

**Phase 0:** Foundation & Vision (BEFORE code is written)

**Session YAML:** YAML file to document a development session

**ADR (Architecture Decision Record):** Documentation of a technical decision (why was X chosen instead of Y?)

**Quality Gate:** Automated checks that must pass before phase transition

**PoC (Proof-of-Concept):** Mini prototype to validate a technical assumption

**MVP (Minimum Viable Product):** Smallest feature set that delivers value

**TDD (Test-Driven Development):** Write tests BEFORE implementation

**CI/CD:** Continuous Integration / Continuous Deployment (automated tests + deployment)

**Monorepo:** One Git repository with multiple packages/apps

**Multi-Repo:** Multiple separate Git repositories (one repo per app/service)

---

## Checklists

### Phase 0 Checklist
- [ ] Project Charter created (vision, success criteria, non-goals)
- [ ] Tech stack documented (tech-stack.md with ADRs)
- [ ] Implementation plan created (6-phase breakdown)
- [ ] Git repository initialized + remote (GitHub/GitLab)
- [ ] .continuity/ structure created
- [ ] Backup strategy implemented (3+ layers)
- [ ] CI/CD pipeline setup (GitHub Actions/GitLab CI)
- [ ] README.md with setup instructions

### Phase 1 Checklist
- [ ] UI/UX mockups created (low-fidelity)
- [ ] PoC for critical technologies successful
- [ ] Data model designed (schema + types)
- [ ] API design documented (if backend)
- [ ] Architecture diagram created
- [ ] Test framework setup (unit + E2E)

### Phase 2 Checklist
- [ ] MVP features implemented
- [ ] Unit tests: ≥70% coverage
- [ ] Database integration works
- [ ] UI functional (not perfect)
- [ ] 0 critical bugs

### Quality Gate Checklist (All Phases)
- [ ] Tests passing (npm test)
- [ ] Linter passing (npm run lint)
- [ ] Build successful (npm run build)
- [ ] No high/critical security vulnerabilities (npm audit)

---

## Troubleshooting

### Problem: "CI/CD pipeline failing, but everything works locally"

**Solution:**
```bash
# 1. Reproduce CI environment locally (Docker)
docker run -it --rm -v $(pwd):/app node:20 bash
cd /app
npm ci  # (not npm install!)
npm test

# 2. Common causes:
# - npm install vs npm ci (lockfile different)
# - Environment variables missing
# - OS-specific issues (Windows vs. Linux)
```

### Problem: "Session YAML becoming too large/cluttered"

**Solution:**
```yaml
# Use separate session files per day
# NOT: .continuity/sessions/session-001.yml (always same file)
# BUT: .continuity/sessions/2026-01-31_session-001.yml

# Archive old sessions:
mkdir -p .continuity/sessions/archive/2025
mv .continuity/sessions/2025-* .continuity/sessions/archive/2025/
```

### Problem: "AI assistant generates code that doesn't compile"

**Solution:**
```
# 1. Be more specific in prompt:
"Write TypeScript code (not JavaScript) with strict-mode enabled"

# 2. Use iterative workflow:
"The code doesn't compile. Error: [paste error]. Please fix."

# 3. Provide context:
"Here is my tsconfig.json: [paste]
And here the existing type definitions: [paste]
Now implement feature X with compatible types."
```

---

## Resources

### Templates & Scripts
- **GitHub:** https://github.com/your-org/vibe-coding-guide/templates
- **Session Start Script:** `scripts/session-start.js`
- **Backup Script:** `scripts/backup.sh`

### Decision Matrices
- **Language Selection:** `decision-matrices/language-selection.md`
- **Framework Selection:** `decision-matrices/framework-selection.md`
- **Database Selection:** `decision-matrices/database-selection.md`

### Tools
- **Session Management:** Node.js, Python, Bash scripts
- **Backup:** rsync, rclone, robocopy
- **CI/CD:** GitHub Actions, GitLab CI, Jenkins
- **Secrets:** SOPS, Vault, git-crypt

### Community
- **GitHub Discussions:** https://github.com/your-org/vibe-coding-guide/discussions
- **Issues:** https://github.com/your-org/vibe-coding-guide/issues

---

**End of Part V & End of Guide**

---

# Closing

You now have a complete, language-agnostic framework for professional Vibe Coding with AI assistants.

**What You Have Learned:**
- ✅ **Part I:** Fundamentals & 10 core principles
- ✅ **Part II:** 6-phase architecture (detailed)
- ✅ **Part III:** Application to different project types
- ✅ **Part IV:** Advanced topics (CI/CD, secrets, AI best practices)
- ✅ **Part V:** Glossary, checklists, troubleshooting

**Next Steps:**
1. **Start small:** Choose a micro-project (1-2 weeks)
2. **Follow Phase 0:** Invest time in vision + tech stack
3. **Use templates:** Copy project-charter.md, tech-stack.md
4. **Work session-based:** Create your first session YAML
5. **Commit often:** Small, atomic commits with AI co-authoring

**Practice What You Preach:**
This manual was itself created with the 6-phase methodology!

**Good luck with your next Vibe Coding project! 🚀**

---

**Version:** 3.0.0
**Date:** 2026-01-31
**Author:** Frank Jeworrek
**Based on:** THE_SONG_APP Project (28 weeks, 2025-2026)
**License:** MIT

**Contributions Welcome:** [CONTRIBUTING.md](CONTRIBUTING.md)

