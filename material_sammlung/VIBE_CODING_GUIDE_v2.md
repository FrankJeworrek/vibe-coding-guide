# Der Universelle Vibe Coding Leitfaden

**Version:** 1.0.0
**Letzte Aktualisierung:** 2026-01-31
**AI-Agnostisch:** Funktioniert mit beliebigen AI-Assistenten (Claude, GPT, Gemini, etc.) oder menschlichen Teams

---

## 🎯 Vorwort: Warum Vibe Coding oft scheitert

**Das Problem:**
Vibe Coding – das intuitive, flow-basierte Programmieren mit AI-Assistenten – führt oft zu gescheiterten Projekten. Nicht weil die Idee schlecht ist, sondern weil **kritische Grundlagen fehlen**:

- ❌ Keine klare Spezifikation → Mid-Course-Chaos
- ❌ Fehlender Kontinuitätsmechanismus → Context-Loss bei Unterbrechungen
- ❌ Keine Backup-Strategie → Datenverlust bei Crashes
- ❌ Unvollständige Dokumentation → Onboarding unmöglich
- ❌ Fehlende Entscheidungsdokumentation → "Warum haben wir das so gemacht?"

**Die Lösung:**
Dieser Leitfaden basiert auf einem **realen 28-Wochen-Projekt** (THE_SONG_APP), das Vibe Coding mit professionellen Software-Engineering-Praktiken kombiniert.

**Kernprinzip:**
> **Vorbereitung bestimmt Erfolg oder Scheitern.**
> Phase 0 (1 Woche) schließt alle bekannten Lücken, bevor Phase 1 (Implementation) beginnt.

---

## 📖 Inhaltsverzeichnis

