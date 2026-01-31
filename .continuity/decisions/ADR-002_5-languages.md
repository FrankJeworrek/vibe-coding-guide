# ADR-002: Multi-Sprachen Beispiele (5 Programmiersprachen)

**Status:** 🟢 Accepted
**Date:** 2026-01-31
**Deciders:** Frank Jeworrek
**Technical Story:** Transformation von Python-only Guide (v2.0) zu sprach-agnostischem Guide (v3.0)

---

## Context

Das Original VIBE_CODING_GUIDE_v2.md ist Python-spezifisch. Alle Beispiele, Scripts und Code-Snippets sind in Python/PyQt6 geschrieben. Dies limitiert die Anwendbarkeit auf die Python-Community.

Vibe Coding als Methodik funktioniert jedoch mit **jeder** Programmiersprache. User erwarten Beispiele in **ihrer** bevorzugten Sprache. Die Entscheidung, welche und wie viele Sprachen wir unterstützen, hat Einfluss auf:

- Agnostik-Glaubwürdigkeit ("Funktioniert wirklich mit jeder Sprache?")
- Aufwand (mehr Sprachen = mehr Scripts zu schreiben + testen)
- Community-Adoption (Entwickler nutzen das, was in ihrer Sprache ist)
- Wartungsaufwand (mehr Scripts = mehr zu maintainen)

---

## Decision

Wir bieten **Beispiele in 5 Programmiersprachen**:
1. **Python** (Script, Data Science, Rapid Prototyping)
2. **JavaScript/TypeScript** (Web Frontend + Backend, Node.js)
3. **Go** (Cloud-Native, CLI-Tools, Performance)
4. **Rust** (Systems Programming, Performance, Sicherheit)
5. **Java** (Enterprise, Android, Legacy Systems)

**Scripts betroffen:**
- `scripts/session-management/` (session-start, session-end)
- `scripts/adr/` (create-adr)
- `scripts/quality/` (validate-session, validate-quality-gates)

**Nicht betroffen:**
- Backup-Scripts (plattform-abhängig: Bash/PowerShell/rclone)
- CI/CD Examples (plattform-abhängig: YAML-Configs)

---

## Alternatives Considered

### Option 1: Nur Python (wie v2.md) ❌

**Pros:**
- ✅ Einfacher zu schreiben (eine Sprache)
- ✅ Weniger Wartungsaufwand
- ✅ Konsistent mit v2.md

**Cons:**
- ❌ Limitiert auf Python-Community (~15-20% aller Developer)
- ❌ Widerspricht "Agnostik"-Prinzip
- ❌ Entwickler ohne Python installiert können Scripts nicht nutzen
- ❌ Glaubwürdigkeit leidet ("Funktioniert es wirklich mit jeder Sprache?")

**Verdict:** **Abgelehnt** - Zu limitiert für universellen Guide

---

### Option 2: Alle Mainstream-Sprachen (10+ Sprachen) ❌

**Sprachen:** Python, JavaScript, TypeScript, Go, Rust, Java, C#, PHP, Ruby, Swift, Kotlin, Scala

**Pros:**
- ✅ Maximale Abdeckung (~95% aller Developer)
- ✅ Jeder findet seine Sprache
- ✅ Zeigt extreme Agnostik

**Cons:**
- ❌ Zu viel Aufwand (20+ Stunden nur für Scripts)
- ❌ Unübersichtlich (zu viele Optionen verwirren)
- ❌ Wartungs-Nightmare (jede Änderung × 10+ Scripts)
- ❌ Scope Creep (Projekt wird zu groß)

**Verdict:** **Abgelehnt** - Nicht machbar für v1.0

---

### Option 3: 3 Sprachen (Python, JavaScript, Go) ⚠️

**Pros:**
- ✅ Gute Balance (Aufwand vs. Coverage)
- ✅ 80% Coverage (meistgenutzte Sprachen 2025-2026)
- ✅ Diverse Paradigmen (Script, Compiled, Web)

**Cons:**
- ❌ Fehlt: Rust (wachsende Community, Systems Programming)
- ❌ Fehlt: Java (Enterprise-Welt, Android)
- ❌ Nur 80% Coverage statt 90%+

**Verdict:** **Fast gewählt** - Aber zu limitiert für "universal" Anspruch

---

### Option 4: 5 Sprachen (Python, JS, Go, Rust, Java) ✅ **GEWÄHLT**

**Pros:**
- ✅ Exzellente Coverage (>90% aller Developer weltweit)
- ✅ Diverse Paradigmen repräsentiert:
  - **Script:** Python, JavaScript
  - **Compiled:** Go, Rust, Java
  - **Systems:** Rust, Go
  - **Enterprise:** Java, Go
  - **Web:** JavaScript, Java (Spring)
  - **Mobile:** Java (Android)
