# Session Context: [Project Name]

**Last Update:** YYYY-MM-DD HH:MM
**Current Phase:** Phase [X] - [Phase Name]
**Developer:** [Your Name]

---

## 📍 Current Milestone

**What are we working on RIGHT NOW?**

- [ ] [Specific goal 1]
- [ ] [Specific goal 2]
- [ ] [Specific goal 3]

**Example:**
- [ ] Implement user authentication (JWT + refresh tokens)
- [ ] Add password reset flow
- [ ] Write E2E tests for auth flows

---

## ✅ Recently Completed (Last 3 Sessions)

**What have we achieved?**

### Session [ID] — [Date]
- ✅ [Accomplishment 1]
- ✅ [Accomplishment 2]

### Session [ID] — [Date]
- ✅ [Accomplishment 1]
- ✅ [Accomplishment 2]

**Example:**
### Session 003 — 2026-01-30
- ✅ Database schema designed and migrated
- ✅ User model + CRUD operations implemented
- ✅ Unit tests for user service (82% coverage)

### Session 002 — 2026-01-29
- ✅ Tech stack selected (see tech-stack.md)
- ✅ Development environment setup complete

---

## 🚧 Known Issues & Blockers

**What's preventing progress?**

| Issue | Severity | Impact | Owner | Status |
|-------|----------|--------|-------|--------|
| [Description] | High/Med/Low | [Impact description] | [Name] | Blocked/In Progress |

**Example:**
| Issue | Severity | Impact | Owner | Status |
|-------|----------|--------|-------|--------|
| Stripe API keys not yet available | High | Cannot test payment flow | Product Owner | **Blocked** |
| Test database slow on CI | Medium | Tests take 5 minutes to run | DevOps | In Progress |

---

## 📋 Next Steps (Priority Order)

1. [ ] **[High Priority]** [Task 1]
2. [ ] **[High Priority]** [Task 2]
3. [ ] **[Medium Priority]** [Task 3]
4. [ ] **[Low Priority]** [Task 4]

**Example:**
1. [ ] **[High Priority]** Finish authentication E2E tests
2. [ ] **[High Priority]** Add rate limiting to login endpoint
3. [ ] **[Medium Priority]** Implement "Remember Me" functionality
4. [ ] **Low Priority** Add social login (Google, GitHub)

---

## 🗂️ Project Structure (Key Files)

**Where are the important things?**

```
project-root/
├── src/
│   ├── auth/           [Authentication logic - CURRENT FOCUS]
│   ├── api/            [API routes]
│   ├── database/       [DB models + migrations]
│   └── components/     [React components]
├── tests/
│   ├── unit/           [Unit tests]
│   └── e2e/            [E2E tests - NEED TO ADD AUTH TESTS]
├── .continuity/
│   ├── sessions/       [Session logs]
│   └── decisions/      [ADRs]
└── docs/               [Documentation]
```

---

## 🔑 Important Variables & Configuration

**Key information for development:**

- **API Base URL:** [Local: http://localhost:3000]
- **Database:** [PostgreSQL @ localhost:5432/mydb]
- **Auth:** [JWT tokens, 15min expiry, refresh tokens 7 days]
- **Environment Variables:** See `.env.example`

**Example:**
- **API:** `http://localhost:3000/api`
- **Database:** `postgresql://user:pass@localhost:5432/mydb`
- **Auth:** JWT (HS256), access token 15min, refresh token 7 days
- **Secrets:** See `.env` (NOT committed!)

---

## 💡 Recent Decisions & Learnings

**What did we learn recently?**

- **[Date]:** [Learning/Decision]
- **[Date]:** [Learning/Decision]

**Example:**
- **2026-01-30:** Decided to use bcrypt (not argon2) for password hashing - see ADR-007
- **2026-01-29:** Learned that NextAuth.js doesn't support refresh tokens out-of-box, implementing custom solution
- **2026-01-28:** PostgreSQL `SERIAL` is deprecated, using `BIGSERIAL` instead

---

## 🐛 Technical Debt (To Address Later)

**What needs cleanup?**

| Item | Why Debt | When to Fix | Priority |
|------|----------|-------------|----------|
| [Description] | [Why it's not ideal] | [Phase/Version] | High/Med/Low |

**Example:**
| Item | Why Debt | When to Fix | Priority |
|------|----------|-------------|----------|
| User service has 3 TODO comments | Placeholder code, not production-ready | Phase 4 | Medium |
| No input validation on signup endpoint | Security risk | **Phase 2** | **High** |
| Database queries not optimized | N+1 queries in user list | Phase 4 | Low |

---

## 📝 Session Notes (Free-form)

**Quick notes, thoughts, ideas:**

- [Note 1]
- [Note 2]
- [Idea for future feature]

**Example:**
- Password reset email template needs design - ask designer
- Consider adding 2FA in V1.5 (not V1.0)
- User mentioned they want "Login with Email Link" (magic link) - add to backlog

---

## 🔄 Handoff Information (Team Projects)

**For the next developer:**

**Developer Name:** [Next person]

**What they need to know:**
1. [Context 1]
2. [Context 2]
3. [Watch out for: Known issues/quirks]

**Recommended starting point:** [File/function to start with]

**Example:**
**Developer Name:** Bob

**What they need to know:**
1. Auth flow is partially implemented - JWT generation works, refresh token logic is stubbed
2. Tests are in `tests/unit/auth/` - all passing except `test_refresh_token` (expected to fail)
3. Watch out for: Stripe webhook endpoint is using test keys (see .env.example)

**Recommended starting point:** `src/auth/refresh-token.ts` - implement the TODO items

---

## 📊 Metrics & Progress

**How are we doing?**

- **Phase Progress:** [X]% complete
- **Test Coverage:** [Y]%
- **Open Issues:** [Z]
- **Commits This Week:** [N]

**Example:**
- **Phase Progress:** Phase 2 — 65% complete
- **Test Coverage:** 76% (target: ≥70%) ✅
- **Open Issues:** 3 High, 7 Medium, 12 Low
- **Commits This Week:** 18 commits, 2400 lines added

---

## 🔗 Quick Links

**Frequently accessed resources:**

- [GitHub Repo](https://github.com/user/project)
- [Project Board](https://github.com/user/project/projects/1)
- [Figma Designs](https://figma.com/file/...)
- [API Documentation](https://localhost:3000/api/docs)
- [Deployment](https://project.vercel.app)

---

**Auto-generated on:** [YYYY-MM-DD HH:MM]
**Next update:** After current session ends