1. [Phase 0: Pre-Project Foundation](#phase-0-pre-project-foundation)
2. [Phase 1: Implementierungsplan-Exzellenz](#phase-1-implementierungsplan-exzellenz)
3. [Phase 2: Session-Kontinuität & State-Management](#phase-2-session-kontinuität--state-management)
4. [Phase 3: Backup & Recovery](#phase-3-backup--recovery)
5. [Phase 4: Decision-Logging (ADR-System)](#phase-4-decision-logging-adr-system)
6. [Phase 5: Quality Gates & Verification](#phase-5-quality-gates--verification)
7. [Phase 6: Kontinuierliches Lernen](#phase-6-kontinuierliches-lernen)
8. [Checklisten für alle Projekt-Phasen](#checklisten-für-alle-projekt-phasen)
9. [8 Kritische Erfolgsfaktoren](#8-kritische-erfolgsfaktoren)
10. [Anti-Patterns vermeiden](#anti-patterns-vermeiden)

---

## Phase 0: Pre-Project Foundation

### 🎯 Ziel
**Lücken schließen BEVOR die Implementierung beginnt.**

### ⏱️ Zeitaufwand
1 Woche (7 Tage)

### 🔍 Warum Phase 0?
- Verhindert teure Mid-Course-Korrekturen
- Identifiziert Blocker frühzeitig
- Etabliert gemeinsames Verständnis
- Erstellt Testdaten vor dem Code

### ✅ Deliverables

#### 1. Projektcharter (`project-charter.md`)

```markdown
# Projektcharter: [Projekt-Name]

## Vision
[1-2 Absätze: Was wird gebaut und warum?]

Beispiel:
> Ein intelligenter Generator für Musiknoten, der mit KI aus Liedtiteln
> vollständige Leadsheets mit Akkorden, Texten und Grifftabellen erstellt.
> Ziel: Musicians schneller zu ihren Noten bringen (5 Min statt 30 Min manueller Arbeit).

## Success Criteria
- [ ] User kann Song in <5 Minuten generieren
- [ ] 90% Zufriedenheit bei Beta-Testern
- [ ] App startet in <2 Sekunden
- [ ] Export in mindestens 3 Formaten (PDF, PNG, MIDI)

## Out-of-Scope
- ❌ Keine automatische Audio-Transkription (zu komplex für v1.0)
- ❌ Keine Cloud-Sync (lokale App nur)
- ❌ Kein Mobile Support (Desktop only)

## Timeline
- **Base Estimate:** 28 weeks (Bottom-up calculation)
- **With Buffer (+30%):** 36-37 weeks (~9 Monate)
- **Rationale:** Unbekannte Komplexitäten, Learnings, Buffer ist Best Practice

## Resources
- Developer: 1 (you)
- AI Assistant: Claude Sonnet 4.5
- Budget: $500 für API-Kosten (LLMs)
```

#### 2. Technology Stack (`tech-stack.md`)

```markdown
# Technology Stack: [Projekt-Name]

## Gewählte Technologien

| Kategorie | Technologie | Version | Grund |
|-----------|-------------|---------|-------|
| Language | Python | 3.12 | Type Hints, Ecosystem, Performance |
| Framework | PyQt6 | 6.7.0 | Native UI, Cross-Platform |
| Database | SQLite | 3.45+ | Embedded, Zero-Config |
| Testing | pytest | 8.3+ | Industry Standard, Plugins |
| Packaging | PyInstaller | 6.10+ | Single-File Executable |

## Abgelehnte Alternativen

| Alternative | Grund der Ablehnung |
|-------------|---------------------|
| **Alembic** (Migrations) | Overhead zu hoch für Desktop-App (5000+ LOC nur für Migrations). Simple SQL + Python Runner reicht. |
| **matplotlib** (Charts) | PyQtChart ist leichtgewichtiger und nativ in Qt integriert. |
| **Electron** (UI) | 200+ MB Bundle-Size. PyQt6 ist 10× kleiner und schneller. |
| **PostgreSQL** (DB) | Requires Server. SQLite ist embedded und perfekt für Desktop. |

## Dependencies (requirements.txt)

Beispiel:
```
PyQt6==6.7.0
PyQt6-Charts==6.7.0
pyyaml==6.0.1
jsonschema==4.21.1
pytest==8.3.0
pytest-qt==4.4.0
pytest-cov==4.1.0
anthropic==0.34.0  # LLM Provider
openai==1.51.0
```

**Wichtig:** Exakte Versionen pinnen für Reproduzierbarkeit.
```

#### 3. Test-Daten vorbereiten

**Golden Sample Test-Daten** (10-20 Stück):

```markdown
# test-data/README.md

## Golden Sample Test-Daten

Diese Testfälle repräsentieren reale Use-Cases und werden in Tests verwendet.

### Kategorie 1: Simple Songs (Anfänger)
1. **"Happy Birthday"** (4 Chords, Public Domain)
2. **"Twinkle Twinkle Little Star"** (3 Chords)

### Kategorie 2: Medium Complexity
3. **"Wonderwall" (Oasis)** (8 Chords, Capo, Intro Tab)
4. **"Hotel California" (Eagles)** (9 Chords, Solo Section)

### Kategorie 3: Edge Cases
5. **Song mit Unicode** (ü, ö, ä, é, à)
6. **Song mit Special Characters** (/, #, ♭, ♯)
7. **Very Long Song** (>200 lines)
8. **Instrumental Only** (No Lyrics)

### Mock LLM Responses
Für jeden Test-Song: ChordPro-Format Mock-Response erstellen
(vermeidet API-Kosten während Tests)

Beispiel:
```
# test-data/mocks/happy_birthday.chordpro
{title: Happy Birthday}
{key: C}

[C]Happy birthday to [G]you
[G]Happy birthday to [C]you
```
```

#### 4. Architecture Decision Records (ADRs) Template

```markdown
# ADR-001: [Titel der Entscheidung]

**Status:** 🔵 Proposed | 🟢 Accepted | 🟡 Superseded | ⚫ Deprecated

**Date:** YYYY-MM-DD

**Deciders:** [Namen oder "Team"]

---

## Context

[Beschreibe die Situation und das Problem, das gelöst werden muss]

Beispiel:
> Die App muss Noten in verschiedenen Formaten exportieren können.
> User erwarten PDF (Standard), PNG (Social Media), MIDI (DAW-Integration).
> Jedes Format erfordert unterschiedliche Libraries mit verschiedenen
> Dependencies und Komplexität.

---

## Decision

[Beschreibe die getroffene Entscheidung klar und präzise]

Beispiel:
> Wir verwenden **separate Export-Module pro Format**, implementiert als Plugins.
> Basis-App unterstützt nur PDF (via Qt). Weitere Formate sind opt-in Plugins.

---

## Alternatives Considered

### Option 1: Alle Formate in Core
- ✅ Vollständige Funktionalität out-of-the-box
- ❌ 5+ große Dependencies (music21, mido, lilypond)
- ❌ App-Größe >200 MB
- ❌ Komplexes Dependency-Management
- **Abgelehnt:** Overhead zu groß für 10% der User

### Option 2: Cloud-basierte Konvertierung
- ✅ Keine lokalen Dependencies
- ❌ Erfordert Internet-Verbindung
- ❌ Privacy-Bedenken (Noten an Server senden)
- ❌ API-Kosten (~$0.02 pro Konvertierung)
- **Abgelehnt:** Offline-Nutzung ist User-Requirement

### Option 3: Plugin-System (CHOSEN)
- ✅ Minimale Core-App (<50 MB)
- ✅ Users wählen benötigte Formate
- ✅ Community kann Plugins beitragen
- ❌ Plugin-Management-Overhead
- ❌ Compatibility-Tests komplexer
- **Gewählt:** Bester Trade-off

---

## Consequences

### Positive
- App-Größe bleibt unter 50 MB
- Schnellere Installation für Basis-User (80%)
- Erweiterbarkeit für fortgeschrittene Use-Cases

### Negative
- Plugin-System muss entwickelt werden (Phase 8, 2 Wochen)
- Permissions-Sandbox erforderlich (Security)
- Plugin-Discovery-UI nötig

### Neutral
- Plugin-API muss stabil sein (Breaking Changes teuer)
- Dokumentation für Plugin-Entwickler erforderlich

---

## Implementation

- [ ] Plugin-Manager entwickeln (Phase 8)
- [ ] Permissions-System implementieren
- [ ] PDF-Export in Core implementieren (Phase 5)
- [ ] Plugin-API dokumentieren
- [ ] Beispiel-Plugin erstellen (MIDI-Export)

---

## Verification

**Acceptance Criteria:**
- [ ] Core-App < 50 MB ohne Plugins
- [ ] PDF-Export funktioniert ohne Installation
- [ ] Plugins installierbar/deinstallierbar
- [ ] Permissions-Dialog zeigt alle Berechtigungen
- [ ] Mindestens 2 Community-Plugins veröffentlicht (6 Monate nach Launch)

---

## Notes

- Link zu Diskussion: GitHub Issue #42
- Related ADRs: ADR-005 (Plugin Security Model)
```

#### 5. Verifikations-Checkliste für Phase 0

```markdown
## Phase 0 Verification

Vor dem Start von Phase 1 MÜSSEN folgende Kriterien erfüllt sein:

### Dokumentation
- [ ] project-charter.md vollständig (Vision, Success Criteria, Out-of-Scope)
- [ ] tech-stack.md vollständig (Chosen + Rejected Alternatives)
- [ ] requirements.txt existiert mit exakten Versionen
- [ ] requirements.txt installiert ohne Fehler (`pip install -r requirements.txt`)

### Test-Daten
- [ ] 10-20 Golden Sample Test-Daten erstellt
- [ ] Mock LLM-Responses für alle Test-Daten vorhanden
- [ ] Edge-Cases identifiziert und dokumentiert

### Architecture
- [ ] ADR-001 für Haupt-Architektur-Entscheidung geschrieben
- [ ] Architecture-Diagramm erstellt (ASCII oder visuell)
- [ ] Kritische Files/Folders definiert (~10-20 Dateien)

### Risk Analysis
- [ ] Top 5 Risiken identifiziert (Probability × Impact)
- [ ] Mitigation-Strategy für jedes Risiko definiert
- [ ] Blocker-Liste leer oder Lösungen dokumentiert

### Timeline
- [ ] Base Estimate berechnet (Bottom-up, per-phase)
- [ ] Buffer (+30%) hinzugefügt und kommuniziert
- [ ] Milestones definiert (typisch 3-5 Milestones)

### Team Alignment
- [ ] Alle Stakeholder haben Dokumentation gelesen
- [ ] Scope-Fragen geklärt
- [ ] Erwartungen abgestimmt (Timeline, Features)
```

---

## Phase 1: Implementierungsplan-Exzellenz

### 🎯 Prinzip
**Spezifikation VOR Implementierung**

### ⏱️ Zeitaufwand
2-5 Tage (abhängig von Projektgröße)

### 📋 Struktur eines exzellenten Plans

#### Template: `IMPLEMENTIERUNGSPLAN.md`

```markdown
# Implementierungsplan: [Projekt-Name]

**Version:** 1.0.0
**Letzte Aktualisierung:** YYYY-MM-DD
**Status:** 🚧 Planning

---

## 1. Executive Summary

### Projekt-Ziel
[1-2 Absätze Zusammenfassung]

### Timeline
- **Base Estimate:** X weeks
- **With Buffer (+30%):** Y weeks
- **Start:** YYYY-MM-DD (geplant)
- **MVP:** YYYY-MM-DD (geplant)
- **v1.0 Release:** YYYY-MM-DD (geplant)

### Key Features (Top 5)
1. Feature A (Critical)
2. Feature B (High Priority)
3. Feature C (Medium Priority)
4. Feature D (Nice-to-Have)
5. Feature E (Nice-to-Have)

---

## 2. Technology Stack

[Link zu tech-stack.md oder inline kopieren]

---

## 3. Architecture Overview

### High-Level Diagram

```
┌─────────────────────────────────────────┐
│  UI Layer                               │
│  - Main Window    - Settings Dialog     │
└─────────────────────────────────────────┘
              ↓
┌─────────────────────────────────────────┐
│  Core Layer (Business Logic)           │
│  - Feature A Manager                    │
│  - Feature B Engine                     │
└─────────────────────────────────────────┘
              ↓
┌─────────────────────────────────────────┐
│  Data Layer                             │
│  - Database Models                      │
│  - File Storage                         │
└─────────────────────────────────────────┘
```

### Directory Structure

```
project/
├── src/
│   ├── ui/
│   │   ├── main_window.py
│   │   ├── settings_dialog.py
│   │   └── widgets/
│   ├── core/
│   │   ├── feature_a_manager.py
│   │   ├── feature_b_engine.py
│   │   └── utils/
│   ├── models/
│   │   ├── database.py
│   │   └── entities.py
│   └── plugins/
│       └── plugin_manager.py
├── tests/
│   ├── test_feature_a.py
│   └── conftest.py
├── migrations/
│   ├── 001_initial.sql
│   └── README.md
├── requirements.txt
├── README.md
└── IMPLEMENTIERUNGSPLAN.md
```

**Geschätzte Größe:**
- ~80-120 Python-Dateien
- ~15,000-20,000 LOC
- ~50-60 Test-Files
- ~80% Test Coverage Ziel

---

## 4. Phase Breakdown

### Phase 1: Foundation (Week 1)

**Timeline:** 1 week (5 working days)

**Deliverables:**
- `src/core/command_manager.py` (Undo/Redo, 180 LOC)
- `src/core/config_manager.py` (Settings Persistence, 120 LOC)
- `tests/test_command_manager.py` (Unit Tests, 150 LOC)
- `tests/conftest.py` (Pytest Config, 60 LOC)

**Dependencies:**
- None (can start immediately after Phase 0)

**Verification:**
- [ ] Undo/Redo funktioniert für 10 Test-Commands
- [ ] Config speichert/lädt Settings korrekt
- [ ] pytest läuft mit 0 Failures
- [ ] Coverage >80% für neue Dateien

---

### Phase 2: Database Layer (Week 2)

**Timeline:** 1 week

**Deliverables:**
- `src/models/database.py` (Connection Manager, 150 LOC)
- `src/models/song.py` (Song Model, 120 LOC)
- `migrations/001_initial.sql` (Schema, 200 LOC)
- `migrations/migrate.py` (Runner, 80 LOC)
- `tests/test_models.py` (DB Tests, 200 LOC)

**Dependencies:**
- Phase 1 (Config Manager für DB-Path)

**Verification:**
- [ ] migrations/migrate.py läuft durch (in-memory test)
- [ ] CRUD operations funktionieren
- [ ] Foreign Key Constraints validiert
- [ ] Database file < 1MB für 100 Test-Songs

---

[... weitere Phasen ...]

### Phase 10: Testing & Polish (Week 10)

**Timeline:** 1 week

**Deliverables:**
- Integration-Tests für alle Workflows
- Performance-Benchmarks
- Bug Fixes aus Beta-Testing
- Documentation finalisiert

**Verification:**
- [ ] End-to-End-Tests grün
- [ ] App-Start <2s
- [ ] Memory-Usage <100 MB
- [ ] Keine Critical/High Bugs offen

---

## 5. Feature Details

### Feature 1: [Name]

**Priority:** Critical / High / Medium / Low

**Description:**
[2-3 Absätze detaillierte Beschreibung]

**User Stories:**
- Als [Rolle] möchte ich [Aktion], um [Nutzen]
- ...

**Technical Implementation:**
- File: `src/core/feature1.py` (200 LOC)
- Tests: `tests/test_feature1.py` (150 LOC)
- UI: `src/ui/feature1_widget.py` (180 LOC)

**Edge Cases:**
- Edge Case 1: [Beschreibung] → Handling: [Lösung]
- Edge Case 2: [Beschreibung] → Handling: [Lösung]

**Verification:**
- [ ] Criterion 1
- [ ] Criterion 2

---

## 6. Risk Analysis

| Risiko | Probability | Impact | Mitigation |
|--------|------------|--------|------------|
| API-Provider ändert Format | Medium | High | Multi-Provider-Strategie, Factory-Pattern |
| Performance-Issues | Medium | Medium | Profiling in Phase 9, Budget definiert |
| Scope Creep | High | High | Change Requests benötigen ADR |

---

## 7. Timeline Summary

| Phase | Weeks | Description |
|-------|-------|-------------|
| Phase 0 | 1 | Pre-Implementation (Lücken schließen) |
| Phase 1 | 1 | Foundation (Undo/Config) |
| Phase 2 | 1 | Database Layer |
| ... | ... | ... |
| Phase 10 | 1 | Testing & Polish |
| **Total** | **10** | **Base Estimate** |
| **Buffer** | **+3** | **+30% Buffer** |
| **Recommended** | **13** | **~3 Monate** |

---

## 8. Quality Gates

### Per-Phase Quality Gates
Jede Phase MUSS folgende Kriterien erfüllen:

**Automated:**
- [ ] pytest mit 0 Failures
- [ ] Coverage >80% für neue Dateien
- [ ] mypy type-checking ohne Fehler
- [ ] flake8 linting bestanden

**Manual:**
- [ ] Deliverables funktionieren wie spezifiziert
- [ ] Performance-Budget eingehalten
- [ ] Keine Regression in vorherigen Features

**Documentation:**
- [ ] README.md aktualisiert (falls relevant)
- [ ] CHANGELOG.md enthält neuen Eintrag
- [ ] Docstrings für öffentliche Funktionen

---

## 9. Version History

### v1.0.0 (YYYY-MM-DD) - Initial
- 10 Phasen, 10 Wochen Base, 13 Wochen mit Buffer
- 8 Core Features definiert

### v1.1.0 (YYYY-MM-DD) - Refinement
- +2 Quality-of-Life Features (User Feedback)
- Timeline: 12 Wochen Base, 16 Wochen mit Buffer
- Reason: Beta-Tester wünschten Feature X

[Iterative Verfeinerung ist erlaubt und erwünscht!]

---

## 10. Appendix

### A. Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Ctrl+N | New |
| Ctrl+S | Save |
| Ctrl+Z | Undo |

### B. Database Schema

[SQL Schema inline oder Link zu migrations/]

### C. API Endpoints (falls relevant)

[...]

---

**Ende des Implementierungsplans**
```

### 🔑 Schlüsselprinzipien

#### 1. Phasen als Deliverables, nicht Tasks

❌ **Vage:**
```
Phase 3: Implement Feature X
```

✅ **Konkret:**
```
Phase 3: Feature X (Week 3-4)
Deliverables:
- src/core/feature_x.py (200 LOC)
- src/ui/feature_x_widget.py (150 LOC)
- tests/test_feature_x.py (180 LOC)

Verification:
- [ ] Feature X works for 5 Test-Cases
- [ ] UI responsive (<100ms)
- [ ] Tests green with >85% coverage
```

#### 2. Iterative Verfeinerung dokumentieren

```markdown
## Version History

### v1.0.0 (2026-01-15) - Initial
- 8 weeks, 6 features

### v2.0.0 (2026-01-22) - Expansion
- 12 weeks, +4 features
- Reason: User research identified gaps

### v2.1.0 (2026-01-31) - Refinement
- 14 weeks, Fixed 3 critical specification gaps
- Reason: Technical review identified blockers
```

**Warum das funktioniert:**
- Zeigt Lernprozess
- Stakeholder sehen Transparenz
- Versionen nachvollziehbar

#### 3. Pragmatische Tech-Choices mit Begründung

```markdown
## Migration Strategy

### Decision: Simple SQL + Python Runner (NOT Alembic)

**Rationale:**
- Desktop app, nicht Multi-Tenant SaaS
- Alembic ist 5000+ LOC nur für Migrations
- Overhead: Versioning, Auto-Generate, Downgrade
- Unser Bedarf: 5-10 SQL-Dateien, einmal anwenden

**Implementation:**
```python
def apply_migration(conn, migration_file):
    with open(migration_file, 'r') as f:
        sql = f.read()
    conn.executescript(sql)
    conn.commit()
```

**Trade-off:**
- ✅ Einfacher Code
- ✅ Keine Dependency
- ❌ Kein Auto-Rollback (via Backup)
- ❌ Keine Downgrade (akzeptabel)
```

#### 4. Buffer-Strategie transparent machen

```markdown
## Timeline Estimates

### Approach
- **Careful Estimation:** Bottom-up, per-phase
- **Realism:** Based on similar projects
- **Buffer:** Industry-standard +30%

### Base Estimate
10 weeks (calculated)

### Recommended (With Buffer)
13 weeks (~3 months)

### Rationale
- Unbekannte Komplexitäten werden auftauchen
- Buffer ist NICHT Pessimismus, sondern Best Practice
- Stakeholder bevorzugen "Finish Early" > "Late"
```

---

## Phase 2: Session-Kontinuität & State-Management

### 🎯 Prinzip
**Projekt-Kontinuität ist kein Afterthought**

### ⏱️ Setup-Zeit
3-5 Stunden (einmalig)

### 📋 Drei-Schichten-Architektur

```
┌────────────────────────────────────────────────────────┐
│  LAYER 1: CONTEXT (WHY)                                │
│  Format: Architectural Decision Records (ADRs)         │
│  Purpose: Begründungen, Alternativen, Konsequenzen     │
│  Storage: .continuity/decisions/NNN_title.md           │
│  Change Frequency: Selten (nur bei großen Decisions)   │
└────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────┐
│  LAYER 2: SESSION (WHAT/WHEN)                          │
│  Format: YAML mit JSON-Schema-Validierung              │
│  Purpose: Arbeit, Tasks, Changes, Progress             │
│  Storage: .continuity/sessions/YYYY-MM-DD_NNN.yml      │
│  Change Frequency: Jede Session                        │
└────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────┐
│  LAYER 3: PROJECT (EXISTS)                             │
│  Format: Code, Docs, Config, Database                  │
│  Purpose: Deliverables, Build-Artefakte                │
│  Storage: Git + 5-Layer-Backup                         │
│  Change Frequency: Kontinuierlich                      │
└────────────────────────────────────────────────────────┘
```

### Session-Metadaten-Schema

**Minimal-Version (`.continuity/config/session-schema.json`):**

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "required": ["session", "git"],
  "properties": {
    "session": {
      "type": "object",
      "required": ["id", "start_time", "operator", "context"],
      "properties": {
        "id": {"type": "string"},
        "start_time": {"type": "string", "format": "date-time"},
        "end_time": {"type": "string", "format": "date-time"},
        "duration_minutes": {"type": "integer"},
        "operator": {
          "type": "object",
          "properties": {
            "type": {"enum": ["ai", "human"]},
            "identity": {"type": "string"}
          }
        },
        "context": {
          "type": "object",
          "properties": {
            "type": {"enum": ["planning", "implementation", "debugging", "refactoring", "review"]},
            "phase": {"type": "string"},
            "goal": {"type": "string"}
          }
        },
        "handoff": {
          "type": "object",
          "properties": {
            "state": {"enum": ["in_progress", "blocked", "completed"]},
            "next_steps": {"type": "array", "items": {"type": "string"}},
            "blockers": {"type": "array", "items": {"type": "string"}}
          }
        },
        "metrics": {
          "type": "object",
          "properties": {
            "commits": {"type": "integer"},
            "lines_added": {"type": "integer"},
            "lines_removed": {"type": "integer"}
          }
        }
      }
    },
    "git": {
      "type": "object",
      "properties": {
        "branch": {"type": "string"},
        "commit_hash": {"type": "string"},
        "uncommitted_changes": {"type": "boolean"}
      }
    }
  }
}
```

### Session-Lifecycle-Scripts

**1. `session-start.sh`**

```bash
#!/bin/bash
set -euo pipefail

SESSION_TYPE=${1:-implementation}  # planning, implementation, debugging, refactoring, review
GOAL=${2:-"Work on project"}

# Generate Session ID
DATE=$(date +%Y-%m-%d)
LAST_NUM=$(ls .continuity/sessions/*.yml 2>/dev/null | grep "^$DATE" | wc -l || echo 0)
SESSION_ID="${DATE}_session-$(printf '%03d' $((LAST_NUM + 1)))"

# Capture Git State
BRANCH=$(git branch --show-current 2>/dev/null || echo "main")
COMMIT=$(git rev-parse HEAD 2>/dev/null || echo "none")
UNCOMMITTED=$(git status --porcelain 2>/dev/null | wc -l)

# Create Session YAML
cat > ".continuity/sessions/${SESSION_ID}.yml" <<EOF
session:
  id: "$SESSION_ID"
  start_time: "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  operator:
    type: "ai"
    identity: "Unknown"
  context:
    type: "$SESSION_TYPE"
    goal: "$GOAL"
  handoff:
    state: "in_progress"
git:
  branch: "$BRANCH"
  commit_hash: "$COMMIT"
  uncommitted_changes: $([ $UNCOMMITTED -gt 0 ] && echo true || echo false)
EOF

echo "✅ Session $SESSION_ID started"
echo "Template: .continuity/context/templates/${SESSION_TYPE}_session.md"
```

**2. `session-end.sh`**

```bash
#!/bin/bash
set -euo pipefail

# Find current session
SESSION_FILE=$(ls -t .continuity/sessions/*.yml | head -1)
SESSION_ID=$(basename "$SESSION_FILE" .yml)

# Get Start Time
START_TIME=$(grep "start_time:" "$SESSION_FILE" | awk '{print $2}' | tr -d '"')
START_COMMIT=$(grep "commit_hash:" "$SESSION_FILE" | awk '{print $2}' | tr -d '"')

# Calculate Metrics
END_TIME=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
if [[ "$OSTYPE" == "darwin"* ]]; then
    START_EPOCH=$(date -jf "%Y-%m-%dT%H:%M:%SZ" "$START_TIME" +%s 2>/dev/null || echo "0")
    END_EPOCH=$(date -jf "%Y-%m-%dT%H:%M:%SZ" "$END_TIME" +%s 2>/dev/null || echo "0")
else
    START_EPOCH=$(date -d "$START_TIME" +%s 2>/dev/null || echo "0")
    END_EPOCH=$(date -d "$END_TIME" +%s 2>/dev/null || echo "0")
fi
DURATION=$(( (END_EPOCH - START_EPOCH) / 60 ))

# Git Stats
if [ "$START_COMMIT" != "none" ]; then
    COMMITS=$(git rev-list --count HEAD ^"$START_COMMIT" 2>/dev/null || echo "0")
    DIFF_STATS=$(git diff --shortstat "$START_COMMIT" HEAD 2>/dev/null || echo "")
    LINES_ADDED=$(echo "$DIFF_STATS" | grep -oE '[0-9]+ insertion' | grep -oE '[0-9]+' || echo "0")
    LINES_REMOVED=$(echo "$DIFF_STATS" | grep -oE '[0-9]+ deletion' | grep -oE '[0-9]+' || echo "0")
else
    COMMITS="0"
    LINES_ADDED="0"
    LINES_REMOVED="0"
fi

# Interactive Handoff
read -p "Session completed successfully? (y/n): " SUCCESS
HANDOFF_STATE=$([ "$SUCCESS" = "y" ] && echo "completed" || echo "in_progress")

read -p "Next step: " NEXT_STEP

# Update YAML
python3 - << EOF
import yaml
with open("$SESSION_FILE", 'r') as f:
    data = yaml.safe_load(f)

data['session']['end_time'] = "$END_TIME"
data['session']['duration_minutes'] = $DURATION
data['session']['handoff']['state'] = "$HANDOFF_STATE"
data['session']['handoff']['next_steps'] = ["$NEXT_STEP"]
data['session']['metrics'] = {
    'commits': $COMMITS,
    'lines_added': $LINES_ADDED,
    'lines_removed': $LINES_REMOVED
}

with open("$SESSION_FILE", 'w') as f:
    yaml.dump(data, f, default_flow_style=False, sort_keys=False)

print("✓ Session YAML updated")
EOF

echo "✅ Session $SESSION_ID finalized"
echo "Duration: $DURATION minutes"
echo "Commits: $COMMITS, Lines: +$LINES_ADDED/-$LINES_REMOVED"
```

---

## Phase 3: Backup & Recovery

### 🎯 Prinzip
**Defense in Depth**

### ⏱️ Setup-Zeit
2-3 Stunden (einmalig)

### 📋 Fünf-Schichten-Modell

```
Layer 1: Git Version Control
├── Zweck: Code & Docs mit Historie
├── Stärke: Branching, Merging, Diffing
├── Schwäche: Keine Backups wenn Remote fehlt
└── Retention: Unbegrenzt

Layer 2: Lokale Timestamped Backups
├── Zweck: Snapshot aller wichtigen Dateien
├── Stärke: Schnelle Restore, keine Netzwerk-Dependency
├── Schwäche: Geht verloren bei Festplatten-Crash
└── Retention: 30 Tage

Layer 3: STATUS_TRACKING.md (Human-Readable)
├── Zweck: Recovery-Szenarien dokumentiert
├── Stärke: Ohne Tools lesbar
├── Schwäche: Keine Dateien, nur Anleitung
└── Retention: Git-versioniert

Layer 4: Cloud Backup (Optional)
├── Zweck: Offsite-Schutz
├── Stärke: Schutz vor lokalem Datenverlust
├── Schwäche: Netzwerk erforderlich, Kosten
└── Retention: Nach Cloud-Policy

Layer 5: Portable Packages
├── Zweck: Standalone-Archiv für Distribution
├── Stärke: Keine Dependencies, Offline-fähig
├── Schwäche: Manuell zu erstellen
└── Retention: Milestone-basiert
```

### Implementierung Layer 2: Inkrementelle Backups

**Script: `backup.sh`**

```bash
#!/bin/bash
set -euo pipefail

BACKUP_DIR="${BACKUP_TARGET:-./backups}/$(basename "$PWD")"
RETENTION_DAYS=30
MAX_BACKUPS=100

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
TEMP_BACKUP="$BACKUP_DIR/temp_$TIMESTAMP"
FINAL_BACKUP="$BACKUP_DIR/$TIMESTAMP"
LATEST_LINK="$BACKUP_DIR/latest"

# Excludes
EXCLUDES=(
  ".git/objects/*"
  "*.pyc"
  "__pycache__"
  "node_modules"
  "venv"
  ".DS_Store"
)

# Build exclude flags
EXCLUDE_FLAGS=()
for pattern in "${EXCLUDES[@]}"; do
  EXCLUDE_FLAGS+=(--exclude="$pattern")
done

mkdir -p "$BACKUP_DIR"

# Incremental backup using hardlinks
if [ -d "$LATEST_LINK" ]; then
  rsync -a --link-dest="$LATEST_LINK" "${EXCLUDE_FLAGS[@]}" ./ "$TEMP_BACKUP/" || {
    rsync -a "${EXCLUDE_FLAGS[@]}" ./ "$TEMP_BACKUP/"
  }
else
  rsync -a "${EXCLUDE_FLAGS[@]}" ./ "$TEMP_BACKUP/"
fi

mv "$TEMP_BACKUP" "$FINAL_BACKUP"
rm -f "$LATEST_LINK"
ln -s "$FINAL_BACKUP" "$LATEST_LINK"

# Cleanup old backups
find "$BACKUP_DIR" -maxdepth 1 -type d -name "20*" -mtime +$RETENTION_DAYS -exec rm -rf {} \;

echo "✅ Backup created: $FINAL_BACKUP"
```

**Warum rsync mit hardlinks?**
- Platzsparend: Unveränderte Dateien nicht dupliziert
- Schnell: Nur Änderungen kopiert
- Inkrementell: Jedes Backup vollständig, aber nur Deltas gespeichert

---

## Phase 4: Decision-Logging (ADR-System)

### 🎯 Prinzip
**Architektur-Entscheidungen sind Projekt-Assets**

### ⏱️ Pro ADR
15-30 Minuten

### 📋 ADR-Erstellung automatisieren

**Script: `scripts/create-adr.sh`**

```bash
#!/bin/bash
set -euo pipefail

TITLE=$1
DECIDERS=${2:-"Team"}

# Find next number
LAST_NUM=$(ls .continuity/decisions/*.md 2>/dev/null | grep -oE '[0-9]{3}' | sort -n | tail -1 || echo "000")
NEXT_NUM=$(printf '%03d' $((10#$LAST_NUM + 1)))

ADR_FILE=".continuity/decisions/${NEXT_NUM}_${TITLE// /_}.md"

cat > "$ADR_FILE" <<EOF
# ADR-${NEXT_NUM}: ${TITLE}

**Status:** 🔵 Proposed

**Date:** $(date +%Y-%m-%d)

**Deciders:** $DECIDERS

---

## Context

[Beschreibe die Situation]

---

## Decision

[Beschreibe die Entscheidung]

---

## Alternatives Considered

### Option 1: [Name]
- ✅ Pro
- ❌ Con
- **Abgelehnt:** Grund

---

## Consequences

### Positive
-

### Negative
-

---

## Implementation

- [ ] Task 1

---

## Verification

- [ ] Criterion 1
EOF

echo "✅ ADR created: $ADR_FILE"
${EDITOR:-nano} "$ADR_FILE"
```

---

## Phase 5: Quality Gates & Verification

### 🎯 Prinzip
**Qualität ist eingebaut, nicht nachträglich geprüft**

### ⏱️ Pro Phase
30-60 Minuten (Checkliste definieren)

### 📋 Quality Gates Template

```markdown
## Phase X Verification

### Automated
- [ ] pytest mit 0 Failures
- [ ] Coverage >80% für neue Dateien
- [ ] mypy type-checking ohne Fehler
- [ ] flake8 linting bestanden
- [ ] Keine Security-Warnungen (bandit)

### Manual
- [ ] Feature X funktioniert für 5 Test-Cases
- [ ] Performance: Operation <100ms
- [ ] UI responsive (kein Freeze)
- [ ] Keine Memory-Leaks (valgrind/Profiler)

### Documentation
- [ ] Docstrings für alle öffentlichen Funktionen
- [ ] README.md aktualisiert
- [ ] CHANGELOG.md enthält neuen Eintrag

### Review
- [ ] Code-Review von 1+ Person
- [ ] Alle Review-Kommentare addressiert
- [ ] ADR erstellt für wichtige Entscheidungen
```

---

## Phase 6: Kontinuierliches Lernen

### 🎯 Prinzip
**Projekte entwickeln sich, Pläne auch**

### ⏱️ Pro Session
5 Minuten (Retrospektive)

### 📋 Post-Session-Retrospektive

```markdown
## Retrospektive: Session {ID}

### Was lief gut?
- [Erfolge]

### Was lief schlecht?
- [Probleme]

### Lessons Learned
- [Erkenntnisse]

### Action Items für Prozess-Verbesserung
- [ ] [Konkrete Änderung am Workflow]
```

---

## Checklisten für alle Projekt-Phasen

### Pre-Project (Woche -1)

```markdown
- [ ] Projekt-Charter erstellt
- [ ] Technology Stack dokumentiert
- [ ] Abgelehnte Alternativen dokumentiert
- [ ] 10-20 Golden Sample Test-Daten erstellt
- [ ] Risiko-Matrix erstellt
- [ ] Timeline mit Buffer (+30%) berechnet
- [ ] ADR-001 geschrieben
```

### Week 1: Setup

```markdown
- [ ] Repository initialisiert
- [ ] README.md erstellt
- [ ] .gitignore konfiguriert
- [ ] requirements.txt finalisiert
- [ ] Session-Framework initialisiert
- [ ] Backup-System getestet
- [ ] IMPLEMENTIERUNGSPLAN.md v1.0.0 erstellt
- [ ] CHANGELOG.md initialisiert
```

### Jede Session

```markdown
- [ ] ./session-start.sh ausgeführt
- [ ] Session-Template gelesen
- [ ] Letzte Session-Handoff reviewed
- [ ] [ARBEIT]
- [ ] Tests parallel zu Code geschrieben
- [ ] Commits semantisch benannt
- [ ] Wichtige Entscheidungen → ADR erstellt
- [ ] ./session-end.sh ausgeführt
- [ ] Backup verifiziert
```

### Phase-Abschluss

```markdown
- [ ] Alle Deliverables erstellt
- [ ] Quality Gates bestanden
- [ ] Verification-Checkliste abgehakt
- [ ] Integration-Tests grün
- [ ] Dokumentation aktualisiert
- [ ] CHANGELOG.md ergänzt
- [ ] Git-Tag erstellt (z.B. `phase-1-complete`)
```

---

## 8 Kritische Erfolgsfaktoren

### 1. Spezifikation vor Implementation

❌ **Scheitern:** "Wir fangen einfach an und sehen dann"
✅ **Erfolg:** "Phase 0 schließt alle bekannten Lücken, dann Phase 1"

### 2. Iterative Verfeinerung

❌ **Scheitern:** "Plan v1.0.0 ist perfekt, keine Änderungen"
✅ **Erfolg:** "Plan v1.0 → v2.0 (Feedback) → v2.1 (Review)"

### 3. Pragmatismus über Perfektion

❌ **Scheitern:** "Alembic ist Best Practice, also nutzen wir es"
✅ **Erfolg:** "Alembic ist Overhead für Desktop-App, Simple SQL reicht"

### 4. Qualität einbauen, nicht nachprüfen

❌ **Scheitern:** "Phase 10: Tests schreiben für alles"
✅ **Erfolg:** "Jede Phase: Tests parallel zu Code, 80% Coverage Gate"

### 5. Session-Kontinuität als First-Class

❌ **Scheitern:** "Wir notieren uns was in Slack/Email"
✅ **Erfolg:** "YAML-Sessions + ADRs + Quick-Start-Kontext"

### 6. Backup-Redundanz ohne Overhead

❌ **Scheitern:** "Git reicht, Backups sind Overhead"
✅ **Erfolg:** "5-Layer-System (Git + Lokal + Cloud + Tracking + Portable)"

### 7. Entscheidungen dokumentieren

❌ **Scheitern:** "Das wissen wir schon"
✅ **Erfolg:** "ADR für jede wichtige Entscheidung"

### 8. Transparente Buffer-Strategie

❌ **Scheitern:** "30 Wochen, definitiv"
✅ **Erfolg:** "30 Wochen base, 39 Wochen recommended (+30% buffer)"

---

## Anti-Patterns vermeiden

### Anti-Pattern 1: Vibe Coding ohne Plan

**Problem:**
- Kein klares Ziel
- Features werden zufällig implementiert
- Keine Priorisierung

**Lösung:**
- Phase 0 mit project-charter.md
- IMPLEMENTIERUNGSPLAN.md mit Phase-Breakdown
- Jede Session hat konkretes Goal

### Anti-Pattern 2: Context-Loss bei Unterbrechungen

**Problem:**
- Nach Pause: "Was habe ich zuletzt gemacht?"
- Keine Handoff-Informationen
- Doppelte Arbeit

**Lösung:**
- Session-Framework mit Handoff
- Quick-Start-Kontext auto-generiert
- Letzte Session YAML lesen

### Anti-Pattern 3: "Wir schreiben Tests später"

**Problem:**
- Tests werden nie geschrieben
- Code ist untestable
- Regression-Bugs häufig

**Lösung:**
- Tests parallel zu Code
- Quality Gates pro Phase
- Coverage >80% erzwungen

### Anti-Pattern 4: Entscheidungen im Nebel

**Problem:**
- Nach Monaten: "Warum haben wir X so gemacht?"
- Keine Dokumentation von Alternativen
- Wiederholte Diskussionen

**Lösung:**
- ADR für jede wichtige Entscheidung
- Alternatives Considered dokumentieren
- ADRs verlinkt mit Sessions

### Anti-Pattern 5: "Ein Backup reicht"

**Problem:**
- Single Point of Failure
- Festplatten-Crash → Projekt verloren
- Git ohne Remote → kein Backup

**Lösung:**
- 5-Layer-Backup-System
- Regelmäßige Restore-Tests
- Automatisierung via session-end.sh

---

## Zusammenfassung: Das Vibe Coding Rezept

```
1. Phase 0: Lücken schließen (1 Woche)
   ├── project-charter.md
   ├── tech-stack.md
   ├── Test-Daten (10-20 Samples)
   ├── ADR-001 (Haupt-Architektur)
   └── Verifikations-Checkliste

2. IMPLEMENTIERUNGSPLAN.md: Deliverables > Tasks
   ├── Phase-Breakdown mit Zeitschätzungen
   ├── Konkrete Dateien + LOC
   ├── Verification-Checklisten
   └── Buffer +30% transparent

3. Session-Framework: YAML + Schema + Templates
   ├── session-start.sh / session-end.sh
   ├── Drei-Schichten-Architektur (WHY/WHAT/EXISTS)
   ├── Handoff-Mechanismus
   └── Quick-Start auto-generiert

4. Backup: 5 Layer
   ├── Git Version Control
   ├── Lokale Backups (rsync + hardlinks)
   ├── STATUS_TRACKING.md
   ├── Cloud Backup (optional)
   └── Portable Packages

5. ADRs: Für jede wichtige Entscheidung
   ├── create-adr.sh Script
   ├── Integration in session-end.sh
   └── Verlinkt mit Session YAMLs

6. Quality Gates: Pro Phase, nicht am Ende
   ├── Automated (pytest, coverage, mypy)
   ├── Manual (Performance, UI, Memory)
   └── Documentation (Docstrings, CHANGELOG)

7. Buffer: +30% transparent kommuniziert
   ├── Base Estimate (Bottom-up)
   └── Recommended (Mit Buffer)

8. Iterieren: v1.0 → v2.0 → v2.1 erlaubt
   ├── Version History dokumentiert
   └── Reasons for Change transparent
```

---

## Appendix: Vollständiges Script-Set

### 1. `session-start.sh` (Vollversion im Dokument oben)
### 2. `session-end.sh` (Vollversion im Dokument oben)
### 3. `scripts/create-adr.sh` (Vollversion im Dokument oben)
### 4. `backup.sh` (Vollversion im Dokument oben)

### 5. `scripts/validate-session.sh`

```bash
#!/bin/bash
SESSION_FILE=$1

python3 - "$SESSION_FILE" << 'EOF'
import sys, json, yaml, jsonschema

session_file = sys.argv[1]
schema_file = ".continuity/config/session-schema.json"

with open(schema_file, 'r') as f:
    schema = json.load(f)
with open(session_file, 'r') as f:
    session = yaml.safe_load(f)

try:
    jsonschema.validate(session, schema)
    print(f"✓ Valid: {session_file}")
    sys.exit(0)
except jsonschema.ValidationError as e:
    print(f"✗ Invalid: {e.message}")
    sys.exit(1)
EOF
```

---

## Lizenz

Dieses Dokument steht unter der **MIT License** und darf frei verwendet, modifiziert und weitergegeben werden.

**Autor:** Frank Jeworrek
**Basierend auf:** THE_SONG_APP Project (2026-01-31)
**Version:** 1.0.0

---

**Viel Erfolg bei deinem nächsten Vibe Coding Projekt! 🚀**