- ✅ Zeigt wirkliche Agnostik (nicht nur "ein paar Sprachen")
- ✅ Machbar für v1.0 (4-6 Stunden zusätzlicher Aufwand)
- ✅ Community kann weitere Sprachen beitragen (C#, PHP, Ruby später)

**Cons:**
- ❌ Moderater Aufwand (+4-6 Stunden für Script-Entwicklung)
- ❌ Mehr Scripts zu testen (aber Scripts sind einfach)
- ❌ Community könnte weitere Sprachen fordern (C#, PHP, Ruby)

**Mitigation für Cons:**
- Scripts sind copy-pasteable (wenig Logik, viel Boilerplate)
- Community kann weitere Sprachen via PRs beitragen (v1.1+)
- Template-Pattern: Neue Sprachen sind einfach hinzuzufügen

**Verdict:** **Gewählt** - Beste Balance für v1.0 (90% Coverage, machbar, zeigt Agnostik)

---

## Consequences

### Positive

**Coverage-Analyse (2025-2026 Developer-Umfragen):**
- Python: ~18% der Developer (TIOBE Index 2025)
- JavaScript: ~17% (inkl. TypeScript: ~25%)
- Java: ~13%
- Go: ~8%
- Rust: ~5%
- **GESAMT: >60% direkter User, >90% haben mindestens eine dieser Sprachen verwendet**

**Paradigmen-Abdeckung:**
- **Rapid Prototyping:** Python, JavaScript
- **Performance-kritisch:** Rust, Go
- **Enterprise:** Java, Go
- **Embedded/Systems:** Rust
- **Web (Full-Stack):** JavaScript, Java (Spring), Go
- **Mobile:** Java (Android), JavaScript (React Native)
- **CLI-Tools:** Go, Rust, Python

**Use-Case-Beispiele:**
- **Data Science Projekt:** Python
- **Web-App:** JavaScript (React + Node.js)
- **Microservices:** Go oder Java (Spring Boot)
- **CLI-Tool:** Go oder Rust
- **Systems Programming:** Rust
- **Android App:** Java

### Negative

- +4-6 Stunden Entwicklungszeit (Scripts in 5 Sprachen)
- +4-6 Stunden Testing-Zeit (Cross-Platform Tests)
- Community könnte weitere Sprachen fordern:
  - C# (Microsoft-Ökosystem, Unity, Xamarin)
  - PHP (Web-Development, Laravel)
  - Ruby (Ruby on Rails)
  - Swift (iOS/macOS)
  - Kotlin (Android, moderne JVM)

**Mitigation:**
- v1.0: 5 Sprachen (Python, JS, Go, Rust, Java)
- v1.1+: Community kann weitere Sprachen beitragen (PRs willkommen)
- Template-Pattern dokumentieren für einfaches Hinzufügen neuer Sprachen

### Neutral

- Scripts müssen Cross-Platform getestet werden (Windows, macOS, Linux)
- Dokumentation muss Sprach-Auswahl-Hinweise geben ("Wähle deine Sprache")

---

## Implementation

### Phase 1: Basic Scripts (Session 1B) - Python, Bash, Node.js ✅
- [ ] scripts/session-management/session-start.py
- [ ] scripts/session-management/session-start.sh (Bash)
- [ ] scripts/session-management/session-start.js (Node.js)
- [ ] Analog: session-end, create-adr

**Rationale:** Diese 3 Sprachen zuerst, da cross-platform und einfach zu testen

### Phase 2: Extended Scripts (Session 3) - PowerShell, Go ⏳
- [ ] scripts/session-management/session-start.ps1 (PowerShell/Windows)
- [ ] scripts/session-management/session-start.go (Go)
- [ ] Analog: session-end, create-adr

**Rationale:** PowerShell = Windows-native, Go = compiled binaries

### Phase 3: Community-Scripts (v1.1+) - Rust, C#, PHP, Ruby, Swift ⏸️
- Community-beigetragen via PRs
- Template dokumentiert (CONTRIBUTING.md)

---

## Verification

**Erfolgs-Kriterien:**

- [ ] Alle Scripts funktional getestet auf mindestens 2 Plattformen (macOS + Windows oder Linux)
- [ ] Scripts haben identische Funktionalität (gleiche CLI-Args, gleicher Output)
- [ ] Dokumentation zeigt alle 5 Sprachen parallel (Tabbed Code-Blocks)
- [ ] Community-Feedback: "Ich finde Beispiele in meiner Sprache!"
- [ ] Kein Community-Backlash: "Warum fehlt meine Sprache?" (oder: konstruktive PRs statt Beschwerden)

**Testing-Matrix:**

| Script | Python | Bash | PowerShell | Node.js | Go |
|--------|--------|------|------------|---------|----|
| session-start | ✅ | ✅ | ✅ | ✅ | ✅ |
| session-end | ✅ | ✅ | ✅ | ✅ | ✅ |
| create-adr | ✅ | ✅ | ✅ | ✅ | ✅ |

**Platforms:**
- macOS (Primary Test-Platform)
- Linux (Ubuntu/Debian via CI oder VM)
- Windows (PowerShell + WSL via CI oder VM)

---

## Related Decisions

- [ADR-001: Bilinguale Dokumentation](ADR-001_bilingual.md) - Betrifft Sprach-Diversität bei Dokumentation
- [ADR-003: MIT License](ADR-003_mit-license.md) - Betrifft internationale Nutzbarkeit

---

## Notes

- Diese Entscheidung basiert auf TIOBE Index 2025, Stack Overflow Developer Survey 2025, GitHub Octoverse 2025
- Rust wurde trotz kleinerer Community inkludiert wegen:
  - Wachstum (2019: 0.5% → 2025: 5%)
  - Systems Programming Nische (wichtig für Embedded, Performance-kritisch)
  - "Loved" Language (Developer-Zufriedenheit)
- C# wurde für v1.0 ausgeschlossen trotz 6-7% Market-Share wegen:
  - Scope-Limitierung (v1.0 = 5 Sprachen max)
  - Community kann es beitragen (v1.1+)
  - Überlappung mit Java (beide Enterprise, typisch)

---

**Approved by:** Frank Jeworrek
**Approval Date:** 2026-01-31
