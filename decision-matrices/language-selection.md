# Decision Matrix: Programming Language Selection

Use this matrix to objectively choose the right programming language for your project.

---

## Evaluation Criteria

| Criterion | Weight | Description |
|-----------|--------|-------------|
| **Team Expertise** | High | How well does the team know this language? |
| **Ecosystem Size** | High | Library/package availability |
| **Development Speed** | High | Time-to-market considerations |
| **Performance** | Medium | Runtime performance requirements |
| **Hiring Pool** | Medium | Availability of developers |
| **Learning Curve** | Low | Time to learn for new team members |
| **Maintenance** | Medium | Long-term maintainability |

---

## Scoring Guide

- ⭐⭐⭐ (3 points) = Excellent
- ⭐⭐ (2 points) = Good
- ⭐ (1 point) = Acceptable
- ❌ (0 points) = Poor

---

## Comparison Matrix

| Criterion | Python | JavaScript/TS | Go | Rust | Java |
|-----------|--------|---------------|----|----|------|
| **Team Expertise** | ⭐⭐ | ⭐⭐⭐ | ⭐ | ❌ | ⭐⭐ |
| **Ecosystem** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐ | ⭐⭐⭐ |
| **Dev Speed** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐ | ⭐⭐ |
| **Performance** | ⭐⭐ | ⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Hiring Pool** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐ | ⭐⭐⭐ |
| **Learning Curve** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | ⭐ | ⭐⭐ |
| **Maintenance** | ⭐⭐ | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **TOTAL** | 17/21 | 18/21 | 15/21 | 10/21 | 16/21 |

**Recommendation:** JavaScript/TypeScript (highest score)

---

## Project-Type-Specific Recommendations

### Web Applications
1. **JavaScript/TypeScript** (Next.js, React)
2. **Python** (Django, FastAPI)
3. **Go** (Gin, Echo)

### Mobile Applications
1. **JavaScript/TypeScript** (React Native)
2. **Dart** (Flutter)
3. **Swift** (iOS) / **Kotlin** (Android)

### CLI Tools
1. **Go** (excellent single-binary distribution)
2. **Rust** (performance + safety)
3. **Python** (rapid prototyping)

### Desktop Applications
1. **JavaScript/TypeScript** (Electron, Tauri)
2. **Python** (PyQt6)
3. **Rust** (Tauri)

### Microservices/APIs
1. **Go** (performance + concurrency)
2. **Rust** (maximum performance)
3. **Node.js** (TypeScript)

### Data Science/ML
1. **Python** (PyTorch, TensorFlow)
2. **R** (statistical analysis)
3. **Julia** (high-performance computing)

---

## Decision Factors (Detailed)

### 1. Team Expertise
**Questions to ask:**
- How many team members know this language?
- What's the average experience level (beginner/intermediate/expert)?
- Will we need external help?

**Scoring:**
- ⭐⭐⭐: 80%+ of team are experts
- ⭐⭐: 50-80% of team are intermediate+
- ⭐: <50% of team knows the language
- ❌: No one knows it

### 2. Ecosystem Size
**Questions to ask:**
- Are there libraries for our specific needs (e.g., audio processing, payment gateways)?
- How active is the community?
- Are there good tutorials/docs?

**Scoring:**
- ⭐⭐⭐: 100K+ packages, very active community
- ⭐⭐: 10K-100K packages, active community
- ⭐: <10K packages, smaller community
- ❌: Very limited ecosystem

### 3. Development Speed
**Questions to ask:**
- How quickly can we prototype?
- Is there good IDE/editor support?
- Are there code generation tools?

**Scoring:**
- ⭐⭐⭐: Very fast (dynamic typing, REPL, hot-reload)
- ⭐⭐: Fast (good tooling, type inference)
- ⭐: Medium (compilation required, verbose)
- ❌: Slow (complex build process)

### 4. Performance
**Questions to ask:**
- Do we have strict latency requirements?
- Will we process large datasets?
- Is memory usage critical?

**Scoring:**
- ⭐⭐⭐: Native performance (C/Rust/Go level)
- ⭐⭐: JIT-compiled (Java/C# level)
- ⭐: Interpreted but optimized (Python with NumPy)
- ❌: Pure interpreted (slow for compute-heavy tasks)

### 5. Hiring Pool
**Questions to ask:**
- How easy is it to find developers?
- What's the salary range?
- Are there good training resources?

**Scoring:**
- ⭐⭐⭐: Very large pool (JavaScript, Python, Java)
- ⭐⭐: Medium pool (Go, C#, Ruby)
- ⭐: Small pool (Rust, Elixir, Haskell)
- ❌: Very small pool (obscure languages)

---

## Template: Your Project

Copy and fill this out:

```markdown
# Language Selection: [Your Project Name]

## Context
- Project Type: [Web/Mobile/CLI/Desktop/Microservices/etc.]
- Team Size: [X people]
- Timeline: [X weeks/months]
- Performance Requirements: [High/Medium/Low]

## Evaluation

| Criterion | [Lang 1] | [Lang 2] | [Lang 3] | Chosen |
|-----------|----------|----------|----------|--------|
| Team Expertise | ⭐⭐⭐ | ⭐⭐ | ⭐ | **[Lang 1]** |
| Ecosystem | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | **[Lang 1]** |
| Dev Speed | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | **[Lang 1]** |
| Performance | ⭐⭐ | ⭐ | ⭐⭐⭐ | **[Lang 3]** |
| Hiring Pool | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ | **[Lang 1]** |
| **TOTAL** | 15/15 | 13/15 | 11/15 | **[Lang 1]** |

## Decision
**Chosen:** [Language]

**Rationale:**
- [Reason 1]
- [Reason 2]
- [Reason 3]

**ADR:** [Link to ADR-001]
```

---

**Last Updated:** 2026-01-31
**Version:** 1.0
