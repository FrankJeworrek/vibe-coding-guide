# Technology Stack: Agnostisches Vibe Coding Handbuch v3.0

**Version:** 1.0.0
**Erstellt:** 2026-01-31
**Autor:** Frank Jeworrek
**Status:** Active

---

## Dokumentation

### Primary Format
- **Markdown** (GitHub-Flavored)
- **Rationale:** Universell, versionierbar, GitHub-native, kein Build-Step notwendig

### Version Control
- **Git** 2.40+
- **GitHub** (Public Repository)
- **Rationale:** Industry-Standard, Community-Features (Issues, Discussions, PRs), kostenlos

### Editing Tools
- **VS Code** (empfohlen, aber optional)
- **Alternativen:** Jeder Markdown-Editor (Typora, Obsidian, vim, emacs)

---

## Scripts (Multi-Sprachen)

Wir bieten Scripts in 5 Programmiersprachen für maximale Kompatibilität:

### Python 3.12+
- **Zweck:** Cross-Platform, Rapid Prototyping
- **Scripts:** session-start.py, session-end.py, create-adr.py
- **Dependencies:** None (stdlib only für v1.0)

### Bash 5.0+
- **Zweck:** Unix/Mac native
- **Scripts:** session-start.sh, session-end.sh, create-adr.sh
- **Platform:** macOS, Linux

### PowerShell 7.0+
- **Zweck:** Windows native
- **Scripts:** session-start.ps1, session-end.ps1, create-adr.ps1
- **Platform:** Windows (Cross-Platform PowerShell Core unterstützt)

### Node.js 20+
- **Zweck:** Cross-Platform, Web-Developer-freundlich
- **Scripts:** session-start.js, session-end.js, create-adr.js
- **Dependencies:** None (stdlib only für v1.0)

### Go 1.21+
- **Zweck:** Cross-Platform, Performance, Single Binary
- **Scripts:** session-start.go, session-end.go, create-adr.go
- **Rationale:** Kompiliert zu standalone executables

---

## Schemas & Validation

### JSON Schema
- **Zweck:** YAML-Validierung (Session-Files, Project-Charter, Quality-Metrics)
- **Files:**
  - session-schema.json
  - project-charter-schema.json
  - quality-metrics-schema.json
  - adr-metadata-schema.json

### YAML
- **Zweck:** Human-readable Configuration (Session-Files)
- **Rationale:** Besser lesbar als JSON, weniger fehleranfällig

---

## Backup & Recovery

### Layer 1: Git + GitHub
- **Tool:** Git 2.40+
- **Remote:** GitHub (Public Repo)
- **Branch-Strategie:** main (stable), dev (optional für Experimente)
- **Rationale:** Versionskontrolle + Remote Backup in einem

### Layer 2: Lokale Timestamped Backups

#### macOS/Linux
- **Tool:** rsync mit hardlinks
- **Script:** scripts/backup/backup-rsync.sh
- **Frequency:** Täglich (via cron oder manual)

#### Windows
- **Tool:** robocopy mit VSS
- **Script:** scripts/backup/backup-robocopy.ps1
- **Frequency:** Täglich (via Task Scheduler oder manual)

#### Cross-Platform
- **Tool:** rclone
- **Script:** scripts/backup/backup-rclone.sh
- **Rationale:** Funktioniert auf allen Plattformen

### Layer 3: STATUS_TRACKING.md
- **Zweck:** Human-readable Recovery Guide
- **Updated:** Bei jedem Milestone

### Layer 4: Cloud Backup (Optional)
- **Optionen:** AWS S3, Azure Blob Storage, Google Cloud Storage, Dropbox, Google Drive
- **Scripts:** backup-s3.sh, backup-azure.ps1
- **Rationale:** Geografische Redundanz

### Layer 5: Portable Packages
- **Tool:** tar.gz Archive
- **Created:** Bei Major Milestones (v1.0, v2.0, v3.0)
- **Location:** ~/Documents/Archives/ oder USB-Stick

---

## CI/CD (für Projekt-Examples)

**Hinweis:** CI/CD ist NICHT für das Guide-Repo selbst, sondern für die Projekt-Examples (um zu demonstrieren, wie CI/CD in Vibe Coding integriert wird).

### Supported Platforms
- **GitHub Actions** (Primary, kostenlos für Public Repos)
- **GitLab CI** (Alternative)
- **Jenkins** (Self-Hosted Option)
- **CircleCI** (Alternative)

### Use Cases
- Validierung von Session-YAMLs (JSON Schema)
- Quality Gate Checks (Linting, Testing)
- Automated Backups
- Beispiele für Users, wie sie CI/CD in ihren Projekten nutzen können

---

## Abgelehnte Alternativen

### ReStructuredText (statt Markdown)
**Grund der Ablehnung:**
- Markdown ist universeller akzeptiert
- Bessere GitHub-Integration (Native Rendering)
- Niedrigere Einstiegshürde für Contributors

### Single Language (nur Deutsch)
**Grund der Ablehnung:**
- Limitiert internationale Reichweite massiv
- 90% der Developer nutzen Englisch als Arbeitssprache
- Bilingual = 10x größere potentielle Community

### AsciiDoc (statt Markdown)
**Grund der Ablehnung:**
- Zu komplex für diesen Anwendungsfall
- Weniger Tool-Support
- Markdown ist "lingua franca" der Developer-Welt

### Wiki-Format (statt Git-Repo)
**Grund der Ablehnung:**
- Schwieriger zu versionieren (Git ist besser)
- Schlechtere Offline-Nutzung
- Kein Pull-Request-Workflow für Contributors

### Nur Python für Scripts (wie v2.md)
**Grund der Ablehnung:**
- Widerspricht dem "Agnostik"-Prinzip
- Viele Entwickler haben kein Python installiert
- Multi-Sprachen zeigt wirkliche Plattform-Unabhängigkeit

### Alle 10+ Programmiersprachen für Scripts
**Grund der Ablehnung:**
- Scope Creep (20+ Stunden nur für Scripts)
- Zu viele Optionen verwirren
- 5 Sprachen = 90% Coverage (Python, JS, Go, Rust, Java)
- Community kann weitere beitragen (C#, PHP, Ruby, Swift)

### Closed Source (statt Open Source)
**Grund der Ablehnung:**
- Widerspricht dem Mission Statement (Demokratisierung)
- Geringere Adoption ohne Open Source
- Community-Beiträge unmöglich

### GPL v3 License (statt MIT)
**Grund der Ablehnung:**
- Zu restriktiv (erzwingt Open Source bei Derivaten)
- Verhindert kommerzielle Nutzung in Closed-Source-Projekten
- MIT = maximale Enterprise-Adoption

---

## Entscheidungs-Prozess

Alle Tech-Stack-Entscheidungen wurden dokumentiert in:
- [ADR-001](/.continuity/decisions/ADR-001_bilingual.md) - Bilinguale Dokumentation
- [ADR-002](/.continuity/decisions/ADR-002_5-languages.md) - 5 Programmiersprachen für Scripts
- [ADR-003](/.continuity/decisions/ADR-003_mit-license.md) - MIT License

---

## Upgrade-Pfad (zukünftig)

### v1.1 (geplant: 3-6 Monate nach v1.0 Launch)
- Weitere Script-Sprachen (C#, PHP, Ruby) - Community-getrieben
- GitHub Pages (statische Website)
- Read the Docs Integration

### v2.0 (geplant: 12 Monate nach v1.0 Launch)
- Interaktive Web-Version (Schritt-für-Schritt Wizard)
- CLI-Tool (vibe-coding init, session-start, etc.)
- VS Code Extension

### v3.0+ (langfristig)
- Cloud-Service (Session-Synchronisation zwischen Entwicklern)
- Desktop-App (Electron oder Tauri)
- Mobile-App (für Session-Tracking unterwegs)

---

## Maintenance & Support

### Supported Versions
- **v1.x:** Aktiv (Bugfixes + Features)
- **v0.x (Beta):** Nicht mehr unterstützt

### Update-Zyklus
- **Major:** Jährlich (v1.0 → v2.0 → v3.0)
- **Minor:** Quarterly (v1.1, v1.2, v1.3)
- **Patches:** Bei Bedarf (v1.0.1, v1.0.2)

### Dependency Updates
- Python: Mindestens 3.12 (Latest Stable)
- Node.js: Mindestens 20 (LTS)
- Go: Mindestens 1.21 (Stable)

---

## Änderungshistorie

| Version | Datum | Änderungen | Autor |
|---------|-------|------------|-------|
| 1.0.0 | 2026-01-31 | Initial Tech-Stack definiert | Frank Jeworrek |

---

**Genehmigt durch:** Frank Jeworrek
**Datum:** 2026-01-31
