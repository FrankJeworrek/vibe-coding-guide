# Das Universelle Vibe Coding Handbuch v3.1

**Version:** 3.1.0
**Letzte Aktualisierung:** 2026-02-01
**Sprache:** Deutsch
**Status:** Stable Release

**AI-Agnostisch:** Funktioniert mit beliebigen AI-Assistenten (Claude, GPT, Gemini, lokale LLMs) oder menschlichen Teams
**Sprach-Agnostisch:** Funktioniert mit Python, JavaScript, Go, Rust, Java, C#, PHP, Ruby und mehr
**Framework-Agnostisch:** Funktioniert für Web, Mobile, CLI, Desktop, Microservices, Embedded Systems
**Team-Skalierbar:** Funktioniert für Solo-Entwickler bis 20+ Personen Enterprise-Teams

---

## 📖 Inhaltsverzeichnis

**[Teil I: Grundlagen](#teil-i-grundlagen)**
1. [Einführung: Warum Vibe Coding oft scheitert](#1-einführung-warum-vibe-coding-oft-scheitert)
2. [Die Vibe Coding Methodik: Überblick](#2-die-vibe-coding-methodik-überblick)
3. [Skalierungs-Leitfaden](#3-skalierungs-leitfaden)

**[Teil II: Die 6-Phasen-Architektur](#teil-ii-die-6-phasen-architektur)**
- [Phase 0: Pre-Project Foundation](#phase-0-pre-project-foundation)
- [Phase 1: Implementierungsplan-Exzellenz](#phase-1-implementierungsplan-exzellenz)
- [Phase 2: Session-Kontinuität & State-Management](#phase-2-session-kontinuität--state-management)
- [Phase 3: Backup & Recovery](#phase-3-backup--recovery)
- [Phase 4: Decision Logging (ADR-System)](#phase-4-decision-logging-adr-system)
- [Phase 5: Quality Gates & Verification](#phase-5-quality-gates--verification)
- [Phase 6: Kontinuierliches Lernen](#phase-6-kontinuierliches-lernen)

**[Teil III: Praktische Anwendung](#teil-iii-praktische-anwendung)**
7. [Vollständige Workflow-Beispiele](#7-vollständige-workflow-beispiele)
8. [Kritische Erfolgsfaktoren](#8-kritische-erfolgsfaktoren)
9. [Checklisten](#9-checklisten)
10. [Tool-Auswahl-Leitfäden](#10-tool-auswahl-leitfäden)

**[Teil IV: Erweiterte Themen](#teil-iv-erweiterte-themen)**
11. [Team-Skalierungs-Patterns](#11-team-skalierungs-patterns)
12. [AI-Assistenten Strategien](#12-ai-assistenten-strategien)
13. [Security & Compliance](#13-security--compliance)
14. [Performance Optimization](#14-performance-optimization)
15. [Deployment & Operations](#15-deployment--operations)

**[Teil V: Anhang](#teil-v-anhang)**
- [Appendix A: Komplette Script-Bibliothek](#appendix-a-komplette-script-bibliothek)
- [Appendix B: Template-Bibliothek](#appendix-b-template-bibliothek)
- [Appendix C: Fallstudien](#appendix-c-fallstudien)
- [Appendix D: Quick Reference](#appendix-d-quick-reference)
- [Appendix E: Weitere Ressourcen](#appendix-e-weitere-ressourcen)

---

# Teil I: Grundlagen

## 1. Einführung: Warum Vibe Coding oft scheitert

### 1.1 Das Problem mit Ad-hoc AI-Coding

**Vibe Coding** – das intuitive, flow-basierte Programmieren mit AI-Assistenten – hat die Software-Entwicklung revolutioniert. Mit Tools wie Claude, GPT-4, und Gemini können Entwickler in Minuten Code generieren, der früher Stunden oder Tage brauchte.

**Aber die Realität ist ernüchternd:**

❌ **80% der Vibe Coding Projekte scheitern** vor dem ersten Release
❌ **Mid-Course Chaos** tritt nach 2-4 Wochen ein, wenn die initiale Begeisterung verfliegt
❌ **Context-Loss** bei Unterbrechungen führt zu doppelter Arbeit und Inkonsistenzen
❌ **Technical Debt** akkumuliert schneller als bei traditioneller Entwicklung
❌ **Team-Koordination** scheitert, weil jeder Entwickler seinen eigenen "Vibe" hat

**Warum scheitern so viele Projekte?**

Das Problem ist NICHT die AI. Das Problem ist das **Fehlen professioneller Software-Engineering-Praktiken**:

1. **Keine klare Spezifikation** → Mid-Course-Chaos
   - Entwicklung beginnt mit "Lass uns einfach anfangen"
   - Features werden zufällig implementiert, keine Priorisierung
   - Nach 3 Wochen: "Warten, was bauen wir eigentlich?"

2. **Fehlender Kontinuitätsmechanismus** → Context-Loss bei Unterbrechungen
   - Nach Pause: "Was habe ich zuletzt gemacht?"
   - AI-Assistent hat keinen persistenten State
   - Keine Handoff-Informationen zwischen Sessions
   - Ergebnis: Doppelte Arbeit, widersprüchliche Implementierungen

3. **Keine Backup-Strategie** → Datenverlust bei Crashes
   - "Git reicht ja" – bis Festplatte crasht
   - Keine lokalen Backups, keine Cloud-Redundanz
   - Session-State nicht gesichert
   - Ergebnis: Projekt-Verlust, Wochen verschwendet

4. **Unvollständige Dokumentation** → Onboarding unmöglich
   - Code ohne Kontext: "Warum wurde das so implementiert?"
   - Kein README, keine Architektur-Dokumentation
   - Teammitglied kommt dazu: "Wo fange ich an?"
   - Ergebnis: Nur Original-Entwickler kann Code verstehen

5. **Fehlende Entscheidungsdokumentation** → Wiederholte Diskussionen
   - Nach 3 Monaten: "Warum haben wir X statt Y gewählt?"
   - Keine dokumentierten Alternativen und Trade-offs
   - Ergebnis: Dieselben Diskussionen werden immer wieder geführt

**Die traditionellen Antworten sind FALSCH:**

🚫 **"Vibe Coding ist nur für Prototypen"** → Falsch. Mit den richtigen Praktiken funktioniert es für Produktions-Software.
🚫 **"Man braucht klassisches Project Management"** → Falsch. Übermäßiger Prozess tötet den Flow, den Vibe Coding so wertvoll macht.
🚫 **"AI-Assistenten sind nicht reif"** → Falsch. Die AI ist fantastisch. Das Problem ist der fehlende professionelle Rahmen.

### 1.2 Die Vibe Coding Philosophie: Das Beste aus beiden Welten

**Dieses Handbuch löst das Problem durch einen pragmatischen Mittelweg:**

> **Vibe Coding + professionelle Praktiken = Erfolgreiche Projekte**

**Kernprinzip:**
> **Vorbereitung bestimmt Erfolg oder Scheitern.**
> Phase 0 (1 Woche für mittlere Projekte) schließt alle bekannten Lücken, BEVOR Phase 1 (Implementation) beginnt.

**Die 6-Phasen-Methodik:**

```
┌────────────────────────────────────────────────────────────┐
│  PHASE 0: Pre-Project Foundation (1 Woche)                │
│  → Lücken schließen BEVOR Implementation beginnt           │
│  → project-charter.md, tech-stack.md, Test-Daten, ADR-001 │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 1: Implementierungsplan-Exzellenz (2-5 Tage)       │
│  → Spezifikation VOR Implementation                        │
│  → Konkrete Deliverables (nicht vage Tasks)                │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 2: Session-Kontinuität & State-Management (Setup)  │
│  → YAML-Sessions mit Handoff-Protokoll                     │
│  → Drei-Schichten-Architektur (WHY/WHAT/EXISTS)            │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 3: Backup & Recovery (Setup)                       │
│  → 5-Layer Backup-Modell (Defense in Depth)               │
│  → Git + Lokal + Cloud + Tracking + Portable              │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 4: Decision Logging (ADR-System)                   │
│  → Architecture Decision Records für jede wichtige Wahl    │
│  → Alternatives Considered dokumentiert                    │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 5: Quality Gates & Verification (pro Phase)        │
│  → Qualität eingebaut, nicht nachträglich geprüft         │
│  → Automated + Manual + Documentation + CI/CD              │
└────────────────────────────────────────────────────────────┘
              ↓
┌────────────────────────────────────────────────────────────┐
│  PHASE 6: Kontinuierliches Lernen (pro Session)           │
│  → Post-Session Retrospektiven                             │
│  → Prozess-Verbesserungs-Loops                             │
└────────────────────────────────────────────────────────────┘
```

**Was macht diesen Ansatz anders?**

✅ **Pragmatisch über Perfekt**: Keine akademischen Konzepte, nur was in echten Projekten funktioniert
✅ **Flow-erhaltend**: Minimaler Overhead während der Entwicklung, maximale Struktur in Vorbereitung
✅ **Sprach-agnostisch**: Funktioniert mit Python, JavaScript, Go, Rust, Java – jeder Technologie
✅ **Team-skalierbar**: Von Solo-Entwickler bis 20+ Personen Enterprise-Teams
✅ **AI-agnostisch**: Funktioniert mit Claude, GPT, Gemini, oder lokalen LLMs
✅ **Erprobt**: Basierend auf 28-Wochen Real-Project (THE_SONG_APP, 15.000+ LOC)

**Was dieses Handbuch NICHT ist:**

❌ Kein Ersatz für Software-Engineering-Wissen (Clean Code, Design Patterns, etc.)
❌ Keine "Silver Bullet" die alle Probleme löst
❌ Kein starres Framework (passen Sie es an Ihre Bedürfnisse an!)
❌ Keine umfassende AI-Prompt-Engineering-Anleitung
❌ Kein Projekt-Management-Framework wie Scrum oder Kanban

**Dieses Handbuch IST:**

✅ Ein **pragmatischer Leitfaden** für Vibe Coding mit professionellen Praktiken
✅ Eine **bewährte Methodik** aus realen Projekten
✅ Ein **flexibles Framework** das Sie anpassen können
✅ Eine **Sammlung von Best Practices** für Session-Management, Backup, ADRs, Quality Gates
✅ Ein **Startpunkt** für erfolgreiche Vibe Coding Projekte

### 1.3 Für wen ist dieser Guide?

**Dieser Guide ist für Sie, wenn Sie...**

#### Solo-Entwickler (1 Person)

Sie arbeiten alleine mit einem AI-Assistenten (Claude, GPT, Gemini) und möchten:
- ✅ Ihre Projekte erfolgreich zum Abschluss bringen (nicht nur starten!)
- ✅ Nach Unterbrechungen schnell wieder einsteigen
- ✅ Entscheidungen dokumentieren (für Ihr zukünftiges Ich)
- ✅ Professionelle Backup-Strategien haben
- ✅ Von "chaotisches Prototyping" zu "strukturierte Entwicklung" upgraden

**Anwendungsfälle:** Side-Projects, Freelance-Projekte, Startup-MVPs, Learning-Projects

#### Kleine Teams (2-5 Personen)

Ihr Team arbeitet mit AI-Assistenten und Sie brauchen:
- ✅ Koordinations-Mechanismen (wer arbeitet woran?)
- ✅ Handoff-Protokolle (wie übergebe ich an Kollegen?)
- ✅ Shared Context (wie bleibt das Team synchronisiert?)
- ✅ ADR-System (wie dokumentieren wir Team-Entscheidungen?)
- ✅ Code Review Integration (wie reviewen wir AI-generierten Code?)

**Anwendungsfälle:** Startup-Teams, Small Agency-Projekte, Open-Source Kollaborationen

#### Mittlere Teams (5-15 Personen)

Ihr Team hat mehrere Squads und Sie benötigen:
- ✅ Squad-basierte Session-Management
- ✅ Cross-Team ADRs (Entscheidungen die mehrere Teams betreffen)
- ✅ Onboarding-Prozess für neue Entwickler
- ✅ Quality Gates mit CI/CD Integration
- ✅ Team-Retrospektiven und Wissens-Transfer

**Anwendungsfälle:** Scale-ups, Mid-Size Company Projekte, Enterprise Innovation Labs

#### Große Teams (15+ Personen)

Ihr Enterprise-Team benötigt:
- ✅ Governance-Strukturen für AI-Code-Generierung
- ✅ Compliance-Integration (GDPR, HIPAA, SOC2)
- ✅ Multi-Team Session-Koordination
- ✅ Architecture Review Boards für ADRs
- ✅ Enterprise Backup & Disaster Recovery

**Anwendungsfälle:** Enterprise-Projekte, Multi-Product-Plattformen, Regulated Industries

#### Projekt-Typen

Dieser Guide funktioniert für:

**Web-Applikationen:**
- Frontend: React, Vue, Angular, Svelte
- Backend: Node.js, Django, Spring Boot, Laravel, Ruby on Rails
- Full-Stack: Next.js, Remix, SvelteKit

**Mobile-Applikationen:**
- Cross-Platform: React Native, Flutter, Xamarin
- Native: Swift (iOS), Kotlin (Android)

**CLI-Tools:**
- Go (Cobra, urfave/cli)
- Rust (clap, structopt)
- Python (Click, Typer, argparse)
- Node.js (Commander, yargs)

**Desktop-Applikationen:**
- Electron, Tauri, Qt, GTK
- Native: Swift (macOS), C# (Windows)

**Microservices:**
- gRPC, REST APIs, GraphQL
- Go, Rust, Node.js, Java/Spring Cloud

**Embedded Systems:**
- Rust, C, C++ (mit Einschränkungen)

**Datenbanken & Backend:**
- SQL: PostgreSQL, MySQL, SQLite
- NoSQL: MongoDB, Redis, Cassandra

### 1.4 Wie Sie diesen Guide nutzen

#### Für Eilige: Quick Start (5 Minuten)

```bash
# 1. Lesen Sie: QUICK_START_DE.md
less QUICK_START_DE.md

# 2. Kopieren Sie Templates
cp templates/project-charter.md mein-projekt/
cp templates/session-context.md mein-projekt/

# 3. Session starten
python scripts/session-management/session-start.py

# 4. Entwickeln → Session beenden → Wiederholen!
```

**→ [Zum Quick Start Guide](QUICK_START_DE.md)**

#### Für Gründliche: Vollständiger Durchlauf (30-60 Minuten)

**Phase 1: Lesen (30 Min)**
1. Lesen Sie [Teil I: Grundlagen](#teil-i-grundlagen) (diese Sektion)
2. Überfliegen Sie [Teil II: Die 6-Phasen-Architektur](#teil-ii-die-6-phasen-architektur)
3. Entscheiden Sie Ihren [Skalierungs-Modus](#3-skalierungs-leitfaden) (Micro/Klein/Mittel/Groß)

**Phase 2: Setup (20 Min)**
4. Kopieren Sie relevante [Templates](#teil-v-anhang) für Ihr Projekt
5. Installieren Sie [Scripts](#appendix-a-komplette-script-bibliothek) (optional)
6. Erstellen Sie `project-charter.md` und `tech-stack.md`

**Phase 3: Implementation (10 Min)**
7. Starten Sie Ihre erste Session mit `session-start.py/js/sh`
8. Entwickeln Sie nach [Phase 1: Implementierungsplan](#phase-1-implementierungsplan-exzellenz)
9. Beenden Sie Session mit `session-end.py/js/sh`

#### Für Teams: Onboarding (1-2 Stunden)

**Tag 1: Team-Alignment (1h)**
1. **Team-Lesung:** Jeder liest [Teil I](#teil-i-grundlagen) (30 Min)
2. **Diskussion:** Welche Phasen sind für uns relevant? (15 Min)
3. **Entscheidungen:** [Skalierungs-Modus](#3-skalierungs-leitfaden) und Tool-Auswahl (15 Min)

**Tag 2: Setup & Erste Session (1h)**
4. **Gemeinsames Setup:** Templates kopieren, Scripts installieren (20 Min)
5. **Erste Team-Session:** Mit [Phase 2: Session-Kontinuität](#phase-2-session-kontinuität--state-management) (30 Min)
6. **Retrospektive:** Was funktionierte? Was anpassen? (10 Min)

#### Referenz-Nutzung: Während der Entwicklung

**Als Nachschlagewerk:**
- 🔍 **Suche:** Nutzen Sie Markdown-Anker (`#phase-0-pre-project-foundation`)
- 📋 **Checklisten:** [Kapitel 9: Checklisten](#9-checklisten) für konkrete TODOs
- 🛠️ **Scripts:** [Appendix A: Script-Bibliothek](#appendix-a-komplette-script-bibliothek)
- 📊 **Entscheidungen:** [Entscheidungs-Matrizen](decision-matrices/) für Tech-Stack-Wahl

**Typische Fragen während Entwicklung:**

| Frage | Antwort in... |
|-------|---------------|
| "Wie starte ich eine Session?" | [Phase 2.3: Session-Lifecycle Scripts](#phase-2-session-kontinuität--state-management) |
| "Welche Sprache soll ich wählen?" | [decision-matrices/language-selection.md](decision-matrices/language-selection.md) |
| "Wie dokumentiere ich eine Entscheidung?" | [Phase 4: ADR-System](#phase-4-decision-logging-adr-system) |
| "Wie setze ich Quality Gates?" | [Phase 5: Quality Gates](#phase-5-quality-gates--verification) |
| "Wie koordiniert sich unser Team?" | [Phase 2.6: Team-Kollaborations-Patterns](#phase-2-session-kontinuität--state-management) |
| "Was mache ich bei Datenverlust?" | [Phase 3: Backup & Recovery](#phase-3-backup--recovery) |

### 1.5 Glossar & Kernkonzepte

Bevor wir tiefer eintauchen, klären wir die wichtigsten Begriffe:

#### Vibe Coding
**Definition:** Intuitives, flow-basiertes Programmieren mit AI-Assistenten, bei dem der Entwickler in natürlicher Sprache kommuniziert und die AI Code generiert, erklärt, oder refactort.

**Nicht zu verwechseln mit:**
- **Pair Programming:** Zwei Menschen, keine AI
- **Code-Generierung:** Vibe Coding ist mehr als nur Code generieren (auch Architektur, Design, Debugging)
- **No-Code/Low-Code:** Vibe Coding ist full-stack Entwicklung mit AI-Unterstützung

#### Session
**Definition:** Ein zusammenhängender Arbeitsblock (typisch 30 Min – 4 Stunden), in dem ein Entwickler mit einem AI-Assistenten arbeitet. Jede Session hat:
- **session-start:** Beginn mit Kontext-Laden
- **Arbeit:** Entwicklung mit AI-Assistent
- **session-end:** Abschluss mit Handoff-Dokumentation

**Beispiel:** "Ich starte eine Session um Feature X zu implementieren, arbeite 2 Stunden, und beende die Session mit Notizen für mein zukünftiges Ich (oder Team-Mitglied)."

#### ADR (Architecture Decision Record)
**Definition:** Ein strukturiertes Dokument, das eine wichtige Architektur-Entscheidung dokumentiert.

**Struktur:**
- **Context:** Warum brauchen wir eine Entscheidung?
- **Decision:** Was haben wir entschieden?
- **Alternatives Considered:** Was haben wir NICHT gewählt und warum?
- **Consequences:** Was sind die positiven/negativen Auswirkungen?

**Beispiel:** "ADR-003: Wir wählen PostgreSQL statt MongoDB, weil unsere Daten relationale Integrität brauchen. Alternative MongoDB wurde abgelehnt wegen fehlender Transaktionen. Konsequenz: Mehr Setup-Aufwand, aber bessere Daten-Konsistenz."

#### Deliverable
**Definition:** Ein konkretes Ergebnis einer Phase (nicht eine vage Aufgabe).

**Gut (Deliverable):**
- ✅ `src/core/auth_manager.py` (180 LOC, OAuth2-Integration)
- ✅ `tests/test_auth.py` (150 LOC, 90% Coverage)
- ✅ `docs/api/authentication.md` (API-Dokumentation)

**Schlecht (Vage Task):**
- ❌ "Implementiere Auth"
- ❌ "Schreibe Tests"
- ❌ "Dokumentiere API"

#### Quality Gate
**Definition:** Ein Checkpoint am Ende jeder Phase, der erfüllt sein muss bevor die nächste Phase beginnt.

**Typische Quality Gates:**
- **Automated:** pytest 0 Failures, Coverage >80%, Linting passed
- **Manual:** Feature funktioniert für 5 Test-Cases, Performance <100ms
- **Documentation:** README aktualisiert, Docstrings vorhanden

**Beispiel:** "Phase 3 Quality Gate: Alle Tests grün, Coverage >85%, Performance-Budget eingehalten, ADR-005 geschrieben."

#### Handoff
**Definition:** Strukturierte Informationen am Ende einer Session, die beschreiben:
- Was wurde erreicht?
- Was ist der aktuelle Status?
- Was sind die nächsten Schritte?
- Gibt es Blocker?

**Beispiel:**
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
**Definition:** Die Pre-Project Foundation Phase (typisch 1 Woche für mittlere Projekte), in der alle bekannten Lücken geschlossen werden BEVOR die Implementation beginnt.

**Deliverables:**
- project-charter.md (Vision, Success Criteria, Out-of-Scope)
- tech-stack.md (Chosen Technologies + Rejected Alternatives)
- Test-Daten (10-20 Golden Samples)
- ADR-001 (Haupt-Architektur-Entscheidung)
- Timeline mit Buffer (+30%)

**Warum wichtig:** Verhindert teure Mid-Course-Korrekturen und gibt allen Beteiligten gemeinsames Verständnis.

#### Buffer
**Definition:** Zusätzliche Zeit (+30% empfohlen), die zu Bottom-up-Schätzungen hinzugefügt wird, um unbekannte Komplexitäten zu absorbieren.

**Beispiel:**
- **Base Estimate:** 10 Wochen (berechnet)
- **Buffer:** +3 Wochen (+30%)
- **Recommended:** 13 Wochen (kommuniziert an Stakeholder)

**Warum wichtig:** Buffer ist NICHT Pessimismus, sondern Best Practice. Stakeholder bevorzugen "Finish Early" > "Late".

#### Stack-Agnostik
**Definition:** Dieser Guide funktioniert mit jeder Programmiersprache, jedem Framework, und jeder Plattform. Wo nötig, werden Beispiele in mehreren Sprachen gegeben.

**Beispiel statt "Nutze Python":**
→ "Wähle eine Sprache mit: Type-System, Mature Ecosystem, Team-Expertise. Siehe [decision-matrices/language-selection.md](decision-matrices/language-selection.md)"

#### Drei-Schichten-Architektur (Session-Kontext)
**Definition:** Das Session-Management basiert auf 3 Informations-Ebenen:

```
Layer 1: CONTEXT (WHY)
├── ADRs (Architecture Decision Records)
├── Begründungen, Alternativen, Konsequenzen
└── Änderungsfrequenz: Selten

Layer 2: SESSION (WHAT/WHEN)
├── YAML-Sessions mit Handoffs
├── Arbeit, Tasks, Changes, Progress
└── Änderungsfrequenz: Jede Session

Layer 3: PROJECT (EXISTS)
├── Code, Docs, Config, Database
├── Deliverables, Build-Artefakte
└── Änderungsfrequenz: Kontinuierlich
```

---

## 2. Die Vibe Coding Methodik: Überblick

### 2.1 Die 6-Phasen-Architektur (Visuell)

```
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 0: Pre-Project Foundation                                 ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 1 Tag (Micro) | 3-5 Tage (Klein) | 1-2 Wochen (Groß)    ║
║  Ziel: Lücken schließen BEVOR Implementation beginnt              ║
║                                                                    ║
║  Deliverables:                                                     ║
║  ├── project-charter.md (Vision, Success Criteria, Scope)         ║
║  ├── tech-stack.md (Chosen + Rejected Alternatives)               ║
║  ├── Test-Daten (10-20 Golden Samples)                            ║
║  ├── ADR-001 (Haupt-Architektur-Entscheidung)                     ║
║  └── Timeline mit Buffer (+30%)                                    ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Alle Stakeholder aligned                                      ║
║  [ ] Tech-Stack dokumentiert mit Begründungen                      ║
║  [ ] Test-Daten vorbereitet                                        ║
║  [ ] Risiken identifiziert & mitigiert                             ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 1: Implementierungsplan-Exzellenz                         ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 1 Tag (Micro) | 2-5 Tage (Klein) | 1 Woche (Groß)       ║
║  Prinzip: Spezifikation VOR Implementation                        ║
║                                                                    ║
║  Deliverables:                                                     ║
║  └── IMPLEMENTIERUNGSPLAN.md                                       ║
║      ├── Phase-Breakdown (konkrete Deliverables)                  ║
║      ├── Timeline (Bottom-up + Buffer)                             ║
║      ├── Risk Analysis                                             ║
║      └── Quality Gates pro Phase                                   ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Jede Phase hat konkrete Deliverables (nicht vage Tasks)      ║
║  [ ] Timeline realistisch (mit Buffer)                             ║
║  [ ] Quality Gates definiert                                       ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 2: Session-Kontinuität & State-Management                 ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 3-5 Stunden (einmaliges Setup)                            ║
║  Prinzip: Projekt-Kontinuität ist kein Afterthought               ║
║                                                                    ║
║  Drei-Schichten-Architektur:                                       ║
║  ├── Layer 1 (WHY): ADRs → Begründungen                           ║
║  ├── Layer 2 (WHAT/WHEN): YAML-Sessions → Handoffs                ║
║  └── Layer 3 (EXISTS): Code/Docs → Deliverables                   ║
║                                                                    ║
║  Session-Lifecycle:                                                ║
║  1. session-start.py/js/sh → Lädt Kontext                         ║
║  2. Arbeit mit AI-Assistent                                        ║
║  3. session-end.py/js/sh → Speichert Handoff                      ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Sessions sind YAML-Schema-valid                               ║
║  [ ] Handoff-Informationen vollständig                             ║
║  [ ] Team kann Sessions nahtlos übergeben                          ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 3: Backup & Recovery                                       ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 2-3 Stunden (einmaliges Setup)                            ║
║  Prinzip: Defense in Depth                                         ║
║                                                                    ║
║  Fünf-Schichten-Backup-Modell:                                     ║
║  ├── Layer 1: Git Version Control                                 ║
║  ├── Layer 2: Lokale Timestamped Backups (rsync/robocopy/rclone) ║
║  ├── Layer 3: STATUS_TRACKING.md (Human-Readable)                 ║
║  ├── Layer 4: Cloud Backup (S3, Azure, GCP)                       ║
║  └── Layer 5: Portable Packages                                    ║
║                                                                    ║
║  Zusätzlich:                                                       ║
║  ├── Secrets Management (git-crypt, SOPS, Vault)                  ║
║  └── Disaster Recovery Drills                                      ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Backup läuft automatisch (täglich oder bei session-end)      ║
║  [ ] Restore getestet (Recovery-Drill durchgeführt)                ║
║  [ ] Secrets NICHT in Backups (oder verschlüsselt)                 ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 4: Decision Logging (ADR-System)                          ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 15-30 Min pro ADR                                          ║
║  Prinzip: Architektur-Entscheidungen sind Projekt-Assets          ║
║                                                                    ║
║  ADR-Lifecycle:                                                    ║
║  1. 🔵 Proposed → Diskussion                                       ║
║  2. 🟢 Accepted → Implementierung                                  ║
║  3. 🟡 Superseded → Ersetzt durch neueres ADR                      ║
║  4. ⚫ Deprecated → Nicht mehr relevant                             ║
║                                                                    ║
║  Wann ADR erstellen?                                               ║
║  ├── Sprach-/Framework-Wahl                                        ║
║  ├── Architektur-Entscheidungen (Monolith vs Microservices)       ║
║  ├── Datenbank-Wahl (SQL vs NoSQL)                                ║
║  ├── Deployment-Strategie (Cloud vs Self-Hosted)                  ║
║  └── Scope-Änderungen (Feature X aus v1.0 entfernen)              ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Alternatives Considered dokumentiert                          ║
║  [ ] Konsequenzen (positiv + negativ) genannt                      ║
║  [ ] Team hat ADR reviewed (bei Teams >1)                          ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 5: Quality Gates & Verification                           ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 30-60 Min pro Phase (Gate definieren + checken)           ║
║  Prinzip: Qualität eingebaut, nicht nachträglich geprüft          ║
║                                                                    ║
║  Quality Gate Template (pro Phase):                                ║
║  ├── Automated:                                                    ║
║  │   ├── Tests (pytest/Jest/go test/cargo test/JUnit)             ║
║  │   ├── Coverage >80%                                             ║
║  │   ├── Linting (flake8/ESLint/golangci-lint/clippy)             ║
║  │   └── Type-Checking (mypy/TypeScript/built-in)                 ║
║  ├── Manual:                                                       ║
║  │   ├── Feature funktioniert (5 Test-Cases)                       ║
║  │   ├── Performance-Budget eingehalten                            ║
║  │   └── UI/UX responsive (kein Freeze)                            ║
║  └── Documentation:                                                ║
║      ├── README aktualisiert                                       ║
║      ├── CHANGELOG enthält Eintrag                                 ║
║      └── Docstrings für öffentliche APIs                           ║
║                                                                    ║
║  CI/CD Integration:                                                ║
║  └── GitHub Actions / GitLab CI / Jenkins / CircleCI              ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Alle Quality Gates grün                                       ║
║  [ ] Keine Regression in vorherigen Features                       ║
║  [ ] CI/CD Pipeline passed (bei CI/CD-Nutzung)                     ║
╚═══════════════════════════════════════════════════════════════════╝
                           ↓
╔═══════════════════════════════════════════════════════════════════╗
║  PHASE 6: Kontinuierliches Lernen                                ║
║  ─────────────────────────────────────────────────────────────    ║
║  Dauer: 5 Min pro Session (Retrospektive)                         ║
║  Prinzip: Projekte entwickeln sich, Pläne auch                     ║
║                                                                    ║
║  Post-Session Retrospektive:                                       ║
║  ├── Was lief gut?                                                 ║
║  ├── Was lief schlecht?                                            ║
║  ├── Lessons Learned                                               ║
║  └── Action Items für Prozess-Verbesserung                         ║
║                                                                    ║
║  Team-Retrospektiven (bei Teams):                                  ║
║  ├── Daily Standup Integration                                     ║
║  ├── Sprint Retrospectives (alle 2 Wochen)                         ║
║  └── Post-Mortem Analysis (nach Major-Incidents)                   ║
║                                                                    ║
║  Verifikation:                                                     ║
║  [ ] Retrospektive dokumentiert                                    ║
║  [ ] Action Items umgesetzt (in nächster Session/Sprint)           ║
║  [ ] Prozess iterativ verbessert                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

### 2.2 10 Kernprinzipien

Diese Prinzipien durchziehen die gesamte Methodik:

#### 1. Spezifikation vor Implementation

❌ **Falsch:** "Lass uns einfach anfangen und sehen was passiert"
✅ **Richtig:** "Phase 0 + Phase 1 definieren Vision, Scope, und Implementierungsplan BEVOR Code geschrieben wird"

**Warum:** Mid-Course Chaos tritt auf wenn niemand weiß was gebaut werden soll. Spezifikation (nicht perfekt, aber gut genug) spart Wochen verschwendeter Arbeit.

**Beispiel:**
```markdown
# BEVOR Implementation:
project-charter.md:
- Vision: "Ein CLI-Tool das Git-Repos analysiert"
- Success Criteria: [ ] Analysiert 100+ Repos in <5 Min
                    [ ] Exportiert CSV/JSON
- Out-of-Scope: ❌ Keine GUI (v1.0)
                ❌ Keine GitHub API Integration (v2.0)
```

#### 2. Iterative Verfeinerung ist erlaubt

❌ **Falsch:** "Plan v1.0 ist perfekt, keine Änderungen"
✅ **Richtig:** "Plan v1.0 → v2.0 (Feedback) → v2.1 (Review)"

**Warum:** Projekte entwickeln sich. Neue Erkenntnisse kommen während Implementation. Versionen zeigen Lernprozess.

**Beispiel:**
```markdown
IMPLEMENTIERUNGSPLAN.md Version History:

v1.0.0 (2026-01-15): Initial (8 weeks, 6 features)
v2.0.0 (2026-01-22): Expansion (12 weeks, +4 features)
  Reason: User research identified gaps
v2.1.0 (2026-01-31): Refinement (14 weeks, fixed 3 blockers)
  Reason: Technical review identified dependencies
```

#### 3. Pragmatismus über Perfektion

❌ **Falsch:** "Wir brauchen Alembic weil es Best Practice ist"
✅ **Richtig:** "Alembic ist Overhead für Desktop-App (5000+ LOC nur für Migrations). Simple SQL Runner reicht."

**Warum:** Over-Engineering tötet Projekte. Wähle Technologien nach **tatsächlichem Bedarf**, nicht nach Hype.

**Beispiel:**
```markdown
# tech-stack.md - Abgelehnte Alternativen

| Alternative | Grund der Ablehnung |
|-------------|---------------------|
| Alembic     | Overhead für Desktop-App. Simple SQL + Python Runner reicht. |
| PostgreSQL  | Requires Server. SQLite ist embedded und perfekt für Desktop. |
| Electron    | 200+ MB Bundle. Tauri ist 10× kleiner. |
```

#### 4. Qualität einbauen, nicht nachprüfen

❌ **Falsch:** "Phase 10: Tests schreiben für alles"
✅ **Richtig:** "Jede Phase: Tests parallel zu Code, 80% Coverage Gate"

**Warum:** Tests nachträglich zu schreiben ist schmerzhaft und führt zu untestable Code. Tests parallel = besseres Design.

**Beispiel:**
```markdown
Phase 3: Auth-System (Week 3)
Deliverables:
- src/auth/manager.py (200 LOC)
- tests/test_auth.py (180 LOC) ← Parallel geschrieben!
- Coverage: 92% ← Verified

Quality Gate:
[ ] pytest 0 Failures
[ ] Coverage >80% ✓ (92%)
[ ] Auth funktioniert für 5 Test-Cases
```

#### 5. Session-Kontinuität als First-Class Concern

❌ **Falsch:** "Wir notieren uns was in Slack/Email"
✅ **Richtig:** "YAML-Sessions + ADRs + Quick-Start-Kontext"

**Warum:** Context-Loss ist der #1 Produktivitäts-Killer bei Unterbrechungen. Strukturierter Handoff löst das.

**Beispiel:**
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
      - Need API credentials for testing (ask ops-team)
```

#### 6. Backup-Redundanz ohne Overhead

❌ **Falsch:** "Git reicht, Backups sind Overhead"
✅ **Richtig:** "5-Layer-System (Git + Lokal + Cloud + Tracking + Portable)"

**Warum:** Single Point of Failure. Festplatten crashen. Git-Remote versagt. Redundanz rettet Projekte.

**Beispiel:**
```bash
# Automatisches Backup bei session-end
./session-end.sh
→ Triggers:
  1. Git commit + push
  2. rsync to local backup (timestamped)
  3. rclone sync to S3 (incremental)
  4. STATUS_TRACKING.md updated

# Recovery nach Festplatten-Crash:
./restore-from-backup.sh 2026-01-31_14-30
→ Restored in 5 minutes
```

#### 7. Entscheidungen dokumentieren

❌ **Falsch:** "Das wissen wir schon"
✅ **Richtig:** "ADR für jede wichtige Entscheidung"

**Warum:** Nach 3 Monaten: "Warum haben wir X statt Y gewählt?" Ohne ADR: Wiederholte Diskussionen.

**Beispiel:**
```markdown
# ADR-005: Warum React statt Vue?

Context: Frontend-Framework-Wahl für Web-App

Decision: React

Alternatives Considered:
- Vue: ✅ Einfacher, ❌ Kleineres Ecosystem
- Angular: ✅ Enterprise-ready, ❌ Zu heavyweight
- Svelte: ✅ Performant, ❌ Hiring schwierig

Chosen: React
- ✅ Größtes Ecosystem (Komponenten-Bibliotheken)
- ✅ Team hat React-Expertise
- ❌ Komplexere State-Management

Consequences:
+ Schnellere Entwicklung (viele fertige Komponenten)
- Mehr Boilerplate als Vue
```

#### 8. Transparente Buffer-Strategie

❌ **Falsch:** "30 Wochen, definitiv"
✅ **Richtig:** "30 Wochen base, 39 Wochen recommended (+30% buffer)"

**Warum:** Buffer ist NICHT Pessimismus, sondern Best Practice. Stakeholder bevorzugen "Finish Early" > "Late".

**Beispiel:**
```markdown
## Timeline Estimates

Approach: Bottom-up, per-phase calculation
Realism: Based on similar projects
Buffer: Industry-standard +30%

Base Estimate: 10 weeks (calculated)
Recommended (With Buffer): 13 weeks (~3 months)

Rationale:
- Unbekannte Komplexitäten werden auftauchen
- Buffer ist NICHT Pessimismus, sondern Best Practice
- Stakeholder bevorzugen "Finish Early" > "Late"
```

#### 9. Team-Skalierung explizit handhaben

❌ **Falsch:** "Wir sind jetzt 5 Leute, machen aber weiter wie Solo"
✅ **Richtig:** "Team-Patterns für Multi-Developer Sessions, ADR-Konflikt-Auflösung, Async Handoffs"

**Warum:** Solo-Patterns funktionieren NICHT für Teams. Ohne explizite Team-Koordination: Chaos.

**Beispiel:**
```yaml
# Multi-Developer Session Naming
sessions/
├── 2026-01-31_dev-alice_001.yml  # Alice's Session
├── 2026-01-31_dev-bob_001.yml    # Bob's Session
└── 2026-01-31_dev-carol_001.yml  # Carol's Session

# Handoff Protocol: Next Developer explizit genannt
handoff:
  next_developer: "bob"
  context_for_bob:
    - "I started auth-system refactor"
    - "See ADR-008 for decision rationale"
    - "Tests are failing, need your help debugging"
```

#### 10. CI/CD als Quality Gate Enforcer

❌ **Falsch:** "Wir checken Quality Gates manuell vor Merge"
✅ **Richtig:** "GitHub Actions / GitLab CI checkt automatisch bei jedem Push"

**Warum:** Menschen vergessen. CI/CD vergisst nie. Automatisierung = Konsistenz.

**Beispiel:**
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

### 2.3 Erfolgsmetriken

**Wie messen wir, ob Vibe Coding mit diesem Guide erfolgreich ist?**

#### Projekt-Level Metriken

| Metrik | Ohne Guide (typisch) | Mit Guide (Ziel) |
|--------|----------------------|------------------|
| **Projekt-Abschlussrate** | 20-30% | >80% |
| **Mid-Course Pivot-Rate** | 60-80% | <20% |
| **Context-Loss-Vorfälle** | 5-10 pro Projekt | <2 pro Projekt |
| **Datenverlust-Vorfälle** | 10-20% Projekte | <1% Projekte |
| **Time-to-Implementation** | 2-4 Wochen (Chaos-Start) | 1 Woche (Phase 0) + sauberer Start |
| **Technical Debt** | Hoch (nachträgliche Tests) | Niedrig (Tests parallel) |

#### Session-Level Metriken

| Metrik | Ohne Guide | Mit Guide |
|--------|-----------|-----------|
| **Session-Start-Zeit** | 15-30 Min (Context-Suche) | <5 Min (YAML-Laden) |
| **Session-Produktivität** | 40-60% (Unterbrechungen) | 70-90% (Flow) |
| **Handoff-Qualität** | Vage Notizen | Strukturiert (YAML) |
| **Onboarding-Zeit (neue Member)** | 2-3 Wochen | 3-5 Tage |

#### Team-Level Metriken

| Metrik | Ohne Guide | Mit Guide |
|--------|-----------|-----------|
| **Team-Alignment** | Niedrig (jeder sein "Vibe") | Hoch (Shared ADRs) |
| **Wiederholte Diskussionen** | 10-20 pro Projekt | <3 pro Projekt |
| **Merge-Konflikt-Rate** | 30-50% PRs | <10% PRs |
| **Code Review Zeit** | 2-5 Tage | <1 Tag |

#### Quality-Level Metriken

| Metrik | Ohne Guide | Mit Guide |
|--------|-----------|-----------|
| **Test Coverage** | 20-40% | >80% |
| **Bug-Escape-Rate** | Hoch (keine Quality Gates) | Niedrig (Gates pro Phase) |
| **Regression-Rate** | 30-50% Releases | <10% Releases |
| **Production-Incidents** | 5-10 pro Monat | <2 pro Monat |

**Wie Sie Ihre Metriken tracken:**

```markdown
# QUALITY_METRICS.md

## Project: MeinProjekt
## Start: 2026-01-15
## Current Phase: Phase 5

### Erfolgsmetriken (Updated: 2026-01-31)

#### Projekt-Level:
- [x] Phase 0 completed (1 week)
- [x] IMPLEMENTIERUNGSPLAN.md v2.1 (iterative refinement)
- [ ] Mid-Course Pivot: 0 (Ziel: <2)
- [ ] Context-Loss Incidents: 1 (Ziel: <2)

#### Quality-Level:
- Test Coverage: 87% (Ziel: >80%) ✓
- Bug-Escape-Rate: 5% (Ziel: <10%) ✓
- CI/CD Pipeline: Grün (15 consecutive passes)

#### Session-Level:
- Avg Session-Start-Zeit: 3 Min (Ziel: <5 Min) ✓
- Sessions mit vollständigem Handoff: 12/12 (100%)
- Team-Onboarding-Zeit (letzte 2 members): 4 Tage (Ziel: <5 Tage) ✓
```

### 2.4 Häufige Anti-Patterns

**Diese Patterns führen zum Scheitern – vermeiden Sie sie!**

#### Anti-Pattern 1: "Vibe Coding ohne Plan"

**Problem:**
- Keine klare Vision
- Features werden zufällig implementiert
- Keine Priorisierung
- Nach 3 Wochen: "Was bauen wir eigentlich?"

**Symptome:**
- Keine project-charter.md
- Kein IMPLEMENTIERUNGSPLAN.md
- Jede Session hat ein zufälliges Goal
- Features werden halb implementiert, dann vergessen

**Lösung:**
- Phase 0 mit project-charter.md
- IMPLEMENTIERUNGSPLAN.md mit Phase-Breakdown
- Jede Session hat konkretes Goal aus Plan

**Beispiel (Gut):**
```markdown
# project-charter.md
Vision: Ein CLI-Tool das Git-Repos analysiert
Success Criteria:
- [ ] Analysiert 100+ Repos in <5 Min
- [ ] Exportiert CSV/JSON
- [ ] 90% User-Zufriedenheit

# IMPLEMENTIERUNGSPLAN.md
Phase 1: Core (Week 1) → src/core/analyzer.py (200 LOC)
Phase 2: Export (Week 2) → src/export/csv.py (150 LOC)
...
```

#### Anti-Pattern 2: "Context-Loss bei Unterbrechungen"

**Problem:**
- Nach Pause: "Was habe ich zuletzt gemacht?"
- Keine Handoff-Informationen
- Doppelte Arbeit
- Inkonsistente Implementierungen

**Symptome:**
- Keine Session-Tracking
- Notizen in Slack/Email verstreut
- AI-Assistent hat keinen persistenten State
- Teammitglieder fragen ständig "Was ist Status?"

**Lösung:**
- Session-Framework mit Handoff
- YAML-Sessions mit strukturierten Informationen
- Letzte Session YAML lesen bei session-start

**Beispiel (Gut):**
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

#### Anti-Pattern 3: "Wir schreiben Tests später"

**Problem:**
- Tests werden nie geschrieben
- Code ist untestable (tight coupling)
- Regression-Bugs häufig
- Refactoring unmöglich (Angst etwas zu brechen)

**Symptome:**
- Coverage <20%
- Keine Tests in Deliverables
- "Phase 10: Testing" im Plan
- Häufige Production-Incidents

**Lösung:**
- Tests parallel zu Code
- Quality Gates pro Phase (Coverage >80%)
- Test-driven oder Test-alongside Development

**Beispiel (Gut):**
```markdown
Phase 3: Auth-System (Week 3)
Deliverables:
- src/auth/manager.py (200 LOC)
- tests/test_auth.py (180 LOC) ← Parallel!
- tests/test_auth_integration.py (120 LOC)

Quality Gate:
[ ] pytest 0 Failures ✓
[ ] Coverage >80% ✓ (92%)
[ ] Auth funktioniert für 5 Testfälle ✓
```

#### Anti-Pattern 4: "Entscheidungen im Nebel"

**Problem:**
- Nach Monaten: "Warum haben wir X so gemacht?"
- Keine Dokumentation von Alternativen
- Wiederholte Diskussionen
- Neue Teammitglieder verstehen Architektur nicht

**Symptome:**
- Keine ADRs
- Architektur-Entscheidungen nur in Code-Comments
- Team fragt ständig "Warum nicht Y?"
- Tech-Stack-Wahl nicht begründet

**Lösung:**
- ADR für jede wichtige Entscheidung
- Alternatives Considered dokumentieren
- ADRs verlinkt mit Sessions

**Beispiel (Gut):**
```markdown
# ADR-003: Warum SQLite statt PostgreSQL?

Context: Desktop-App braucht lokale Datenbank

Decision: SQLite

Alternatives Considered:
- PostgreSQL: ✅ Robust, ❌ Requires Server (user muss installieren)
- MySQL: ✅ Bekannt, ❌ Ebenfalls Server-Requirement
- JSON-Files: ✅ Simple, ❌ Keine Transaktionen, schlechte Performance

Chosen: SQLite
- ✅ Embedded (keine Installation)
- ✅ Zero-Config
- ✅ Transaktionen
- ❌ Nicht für Multi-User (akzeptabel für Desktop-App)

Consequences:
+ Simple Deployment
+ Keine Server-Dependencies
- Migration zu PostgreSQL später schwieriger (akzeptiert)
```

#### Anti-Pattern 5: "Ein Backup reicht"

**Problem:**
- Single Point of Failure
- Festplatten-Crash → Projekt verloren
- Git ohne Remote → kein Backup
- Session-State nicht gesichert

**Symptome:**
- Nur Git (kein Remote)
- Oder: Nur lokale Backups (keine Cloud)
- Keine Backup-Automation
- Restore nie getestet

**Lösung:**
- 5-Layer-Backup-System
- Regelmäßige Restore-Tests
- Automatisierung via session-end.sh

**Beispiel (Gut):**
```bash
# Automatisches Backup-System

Layer 1: Git Version Control
→ git push origin main (bei session-end)

Layer 2: Lokale Timestamped Backups
→ rsync -a --link-dest=latest project/ backups/2026-01-31_14-30/

Layer 3: Cloud Backup
→ rclone sync project/ s3:my-bucket/project-backups/

Layer 4: STATUS_TRACKING.md
→ Human-readable Recovery-Guide

Layer 5: Portable Package
→ tar.gz für Archiv (bei Milestones)
```

#### Anti-Pattern 6: "Solo-Patterns für Teams verwenden"

**Problem:**
- Team wächst von 1 → 5 Personen
- Aber: Workflows bleiben Solo-fokussiert
- Keine Team-Koordination
- Merge-Konflikte, doppelte Arbeit

**Symptome:**
- Sessions ohne Developer-Name
- Keine explizite Handoff an Kollegen
- ADRs werden individual entschieden
- Keine Team-Retrospektiven

**Lösung:**
- Team-Patterns für Multi-Developer Sessions
- ADR-Konflikt-Auflösung (wenn 2+ Proposals)
- Async Handoffs über Zeitzonen

**Beispiel (Gut):**
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
      - "Tests failing, need help debugging auth-issue"
      - "See ADR-009 for decision rationale"
    blockers:
      - "Need Bob's review on PR #42"
```

#### Anti-Pattern 7: "Keine CI/CD → Manuelle Quality Checks"

**Problem:**
- Quality Gates werden vergessen
- Inconsistent enforcement
- Menschliche Fehler
- Code mit Bugs merged

**Symptome:**
- Keine CI/CD Pipeline
- "Bitte prüfe Tests vor Merge" → wird vergessen
- Coverage sinkt kontinuierlich
- Production-Bugs häufig

**Lösung:**
- CI/CD mit automatischen Quality Gates
- Pre-Merge Checks (GitHub Actions / GitLab CI)
- Coverage-Enforcement (Fail if <80%)

**Beispiel (Gut):**
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

# → Merge nur möglich wenn alle Checks grün
```

---

## 3. Skalierungs-Leitfaden

**Ein Guide der NICHT skaliert, ist nutzlos.**

Dieses Kapitel zeigt, wie Sie die 6-Phasen-Methodik an Ihre Projekt-Größe, Team-Größe, und Projekt-Typ anpassen.

### 3.1 Skalierung nach Projektgröße

#### Micro-Projekte (1-2 Wochen)

**Charakteristika:**
- Solo-Entwickler oder Pair
- Klare, begrenzte Scope
- Proof-of-Concept oder kleines Tool
- 500-2000 LOC

**Anwendungsbeispiele:**
- CLI-Tool für lokale Dateiverarbeitung
- Landing-Page für Event
- Automation-Script für Workflow
- Quick-Prototype für Ideen-Validierung

**Simplifikationen:**

| Phase | Standard | Micro-Version |
|-------|----------|---------------|
| **Phase 0** | 1 Woche | **1 Tag** |
| | project-charter.md (2 Seiten) | project-charter.md (1 Seite, nur Vision + Success Criteria) |
| | tech-stack.md (mit Alternativen) | tech-stack.md (nur Chosen, keine Alternativen) |
| | 10-20 Test-Daten | 3-5 Test-Daten |
| | ADR-001 (Architektur) | Optional (nur bei kritischer Entscheidung) |
| **Phase 1** | 2-5 Tage | **Halber Tag** |
| | IMPLEMENTIERUNGSPLAN.md (10 Phasen) | Kombiniere mit project-charter.md (3 Phasen) |
| | Detaillierte LOC-Schätzungen | Grobe Schätzungen (Small/Medium/Large) |
| **Phase 2** | YAML-Sessions (vollständig) | Vereinfachte YAML-Sessions (5 Felder) |
| **Phase 3** | 5-Layer Backup | 2-Layer (Git + 1 Cloud Backup) |
| **Phase 4** | ADRs für alle Entscheidungen | Nur bei kritischen Architektur-Entscheidungen |
| **Phase 5** | Quality Gates pro Phase | Basic Linting + manuelle Tests |
| **Phase 6** | Retrospektive pro Session | Optional (nur bei Problemen) |

**Beispiel:** CLI-Tool in Go (1 Woche)

```markdown
# project-charter.md (Micro-Version)

## Vision
Ein CLI-Tool das Git-Repos nach TODOs scannt und CSV exportiert

## Success Criteria
- [ ] Scannt 100+ Repos in <1 Min
- [ ] Exportiert CSV mit TODO-Liste
- [ ] Funktioniert auf Mac/Linux/Windows

## Out-of-Scope (v1.0)
- ❌ Keine GUI
- ❌ Keine GitHub API Integration
- ❌ Kein Config-File (nur CLI-Flags)

## Timeline
- Base: 4 Tage
- With Buffer (+30%): 5-6 Tage

## Tech-Stack
- Language: Go (schnell, cross-platform)
- Libraries: cobra (CLI), filepath (Datei-Traversal)

## Implementation-Phasen
Phase 1 (Day 1-2): Core Scanner
Phase 2 (Day 3): CSV Export
Phase 3 (Day 4): Testing & Polish

## Quality Gates
- go test passes
- Funktioniert für 3 Test-Repos
- README mit Installationsanleitung
```

**Session-Lifecycle (Vereinfacht):**

```bash
# Session-Start (vereinfacht)
echo "Starting session: $(date)" >> .sessions.log
git status  # Quick check

# [WORK]

# Session-End (vereinfacht)
echo "Ending session: $(date)" >> .sessions.log
echo "Achieved: Implemented CSV export" >> .sessions.log
git add . && git commit -m "Implement CSV export"
git push
rclone sync . s3:my-bucket/todo-scanner/  # Cloud backup
```

---

#### Kleine Projekte (2-6 Wochen)

**Charakteristika:**
- Solo oder 2-3 Entwickler
- Klar definierter Scope
- MVP oder kleines Produkt-Feature
- 2.000-10.000 LOC

**Anwendungsbeispiele:**
- Web-Dashboard für Analytics
- Mobile App MVP (React Native)
- REST API mit 10-20 Endpoints
- Desktop-Utility mit UI

**Standard Vibe Coding (wie im Guide beschrieben):**

| Phase | Empfehlung |
|-------|------------|
| **Phase 0** | **3-5 Tage** (volle Tiefe) |
| **Phase 1** | **2-5 Tage** (IMPLEMENTIERUNGSPLAN.md mit 3-6 Phasen) |
| **Phase 2** | **Volle YAML-Sessions** mit Handoff |
| **Phase 3** | **3-Layer Backup** (Git + lokale Backups + Cloud) |
| **Phase 4** | **ADRs für wichtige Entscheidungen** (~3-5 total) |
| **Phase 5** | **Automatisierte Quality Gates** pro Phase |
| **Phase 6** | **Retrospektive** pro Session (5 Min) |

**Beispiel:** Web-Dashboard mit Next.js (4 Wochen)

```markdown
# project-charter.md

## Vision
Ein Web-Dashboard das GitHub-Repo-Statistiken visualisiert

## Success Criteria
- [ ] Zeigt Commits, Issues, PRs für 10+ Repos
- [ ] Responsive Design (Desktop + Mobile)
- [ ] Lädt in <2 Sekunden
- [ ] 90% Lighthouse Score

## Out-of-Scope (v1.0)
- ❌ Keine Multi-User-Auth (v2.0)
- ❌ Keine Echtzeit-Updates (v2.0)
- ❌ Keine Custom Dashboards (v2.0)

## Timeline
- Base Estimate: 4 weeks (28 days)
- With Buffer (+30%): 5-6 weeks (~6 weeks = 42 days)

## Tech-Stack
- Frontend: Next.js 14, React, Tailwind CSS
- Backend: Next.js API Routes
- Database: SQLite (embedded)
- Deployment: Vercel

# IMPLEMENTIERUNGSPLAN.md

Phase 1: Foundation (Week 1)
├── Project setup (Next.js, Tailwind)
├── Database schema (SQLite)
└── GitHub API integration

Phase 2: Core Features (Week 2)
├── Repo-Stats fetching
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

**Session-Management (Standard):**

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

#### Mittlere Projekte (2-4 Monate)

**Charakteristika:**
- 2-5 Entwickler (oder mehr)
- Komplexere Architektur (Microservices, Multi-Layer)
- Produkt mit mehreren Features
- 10.000-50.000 LOC

**Anwendungsbeispiele:**
- SaaS-Plattform MVP
- E-Commerce-Website
- Mobile App mit Backend
- Data-Processing Pipeline

**Enhancements über "Klein":**

| Phase | Klein (2-6 Wochen) | Mittel (2-4 Monate) |
|-------|-------------------|---------------------|
| **Phase 0** | 3-5 Tage | **1-2 Wochen** (tiefere Risiko-Analyse) |
| **Phase 1** | 2-5 Tage | **1 Woche** (10-15 Phasen, Milestone-Planning) |
| **Phase 2** | YAML-Sessions | YAML + **Team-Session-Patterns** (Multi-Developer) |
| **Phase 3** | 3-Layer Backup | **4-Layer Backup** (+ Disaster Recovery Drills) |
| **Phase 4** | ~3-5 ADRs | **~10-15 ADRs** (mehr Architektur-Entscheidungen) |
| **Phase 5** | Basic CI/CD | **Vollständige CI/CD Pipeline** (GitHub Actions / GitLab) |
| **Phase 6** | Retrospektive pro Session | **Sprint Retrospectives** (alle 2 Wochen) |

**Zusätzliche Praktiken:**

1. **Milestone-Planning:**
   ```markdown
   Milestone 1 (Week 4): Core Backend
   Milestone 2 (Week 8): Frontend MVP
   Milestone 3 (Week 12): Beta Release
   ```

2. **Team-Koordination:**
   - Weekly Team-Sync (1h)
   - ADR-Review-Meetings (30 Min bei neuen ADRs)
   - Pair/Mob Programming für kritische Features

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
   # QUALITY_METRICS.md (auto-generated von CI/CD)

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

**Beispiel:** SaaS-Plattform MVP (3 Monate)

```markdown
# project-charter.md

## Vision
Eine SaaS-Plattform für Team-Kollaboration mit AI-Assistenz

## Success Criteria
- [ ] Multi-User Auth mit Teams
- [ ] Real-time Collaboration (WebSockets)
- [ ] AI-Chat-Integration (Claude/GPT)
- [ ] Payment-Integration (Stripe)
- [ ] 99% Uptime (monitored)

## Timeline
- Base: 10 weeks
- With Buffer (+30%): 13 weeks (~3 months)

## Tech-Stack
- Frontend: Next.js, React, Tailwind, Zustand
- Backend: Node.js, Fastify, Prisma, PostgreSQL
- Infrastructure: AWS (EC2, RDS, S3), Docker, Kubernetes
- AI: Anthropic API (Claude), OpenAI API

# IMPLEMENTIERUNGSPLAN.md

Phase 1: Infrastructure (Week 1)
Phase 2: Auth & Teams (Week 2-3)
Phase 3: Real-time Collab (Week 4-5)
Phase 4: AI Integration (Week 6-7)
Phase 5: Payment (Week 8)
Phase 6: Testing & Optimization (Week 9)
Phase 7: Beta Deployment (Week 10)
```

---

#### Große Projekte (4-6+ Monate)

**Charakteristika:**
- 5-20+ Entwickler (mehrere Teams/Squads)
- Enterprise-Grade Architektur
- Multi-Produkt oder Plattform
- 50.000-200.000+ LOC
- Compliance-Anforderungen (GDPR, HIPAA, SOC2)

**Anwendungsbeispiele:**
- Enterprise SaaS-Plattform
- Multi-Tenant Microservices-Architektur
- Fintech-Anwendung (reguliert)
- Healthcare-Plattform (HIPAA)

**Enterprise-Enhancements:**

| Aspekt | Mittel (2-4 Monate) | Groß (4-6+ Monate) |
|--------|---------------------|-------------------|
| **Phase 0** | 1-2 Wochen | **2-3 Wochen** (inkl. Prototyping-Phase) |
| **Planning** | 10-15 Phasen | **Quarterly Planning** (OKRs, Roadmaps) |
| **Team-Struktur** | 2-5 Entwickler | **Multi-Squad** (5-10 Squads, je 3-5 Entwickler) |
| **ADRs** | ~10-15 | **20-50+ ADRs** (Architecture Review Board) |
| **CI/CD** | Vollständig | **Enterprise CI/CD** (Multi-Environment, Canary, Blue-Green) |
| **Backup** | 4-Layer | **5-Layer + DR Drills** (wöchentlich/monatlich) |
| **Compliance** | Optional | **Mandatory** (GDPR, HIPAA, SOC2 Checklists) |
| **Security** | Basic | **Security Audits, Pentesting, SAST/DAST** |

**Zusätzliche Enterprise-Praktiken:**

1. **Architecture Review Board (ARB):**
   - ADRs müssen von ARB approved werden (2-3 Senior Architects)
   - Bi-weekly ARB-Meetings
   - Kritische ADRs brauchen Majority-Vote

2. **Multi-Squad Koordination:**
   ```markdown
   # Team-Struktur

   Squad 1: Frontend (5 Entwickler)
   ├── Lead: Alice
   └── Focus: Web-UI, Mobile-UI

   Squad 2: Backend (5 Entwickler)
   ├── Lead: Bob
   └── Focus: APIs, Microservices

   Squad 3: Platform (4 Entwickler)
   ├── Lead: Carol
   └── Focus: Infrastructure, DevOps, Monitoring

   Cross-Squad Rituals:
   - Weekly All-Hands (1h)
   - Monthly Retros (2h)
   - Quarterly Planning (1 Tag)
   ```

3. **Compliance Integration:**
   ```markdown
   # ADR-025: GDPR Data Retention Policy

   Context: EU-User Data muss nach GDPR verwaltet werden

   Decision:
   - User data deletion nach 30 Tagen (upon request)
   - Logs anonymized nach 90 Tagen
   - Backups verschlüsselt (AES-256)

   Consequences:
   + GDPR-compliant
   - Mehr Implementierungs-Aufwand (2 Wochen)

   Verification:
   [ ] GDPR-Checkliste completed
   [ ] External Audit passed
   ```

4. **Disaster Recovery (DR) Drills:**
   ```bash
   # Monatlicher DR-Drill

   # 1. Simulate Disaster (Datenbank-Crash)
   kubectl delete pod postgres-0

   # 2. Restore from Backup (Layer 4: Cloud)
   ./scripts/restore-from-s3.sh 2026-01-31_12-00

   # 3. Verify Data Integrity
   ./scripts/verify-db-checksums.sh

   # 4. Measure RTO/RPO
   Recovery Time Objective (RTO): 15 minutes (Target: <30 Min) ✓
   Recovery Point Objective (RPO): 0 data loss (Target: <1h) ✓

   # 5. Document Lessons Learned
   → Update RUNBOOK.md
   ```

**Beispiel:** Enterprise SaaS-Plattform (6 Monate)

```markdown
# project-charter.md (Enterprise-Version)

## Vision
Eine Multi-Tenant SaaS-Plattform für Enterprise-Kollaboration

## Success Criteria
- [ ] 10.000+ concurrent users
- [ ] 99.95% Uptime SLA
- [ ] SOC2 Type II compliant
- [ ] <200ms response time (P95)
- [ ] Multi-region deployment (US, EU, APAC)

## Timeline
- Base: 20 weeks
- With Buffer (+30%): 26 weeks (~6 months)

## Tech-Stack
- Frontend: Next.js, React, Zustand, Tailwind
- Backend: Go (gRPC), Node.js (REST APIs)
- Database: PostgreSQL (Citus for sharding), Redis (caching)
- Infrastructure: AWS, Kubernetes, Terraform, ArgoCD
- Monitoring: Prometheus, Grafana, Datadog
- Security: Vault (secrets), WAF, SIEM

## Quarterly Roadmap

Q1 (Month 1-3):
- MVP Core Features (Auth, Teams, Collab)
- Infrastructure Setup (K8s, Multi-Region)
- Security Baseline (OWASP Top 10)

Q2 (Month 4-6):
- Advanced Features (AI, Analytics)
- SOC2 Compliance (Audits, Policies)
- Performance Optimization (Caching, CDN)
```

---

### 3.2 Skalierung nach Teamgröße

#### Solo-Entwickler (1 Person)

**Simplifikationen:**
- Keine Team-Koordination nötig
- Session-YAML ohne `operator.identity` (optional)
- ADRs für eigenes zukünftiges Ich (nicht für Team-Review)
- Schnellere Entscheidungen (keine Abstimmung)

**Empfohlene Praktiken:**
- ✅ YAML-Sessions (für eigene Kontinuität)
- ✅ ADRs (für "Warum habe ICH das so gemacht?")
- ✅ Backup-System (5-Layer, vollautomatisiert)
- ✅ Quality Gates (selbst-enforced)
- ⚠️ Team-Patterns: Skip (nicht relevant)

**Session-Workflow:**

```bash
# Morgens: Session starten
./session-start.sh implementation "Implement feature X"

# [2-4 Stunden Arbeit mit AI-Assistent]

# Nachmittags: Session beenden
./session-end.sh
→ Handoff für mein zukünftiges Ich:
  "Achieved: Feature X 80% done
   Next: Add tests, then deploy"

# Automatisches Backup
→ Git push
→ rclone sync to S3
```

**Typischer Tagesablauf:**

```
09:00 - session-start.sh
       ├── Lese letzte Session-YAML
       └── Goal: Implement OAuth flow

09:05-12:00 - Entwicklung mit Claude
       ├── Implementiere OAuth
       ├── Schreibe Tests parallel
       └── Quick Manual Testing

12:00 - session-end.sh
       ├── Handoff: "OAuth 90% done, missing refresh tokens"
       ├── Git commit + push
       └── Backup to S3

14:00 - session-start.sh
       └── Goal: Finish OAuth + Add integration tests

14:05-17:00 - Entwicklung

17:00 - session-end.sh
       ├── Handoff: "OAuth complete, 92% coverage, deployed to staging"
       ├── ADR-007 created: "Why OAuth2 not SAML"
       └── Backup to S3
```

---

#### Kleine Teams (2-5 Personen)

**Neue Herausforderungen:**
- Wer arbeitet woran? (Koordination)
- Wie übergebe ich an Kollegen? (Handoff)
- Wie synchronisieren wir Context? (Shared Docs)
- Wie reviewen wir AI-generierten Code? (Code Review)

**Empfohlene Praktiken:**
- ✅ Multi-Developer Session-Naming (`dev-alice_001.yml`)
- ✅ Explizite Handoffs (`next_developer: "bob"`)
- ✅ Team-ADRs (mit Discussion-Phase)
- ✅ Code Review für AI-Code (wie für menschlichen Code)
- ✅ Weekly Team-Sync (30 Min)

**Session-Naming-Convention:**

```
sessions/
├── 2026-01-31_dev-alice_001.yml  # Alice's morning session
├── 2026-01-31_dev-alice_002.yml  # Alice's afternoon session
├── 2026-01-31_dev-bob_001.yml    # Bob's session
└── 2026-01-31_dev-carol_001.yml  # Carol's session
```

**Handoff-Protocol (Explizit):**

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
      - "API credentials for testing (ask ops-team)"
```

**Team-ADR-Workflow (mit Discussion-Phase):**

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

**Code Review für AI-Code:**

Behandle AI-generierten Code GENAUSO wie menschlichen Code:

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

**Weekly Team-Sync (Agenda):**

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

#### Mittlere Teams (5-15 Personen)

**Squad-basierte Organisation:**

```
Team (15 Personen)
├── Squad 1: Frontend (5 Entwickler)
│   ├── Lead: Alice
│   └── Sessions: sessions/squad-frontend/
├── Squad 2: Backend (5 Entwickler)
│   ├── Lead: Bob
│   └── Sessions: sessions/squad-backend/
└── Squad 3: Platform (5 Entwickler)
    ├── Lead: Carol
    └── Sessions: sessions/squad-platform/
```

**Session-Organisation pro Squad:**

```
sessions/
├── squad-frontend/
│   ├── 2026-01-31_dev-alice_001.yml
│   ├── 2026-01-31_dev-dave_001.yml
│   └── SQUAD_CONTEXT.md  # Shared context für Squad
├── squad-backend/
│   ├── 2026-01-31_dev-bob_001.yml
│   └── SQUAD_CONTEXT.md
└── squad-platform/
    ├── 2026-01-31_dev-carol_001.yml
    └── SQUAD_CONTEXT.md
```

**Cross-Squad ADRs (Architecture-Level):**

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

**Onboarding neuer Entwickler:**

```markdown
# Onboarding Checklist - New Developer: Eve

## Day 1: Setup & Context (4h)
- [ ] Read PROJEKT_FOKUS.md (30 Min)
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

#### Große Teams (15+ Personen)

**Multi-Squad mit Governance:**

```
Organization (30 Personen)
├── Squad 1-5: Product Squads (5 Personen je)
│   └── Focus: Features
├── Platform Squad (5 Personen)
│   └── Focus: Infrastructure, DevOps
└── Architecture Review Board (ARB)
    ├── 3 Senior Architects
    └── Reviews: Critical ADRs, Tech-Stack-Entscheidungen
```

**Governance-Struktur:**

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

**Session-Koordination (Enterprise-Scale):**

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

**Team-Dashboard (Auto-Generated):**

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

### 3.3 Skalierung nach Projekt-Typ

#### Web-Applikationen

**Stack-Beispiele:**
- **Frontend:** React, Vue, Angular, Svelte, Next.js, Remix
- **Backend:** Node.js, Django, Spring Boot, Laravel, Ruby on Rails
- **Database:** PostgreSQL, MySQL, MongoDB

**Spezielle Überlegungen:**

1. **Performance-Budgets:**
   ```markdown
   ## Quality Gates - Web-App-Spezifisch

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

3. **Deployment-Strategien:**
   ```markdown
   # ADR-020: Deployment Strategy (Web-App)

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

#### Mobile-Applikationen

**Stack-Beispiele:**
- **Cross-Platform:** React Native, Flutter
- **Native:** Swift (iOS), Kotlin (Android)

**Spezielle Überlegungen:**

1. **App-Größe Budgets:**
   ```markdown
   ## Quality Gates - Mobile-App-Spezifisch

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

3. **Deployment-Pipeline:**
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

#### CLI-Tools

**Stack-Beispiele:**
- Go (Cobra), Rust (Clap), Python (Click), Node.js (Commander)

**Spezielle Überlegungen:**

1. **Binary-Größe Budgets:**
   ```markdown
   ## Quality Gates - CLI-Tool-Spezifisch

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

**Stack-Beispiele:**
- Go (gRPC), Node.js (REST), Java (Spring Cloud)

**Spezielle Überlegungen:**

1. **Service-Level Quality Gates:**
   ```markdown
   ## Quality Gates - Microservice-Spezifisch

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

### 3.4 Entscheidungsmatrix: Was einbeziehen/weglassen?

**Quick Reference Tabelle:**

| Aspekt | Micro (1-2w) | Klein (2-6w) | Mittel (2-4m) | Groß (4-6m+) |
|--------|--------------|--------------|---------------|--------------|
| **Phase 0 Dauer** | 1 Tag | 3-5 Tage | 1-2 Wochen | 2-3 Wochen |
| **project-charter.md** | 1 Seite | 2 Seiten | 3-5 Seiten | 5-10 Seiten |
| **tech-stack.md** | Chosen only | + Rejected | + Detailed rationale | + ARB approval |
| **Test-Daten** | 3-5 Samples | 10-20 Samples | 20-50 Samples | 50-100 Samples |
| **ADRs Total** | 0-2 | 3-5 | 10-15 | 20-50+ |
| **Session YAML** | Vereinfacht (5 Felder) | Vollständig | + Team fields | + Squad context |
| **Backup Layers** | 2 (Git + Cloud) | 3 (+ Lokal) | 4 (+ DR drills) | 5 (+ Portable) |
| **CI/CD** | Optional | Basic (tests + lint) | Full (+ coverage) | Enterprise (+ multi-env) |
| **Quality Gates** | Manual | Automated basic | Automated full | + Platform-specific |
| **Team-Patterns** | Skip | Basic (2-5 dev) | Squad-based (5-15) | Multi-squad (15+) |
| **Retrospektiven** | Optional | Pro Session (5 Min) | Sprint Retros (2w) | + Monthly all-hands |
| **Compliance** | Skip | Optional | If needed | Mandatory (GDPR etc) |

**Entscheidungsbaum:**

```
Start Here: Was ist Ihr Projekt?
│
├─ Dauer?
│  ├─ <2 Wochen → MICRO
│  ├─ 2-6 Wochen → KLEIN
│  ├─ 2-4 Monate → MITTEL
│  └─ 4-6+ Monate → GROSS
│
├─ Team-Größe?
│  ├─ 1 Person → Solo-Patterns
│  ├─ 2-5 Personen → Basic Team-Patterns
│  ├─ 5-15 Personen → Squad-basiert
│  └─ 15+ Personen → Multi-Squad + ARB
│
├─ Projekt-Typ?
│  ├─ Web → Performance-Budgets (Lighthouse)
│  ├─ Mobile → App-Größe + Battery-Budgets
│  ├─ CLI → Binary-Größe + Cold-Start-Zeit
│  ├─ Microservices → Service-Level-Agreements
│  └─ Desktop → Platform-Specific (macOS/Windows/Linux)
│
└─ Compliance-Anforderungen?
   ├─ Keine → Standard-Prozess
   ├─ GDPR → + Data Retention Policy
   ├─ HIPAA → + Healthcare Compliance
   └─ SOC2 → + Security Audits
```

---

**Ende Teil I: Grundlagen**

Sie haben jetzt:
- ✅ Verstanden warum Vibe Coding ohne Struktur scheitert
- ✅ Die 6-Phasen-Methodik und 10 Kernprinzipien kennengelernt
- ✅ Gelernt wie Sie die Methodik an Ihre Projekt-Größe, Team-Größe, und Projekt-Typ anpassen

**Nächster Schritt:** [Teil II: Die 6-Phasen-Architektur](#teil-ii-die-6-phasen-architektur) (detaillierte Implementation jeder Phase)

**Oder:** [Quick Start Guide](QUICK_START_DE.md) für sofortigen Einstieg (5 Minuten)

---

# Teil II: Die 6-Phasen-Architektur

**Ziel dieses Teils:** Sie lernen die detaillierte Implementation jeder Phase, inklusive konkreter Deliverables, Quality Gates, und Best Practices für verschiedene Programmiersprachen und Projekt-Typen.

**Inhalt:**
- [Phase 0: Foundation & Vision](#phase-0-foundation--vision)
- [Phase 1: Research & Planning](#phase-1-research--planning)
- [Phase 2: Core Implementation](#phase-2-core-implementation)
- [Phase 3: Feature Expansion](#phase-3-feature-expansion)
- [Phase 4: Polish & Optimization](#phase-4-polish--optimization)
- [Phase 5: Hardening & Testing](#phase-5-hardening--testing)
- [Phase 6: Documentation & Maintenance](#phase-6-documentation--maintenance)

---

## Phase 0: Foundation & Vision

**Status:** BEVOR die erste Zeile Code geschrieben wird
**Dauer:** 5-20% der Gesamtprojektzeit
**Team:** Product Owner, Tech Lead, (optional) Key Stakeholders

### Ziele

Phase 0 ist die wichtigste Phase. Hier definieren Sie **WAS** gebaut wird und **WARUM**, aber noch nicht **WIE** im Detail.

**Kern-Deliverables:**
1. ✅ Project Charter (Vision, Erfolgs-Kriterien, Nicht-Ziele)
2. ✅ Tech Stack Selection (mit Decision Matrices)
3. ✅ Implementierungsplan (Phasen-Breakdown)
4. ✅ Git Repository Setup (mit .gitignore, README, LICENSE)
5. ✅ Backup-Strategie (3+ Layer)
6. ✅ Session-Continuity System (.continuity/ Struktur)

### Phase 0.1: Vision & Charter

**Aktivität:** Erstellen Sie `project-charter.md` mit dem AI-Assistenten

**Template-Verwendung:**
```bash
# Kopieren Sie das Template
cp templates/project-charter.md mein-projekt/

# Starten Sie einen AI-Dialog
# "Hilf mir, einen Project Charter für [Projektname] zu erstellen"
```

**Was gehört in den Charter:**

1. **Vision Statement** (1-2 Sätze)
   ```markdown
   ## Vision
   Ein Desktop-Tool für Musiker, um Songtexte mit Audio-Timing zu synchronisieren.
   ```

2. **Erfolgs-Kriterien** (messbar!)
   ```markdown
   ## Erfolgs-Kriterien
   - [ ] Kann MP3/WAV-Dateien importieren (≤100 MB)
   - [ ] Zeigt Wellenform-Visualisierung an (≤1 Sekunde Ladezeit)
   - [ ] Speichert Timing-Daten persistent (JSON-Format)
   - [ ] Läuft auf Windows, Mac, Linux
   ```

3. **Nicht-Ziele** (explizit ausgrenzen!)
   ```markdown
   ## Nicht-Ziele (V1.0)
   - ❌ Video-Support (erst V2.0)
   - ❌ Cloud-Synchronisation (erst V1.5)
   - ❌ Kollaborations-Features (nicht geplant)
   ```

4. **Constraints & Annahmen**
   ```markdown
   ## Constraints
   - Solo-Entwickler (keine Team-Ressourcen)
   - 12 Wochen Projektlaufzeit
   - Desktop-Only (keine Mobile-App)

   ## Annahmen
   - User hat Basis-Kenntnisse in Musiktheorie
   - User hat lokale Musikdateien (kein Streaming)
   ```

**Sprach-Agnostik:** Der Charter ist identisch für Python, JavaScript, Go, etc. Er beschreibt **WAS**, nicht **WIE**.

### Phase 0.2: Tech Stack Selection

**Aktivität:** Wählen Sie Programmiersprache, Framework, Datenbank mit Decision Matrices

**Decision Matrix Beispiel: Sprach-Auswahl**

| Kriterium | Python | JavaScript | Go | Rust | Java |
|-----------|--------|------------|----|----|------|
| **Team-Expertise** | ✅✅✅ (Expert) | ✅✅ (Intermediate) | ✅ (Basic) | ❌ (None) | ✅✅ (Intermediate) |
| **Desktop GUI Support** | ✅✅ (PyQt6) | ✅✅✅ (Electron) | ✅ (Wails) | ✅ (Tauri) | ✅✅ (JavaFX) |
| **Audio Library Ecosystem** | ✅✅✅ (librosa, pydub) | ✅✅ (Tone.js) | ✅ (oto) | ✅✅ (rodio) | ✅ (Java Sound API) |
| **Deployment Complexity** | ✅ (PyInstaller) | ✅✅✅ (npm build) | ✅✅✅ (single binary) | ✅✅✅ (single binary) | ✅ (JAR) |
| **Development Speed** | ✅✅✅ | ✅✅✅ | ✅✅ | ✅ | ✅✅ |
| **Performance (Audio)** | ✅✅ | ✅ | ✅✅✅ | ✅✅✅ | ✅✅ |
| **Cross-Platform** | ✅✅ | ✅✅✅ | ✅✅✅ | ✅✅✅ | ✅✅✅ |
| **TOTAL SCORE** | 17/21 | 19/21 | 16/21 | 13/21 | 15/21 |

**Entscheidung:** JavaScript mit Electron (höchster Score + beste Cross-Platform Story)

**Dokumentieren Sie in `tech-stack.md`:**

```markdown
# Tech Stack: SongSync Desktop App

## Primäre Technologien

### Sprache & Runtime
- **JavaScript/TypeScript** (Node.js 20 LTS)
- **Rationale:** [siehe ADR-001]
- **Alternativen geprüft:** Python/PyQt6, Go/Wails, Rust/Tauri
- **Ablehnungsgrund:** Siehe decision-matrices/language-selection.md

### Frontend Framework
- **Electron 28** + **React 18**
- **Rationale:** Etabliertes Ökosystem, beste Desktop-Integration
- **Alternativen:** Tauri (zu jung), NW.js (weniger aktiv)

### Audio Processing
- **Tone.js** (Web Audio API Wrapper)
- **Rationale:** Mature library, gute TypeScript-Support

### State Management
- **Zustand** (leichtgewichtig, kein Boilerplate)
- **Alternativen:** Redux (zu komplex für Solo-Projekt)

### Database
- **SQLite** (better-sqlite3 package)
- **Rationale:** Embedded, kein Server, perfekt für Desktop

### Testing
- **Vitest** (Unit), **Playwright** (E2E)

### Build & Packaging
- **electron-builder** (Cross-Platform Packaging)

## Development Tools
- **Vite** (Dev Server, schneller als Webpack)
- **ESLint** + **Prettier** (Code Quality)
- **Husky** (Git Hooks für Pre-Commit Checks)

## ADRs (Architecture Decision Records)
- [ADR-001: Why JavaScript over Python](../.continuity/decisions/ADR-001_javascript-over-python.md)
- [ADR-002: Why Electron over Tauri](../.continuity/decisions/ADR-002_electron-over-tauri.md)
- [ADR-003: Why SQLite over JSON Files](../.continuity/decisions/ADR-003_sqlite-over-json.md)
```

**ADR-001 Beispiel erstellen:**

```markdown
# ADR-001: JavaScript (Electron) statt Python (PyQt6)

## Status
✅ ACCEPTED — 2026-01-31

## Kontext
Wir brauchen eine Desktop-App mit Audio-Verarbeitung und Wellenform-Visualisierung.

## Entscheidung
Wir verwenden **JavaScript mit Electron + React** statt Python mit PyQt6.

## Begründung

### Für JavaScript/Electron:
- ✅ Web-Audio-API ist nativ verfügbar (keine C-Bindings)
- ✅ Electron-Builder macht Cross-Platform trivial (1 Befehl)
- ✅ React-Ökosystem für UI-Komponenten (react-wavesurfer)
- ✅ NPM-Ökosystem hat 1M+ Packages
- ✅ Hot-Module-Replacement für schnellere Entwicklung

### Gegen Python/PyQt6:
- ❌ PyInstaller Packaging ist fragil (viele Fallstricke)
- ❌ PyQt6 Lizenz-Komplexität (GPL vs. Commercial)
- ❌ Audio-Libraries nutzen C-Bindings (Compilation-Probleme)
- ❌ Keine native Wellenform-Visualisierung (selbst bauen)

## Konsequenzen

### Positiv:
- Schnellere Entwicklung (Web-Tech Stack)
- Einfacheres Deployment (Electron-Builder)
- Größeres Hiring-Pool (mehr JS-Entwickler)

### Negativ:
- Größere Binary-Size (~150 MB vs. ~50 MB)
- Höherer RAM-Verbrauch (~200 MB vs. ~100 MB)
- Electron-Update-Overhead (Security-Patches)

## Alternative
Python/PyQt6 bleibt Option für V2.0 wenn Performance kritisch wird.

## Tags
`language-selection` `desktop-app` `audio-processing`
```

### Phase 0.3: Implementierungsplan

**Aktivität:** Breakdown des Projekts in 6 Phasen mit Deliverables

**Beispiel-Breakdown (SongSync App):**

```markdown
# Implementierungsplan: SongSync Desktop App

## Timeline Overview
- **Phase 0:** Foundation (1 Woche) ← CURRENT
- **Phase 1:** Research & Planning (1 Woche)
- **Phase 2:** Core Implementation (4 Wochen)
- **Phase 3:** Feature Expansion (3 Wochen)
- **Phase 4:** Polish & Optimization (2 Wochen)
- **Phase 5:** Hardening & Testing (1 Woche)
- **Phase 6:** Documentation & Maintenance (ongoing)

**Total:** 12 Wochen

## Phase 0: Foundation (Week 1)
**Deliverables:**
- [x] Project Charter
- [x] Tech Stack Selection (JavaScript/Electron/React)
- [x] Git Repository Setup
- [x] Development Environment Setup
- [x] Backup Strategy (Git + Time Machine + Cloud)

**Success Criteria:**
- `npm install` funktioniert
- Electron-App startet mit "Hello World"
- Git-Remote funktioniert

## Phase 1: Research & Planning (Week 2)
**Deliverables:**
- [ ] UI/UX Mockups (Figma oder Paper)
- [ ] Audio-Library Evaluation (Tone.js Proof-of-Concept)
- [ ] Data Model Design (SQLite Schema)
- [ ] CI/CD Pipeline Setup (GitHub Actions)

**Quality Gates:**
- Proof-of-Concept: Audio-File laden + Wellenform anzeigen
- Unit-Test-Framework funktioniert (Vitest)

## Phase 2: Core Implementation (Week 3-6)
**Deliverables:**
- [ ] Audio-Player Component (play, pause, seek)
- [ ] Waveform Visualization (react-wavesurfer)
- [ ] Lyrics Editor (synchronized timing)
- [ ] SQLite Persistence (save/load projects)
- [ ] Basic File I/O (import MP3/WAV)

**Quality Gates:**
- User kann Song importieren
- User kann Lyrics hinzufügen
- User kann Timing setzen
- User kann Projekt speichern/laden
- Unit-Tests: ≥70% Coverage

## Phase 3: Feature Expansion (Week 7-9)
**Deliverables:**
- [ ] Keyboard Shortcuts (Space = play/pause, etc.)
- [ ] Export Feature (JSON, SRT, LRC formats)
- [ ] Undo/Redo Functionality
- [ ] Project Templates
- [ ] Recent Files List

**Quality Gates:**
- E2E-Tests: Happy-Path funktioniert
- Performance: Song-Import ≤2 Sekunden

## Phase 4: Polish & Optimization (Week 10-11)
**Deliverables:**
- [ ] UI Polish (loading states, error messages)
- [ ] Performance Optimization (lazy loading)
- [ ] Accessibility (keyboard navigation, screen-reader)
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
- E2E Tests: ≥90% kritische User-Flows
- Zero High-Severity npm audit issues

## Phase 6: Documentation & Maintenance (Week 13+)
**Deliverables:**
- [ ] User Documentation (README, Tutorials)
- [ ] Developer Documentation (CONTRIBUTING.md)
- [ ] Release Notes
- [ ] GitHub Release (v1.0.0)

**Quality Gates:**
- README hat alle Setup-Schritte
- CI/CD Pipeline: Auto-Release on Tag
```

**Wichtig:** Dieser Plan ist **NICHT in Stein gemeißelt**. Anpassungen sind erlaubt (und erwartet)!

### Phase 0.4: Repository & Tooling Setup

**Aktivität:** Git, CI/CD, Development Environment

**Schritt 1: Git Repository**

```bash
# Initialize
git init
git branch -M main

# Create .gitignore (Electron-spezifisch)
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
- Implementierungsplan defined (12 weeks)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# Create GitHub Repo (via gh CLI)
gh repo create songsync-desktop --public --source=. --remote=origin
git push -u origin main
```

**Schritt 2: Package.json Setup**

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

**Schritt 3: CI/CD Pipeline (GitHub Actions)**

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

**Aktivität:** Setup .continuity/ Struktur für Session-Management

```bash
# Create Directory Structure
mkdir -p .continuity/{sessions,decisions,context,config,private}

# Create README
cat > .continuity/README.md <<EOF
# Project Continuity System

Diese Struktur ermöglicht nahtlose Session-Unterbrechungen und Recovery.

## Struktur
- \`sessions/\` - YAML-basierte Session-Logs (committed to Git)
- \`decisions/\` - Architecture Decision Records (committed)
- \`context/\` - Session-Context (committed)
- \`config/\` - Session-Management Config (committed)
- \`private/\` - Private Notizen (NOT committed, .gitignore)

## Usage
\`\`\`bash
# Session starten
node scripts/session-start.js

# Session beenden
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

**Session-YAML Beispiel:**

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
  - Create basic Audio-Player component
  - Add SQLite database setup

notes: |
  - Vite config was tricky (needed electron-vite plugin)
  - React DevTools work in Electron!
```

### Phase 0.6: Backup-Strategie

**Aktivität:** Implementieren Sie 3+ Backup-Layer

**Layer 1: Git (Remote)**
```bash
# GitHub (primary)
git remote add origin https://github.com/username/songsync-desktop.git

# GitLab (mirror, optional)
git remote add gitlab https://gitlab.com/username/songsync-desktop.git

# Push zu beiden
git push origin main
git push gitlab main
```

**Layer 2: Time Machine (Mac) / File History (Windows)**
```bash
# Mac: Automatisch wenn aktiviert
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

**Backup-Strategie dokumentieren:**

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

**Bevor Sie zu Phase 1 übergehen, stellen Sie sicher:**

- [ ] **Project Charter existiert** und ist von Stakeholdern approved
- [ ] **Tech Stack ist dokumentiert** (tech-stack.md mit ADRs)
- [ ] **Implementierungsplan existiert** mit Phase-Breakdown
- [ ] **Git Repository ist initialisiert** mit Remote (GitHub/GitLab)
- [ ] **Development Environment funktioniert** (`npm install && npm run dev` startet App)
- [ ] **CI/CD Pipeline läuft** (GitHub Actions: ✅ Green)
- [ ] **Session-Continuity System ist eingerichtet** (.continuity/ Struktur)
- [ ] **Backup-Strategie ist implementiert** (3+ Layer)
- [ ] **README.md existiert** mit Setup-Anleitung

**Quality Gate Check:**
```bash
# Run automated check
npm run check:phase-0

# Example Output:
# ✅ project-charter.md exists
# ✅ tech-stack.md exists
# ✅ IMPLEMENTIERUNGSPLAN.md exists
# ✅ Git remote configured
# ✅ CI/CD pipeline passing
# ✅ .continuity/ structure exists
# ✅ README.md exists
#
# Phase 0 Quality Gate: PASSED ✅
```

**Wenn alle Checks ✅ sind → Committen Sie:**

```bash
git add .
git commit -m "Phase 0 Complete: Foundation & Vision

All Phase 0 deliverables completed:
- Project Charter defined
- Tech Stack selected (Electron + React + TypeScript)
- Implementierungsplan created (12 weeks, 6 phases)
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

1. **Investieren Sie Zeit in Phase 0** — Es spart 10x Zeit in späteren Phasen
2. **Dokumentieren Sie WARUM** — Nicht nur WAS (nutzen Sie ADRs!)
3. **Seien Sie spezifisch bei Erfolgs-Kriterien** — "Schnell" ist nicht messbar, "≤2 Sekunden" ist messbar
4. **Begrenzen Sie den Scope** — Nutzen Sie "Nicht-Ziele" aggressiv!
5. **Setup CI/CD von Anfang an** — "Später" passiert nie
6. **Erstellen Sie Session-Structure** — Selbst wenn Sie sie noch nicht nutzen
7. **Test-Driven-Development vorbereiten** — Test-Framework in Phase 0 setup

**❌ DON'Ts:**

1. **NICHT direkt mit Code beginnen** — "Ich schreibe erst mal ein Proof-of-Concept" führt zu Technical Debt
2. **NICHT "später dokumentieren"** — Dokumentieren Sie JETZT (während Entscheidungen frisch sind)
3. **NICHT zu viele Technologien auf einmal** — Electron + React ist genug, fügen Sie nicht noch Redux + GraphQL + Docker hinzu
4. **NICHT perfektionistisch sein** — ADRs müssen nicht perfekt sein, sie müssen existieren
5. **NICHT alles alleine entscheiden** — Fragen Sie AI-Assistenten nach Trade-Offs!
6. **NICHT Backup-Strategie ignorieren** — Murphy's Law gilt: "Was schiefgehen kann, wird schiefgehen"

### Phase 0: Sprach-Agnostische Anpassungen

**Phase 0 ist identisch für:**

| Projekt-Typ | Sprache | Framework | Phase 0 Unterschied |
|-------------|---------|-----------|---------------------|
| Desktop App | JavaScript | Electron | Nur Tech-Stack-Dokumentation |
| Desktop App | Python | PyQt6 | Nur Tech-Stack-Dokumentation |
| Web App | JavaScript | Next.js | Nur Tech-Stack-Dokumentation |
| Web App | Python | Django | Nur Tech-Stack-Dokumentation |
| CLI Tool | Go | Cobra | Nur Tech-Stack-Dokumentation |
| CLI Tool | Rust | Clap | Nur Tech-Stack-Dokumentation |

**Der Prozess bleibt gleich:**
1. Vision definieren
2. Tech Stack wählen (mit Decision Matrix)
3. Plan erstellen
4. Tooling setup
5. Quality Gates prüfen

---

## Phase 1: Research & Planning

**Status:** NACH Phase 0, BEVOR echte Implementation beginnt
**Dauer:** 5-15% der Gesamtprojektzeit
**Team:** Tech Lead, Senior Developers, (optional) UX Designer

### Ziele

Phase 1 ist die **Proof-of-Concept Phase**. Hier validieren Sie technische Annahmen und designen die Architektur, BEVOR Sie voll investieren.

**Kern-Deliverables:**
1. ✅ UI/UX Mockups (low-fidelity reicht!)
2. ✅ Proof-of-Concept für kritische Technologien
3. ✅ Data Model Design (Datenbank-Schema)
4. ✅ API Design (falls Backend existiert)
5. ✅ Architecture Diagram
6. ✅ Test Strategy & Framework Setup

### Phase 1.1: UI/UX Mockups

**Aktivität:** Designen Sie die User-Interface (nicht perfekt, nur ausreichend!)

**Wichtig:** Phase 1 Mockups sind **LOW-FIDELITY**. Keine Pixel-Perfect-Designs!

**Tools (wählen Sie eines):**
- ✏️ **Paper & Pencil** (schnellstes, Solo-Dev)
- 🎨 **Excalidraw** (kostenlos, web-based, kollaborativ)
- 🎨 **Figma** (Free tier, professionell, Team-fähig)
- 🎨 **Balsamiq** (Wireframe-fokussiert)

**Beispiel-Workflow (SongSync App):**

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
Prompt an AI-Assistenten:

"Hilf mir, ein Low-Fidelity-Mockup für eine Desktop-App zu erstellen.

App-Name: SongSync
Hauptfeatures:
- Audio-Player mit Wellenform-Visualisierung
- Lyrics-Editor mit Timing-Synchronisation
- Projekt speichern/laden

Erstelle ein ASCII-Art Mockup des Main Windows."
```

**Mockup speichern:**

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

### Phase 1.2: Proof-of-Concept (kritische Technologien)

**Aktivität:** Validieren Sie technische Annahmen mit Mini-Prototypen

**Was braucht einen PoC?**
- ✅ **Neue Technologie** (die Sie noch nie benutzt haben)
- ✅ **Kritischer Feature** (z.B. Audio-Processing, Real-time-Sync)
- ✅ **Performance-kritische Operation** (z.B. große Datei-Verarbeitung)
- ✅ **Third-Party Integration** (z.B. Spotify API, Payment-Gateway)

**Was braucht KEINEN PoC?**
- ❌ Standard CRUD Operations (haben Sie 100x gemacht)
- ❌ UI-Komponenten (Library-Dokumentation reicht)
- ❌ Einfache Business-Logic

**PoC-Beispiel (SongSync: Audio-Wellenform-Visualisierung):**

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

**PoC Results dokumentieren:**

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

**Aktivität:** Designen Sie Datenbank-Schema und Data-Structures

**Beispiel (SongSync: SQLite Schema):**

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

**TypeScript Types (type-safe Data Models):**

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

**Migrations Setup (für Schema-Änderungen):**

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

### Phase 1.4: API Design (falls Backend)

**Aktivität:** Designen Sie REST/GraphQL API (überspringen bei Desktop-Only Apps)

**Beispiel (Web-App mit Backend):**

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

**Aktivität:** Visualisieren Sie System-Architektur

**Beispiel (SongSync Desktop App):**

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

**Als Mermaid Diagram (für GitHub Markdown):**

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

**Architektur dokumentieren:**

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

Limitations acceptable for V1.0 (Desktop use-case).
```

### Phase 1.6: Test Strategy

**Aktivität:** Definieren Sie Testing-Approach (BEVOR Sie Code schreiben)

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

**Bevor Sie zu Phase 2 übergehen:**

- [ ] **UI/UX Mockups existieren** (low-fidelity reicht)
- [ ] **Proof-of-Concept für kritische Technologien** ist erfolgreich
- [ ] **Data Model ist designt** (Schema + Types)
- [ ] **API Design dokumentiert** (falls Backend)
- [ ] **Architecture Diagram existiert** (visualisiert Komponenten)
- [ ] **Test Framework ist setup** (Vitest + Playwright konfiguriert)
- [ ] **Test Strategy ist dokumentiert** (Coverage-Ziele definiert)
- [ ] **CI/CD Pipeline läuft** (Tests werden automatisch ausgeführt)

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

1. **PoC für ALLES Neue** — 2 Stunden PoC sparen 20 Stunden Debugging später
2. **Low-Fidelity Mockups** — ASCII-Art oder Bleistift-Sketch reicht!
3. **Data Model ZUERST** — Datenbank-Schema beeinflusst alles andere
4. **Test-Setup JETZT** — "Later" passiert nie
5. **Dokumentieren Sie Entscheidungen** — "Warum WaveSurfer statt Peaks.js?"
6. **Zeigen Sie Mockups Stakeholdern** — Feedback in Phase 1 ist billig!

**❌ DON'Ts:**

1. **NICHT perfekte Mockups** — Sie werden sich ändern!
2. **NICHT ohne PoC committen** — "Ich denke es wird funktionieren" ist keine Strategie
3. **NICHT alle Features in Phase 1** — Fokus auf kritische Features
4. **NICHT komplexe Test-Setups** — Unit + E2E reicht für Phase 1
5. **NICHT lange in Phase 1 bleiben** — 1-2 Wochen Maximum!

---

## Phase 2: Core Implementation

**Status:** Die Haupt-Implementierungsphase
**Dauer:** 30-50% der Gesamtprojektzeit
**Team:** Alle Developers

### Ziele

Phase 2 ist wo der **echte Code** entsteht. Hier implementieren Sie die Kern-Features, die im Project Charter definiert wurden.

**Kern-Deliverables:**
1. ✅ Minimum Viable Product (MVP) Features
> **Tip:** Nutzen Sie [Teil VI: Advanced Vibe Patterns](#teil-vi-advanced-vibe-patterns) für Context Injection während der Implementierung.
2. ✅ Kern-Business-Logic
3. ✅ Datenbank-Integration
4. ✅ UI-Komponenten (funktional, nicht perfekt)
5. ✅ Unit-Tests (≥70% Coverage)
6. ✅ Integration-Tests (kritische Flows)

**Wichtig:** Phase 2 Code muss **FUNKTIONAL** sein, aber NICHT perfekt. "Polish" kommt in Phase 4!

### Phase 2.1: Session-driven Development Pattern

**Aktivität:** Nutzen Sie Session-YAML für jede Dev-Session

**Session-Workflow:**

```bash
# 1. Session starten
node scripts/session-start.js

# Output:
# ✅ Session started: .continuity/sessions/2026-01-31_session-003.yml
# 📝 Goals: Implement AudioPlayer Component

# 2. Arbeiten mit AI-Assistent
# "Hilf mir, eine AudioPlayer React-Component zu implementieren mit play/pause/seek"

# 3. Code schreiben + committen
git add src/components/AudioPlayer.tsx
git commit -m "Implement AudioPlayer component

Features:
- Play/pause toggle
- Seek functionality
- Current time display

Tests: AudioPlayer.test.tsx (85% coverage)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"

# 4. Session YAML aktualisieren
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

# 5. Session beenden
node scripts/session-end.js

# Output:
# ✅ Session ended: 2026-01-31_session-003 (duration: 2.5h)
# 📊 Commits: 1, Files: 2, Coverage: 85%
# 🎯 Next: Implement LyricsEditor component
```

### Phase 2.2: Feature-by-Feature Implementation (Iterativ!)

**Wichtig:** Implementieren Sie NICHT alle Features gleichzeitig. Eine Feature-by-Feature Strategie ist besser.

**Feature-Reihenfolge (SongSync Beispiel):**

```markdown
## Implementation Order

### Week 3: Audio Foundation
1. [x] AudioPlayer Component (play/pause/seek)
2. [x] Waveform Visualization (WaveSurfer.js integration)
3. [x] File Import (MP3/WAV)

**Quality Gate:** User kann Audio importieren und abspielen

### Week 4: Lyrics Basics
4. [x] LyricsEditor Component (text input)
5. [x] Add/Remove Lyric Lines
6. [x] Display lyrics list

**Quality Gate:** User kann Lyrics eingeben und bearbeiten

### Week 5: Timing Sync
7. [x] Capture Timestamp (keyboard shortcut)
8. [x] Sync Lyrics with Audio (highlight current line)
9. [x] Edit Timestamp (manual adjustment)

**Quality Gate:** User kann Timing zu Lyrics hinzufügen

### Week 6: Persistence
10. [x] SQLite Integration (save/load)
11. [x] Project Management (create/open/save)
12. [x] Recent Files List

**Quality Gate:** User kann Projekt speichern und später wieder öffnen
```

**Vorteil dieser Strategie:**
- ✅ Jede Woche hat ein **demo-bares Feature**
- ✅ Frühes Feedback möglich
- ✅ Weniger Merge-Conflicts (klare Feature-Boundaries)
- ✅ Motivation durch sichtbare Fortschritte

### Phase 2.3: Test-Driven Development (TDD) Pattern

**Aktivität:** Schreiben Sie Tests BEVOR (oder parallel zu) Implementation

**TDD-Workflow (Red-Green-Refactor):**

```typescript
// STEP 1: RED (Test schreiben, der fehlschlägt)

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

// STEP 2: GREEN (Minimaler Code, damit Test passt)

// src/utils/formatTime.ts
export function formatTime(seconds: number): string {
  const mins = Math.floor(seconds / 60);
  const secs = Math.floor(seconds % 60);
  return `${String(mins).padStart(2, '0')}:${String(secs).padStart(2, '0')}`;
}

// ✅ Test passes

// STEP 3: REFACTOR (Code verbessern, Tests bleiben grün)

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

**TDD für React Components:**

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

**Aktivität:** Nutzen Sie AI-Assistenten effektiv

**Gute AI-Prompts (Spezifisch!):**

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

**Iterativer AI-Workflow:**

```
# Round 1: Grundstruktur
You: "Create AudioPlayer component skeleton with props and basic JSX"
AI: [generates basic component]

# Round 2: Funktionalität hinzufügen
You: "Add play/pause functionality using useRef and Audio API"
AI: [adds audio control logic]

# Round 3: UI verbessern
You: "Add seek bar (input type='range') that syncs with audio currentTime"
AI: [adds seek functionality]

# Round 4: Tests hinzufügen
You: "Write unit tests for AudioPlayer covering play/pause and seek"
AI: [generates tests]

# Round 5: Edge Cases
You: "Add error handling for invalid audio URLs and display error message"
AI: [adds error handling]
```

**AI-Pair-Programming Pattern:**

```typescript
// 1. Beschreiben Sie das Problem dem AI
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

// 2. AI generiert Lösung
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

// 3. Sie reviewen, testen, und integrieren
```

### Phase 2.5: Database Integration Pattern

**Aktivität:** Implementieren Sie Persistence-Layer

**Beispiel (SQLite mit better-sqlite3):**

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

**Aktivität:** Implementieren Sie globalen State (Zustand, Redux, Context)

**Beispiel (Zustand Store):**

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

**Bevor Sie zu Phase 3 übergehen:**

- [ ] **MVP Features sind implementiert** (definiert in Project Charter)
- [ ] **Unit-Tests: ≥70% Coverage** (automatisch in CI/CD geprüft)
- [ ] **Integration-Tests: Kritische Flows funktionieren**
- [ ] **Database Integration funktioniert** (save/load/update/delete)
- [ ] **UI ist funktional** (nicht perfekt, aber benutzbar)
- [ ] **Keine Critical Bugs** (App startet, keine Crashes bei Normal-Use)
- [ ] **Code-Review durchgeführt** (falls Team-Projekt)

**Quality Gate Check (automatisiert):**

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

1. **Feature-by-Feature** — Nicht alles gleichzeitig!
2. **Test WÄHREND Implementation** — Nicht "später"
3. **Commit oft** — Kleine, atomare Commits (1 Feature = 1 Commit)
4. **Session-YAML aktualisieren** — Nach jedem Commit
5. **AI-Pair-Programming** — Nutzen Sie AI für Boilerplate + Tests
6. **Code-Review (falls Team)** — Jeden Tag ein PR
7. **Demo regelmäßig** — Stakeholders wollen Fortschritt sehen!

**❌ DON'Ts:**

1. **NICHT perfektionistisch** — "Good enough" für Phase 2
2. **NICHT alle Features** — Fokus auf MVP (Charter-defined)
3. **NICHT ohne Tests** — "Ich teste später" = Nie
4. **NICHT lange Branches** — Merge täglich (Trunk-based Development)
5. **NICHT skip CI/CD** — "Funktioniert auf meinem Rechner" reicht nicht
6. **NICHT Feature-Creep** — "Nur noch schnell..." führt zu Chaos

---

## Phase 3: Feature Expansion

**Status:** Nach MVP, BEVOR Polish
**Dauer:** 20-30% der Gesamtprojektzeit
**Team:** Alle Developers

### Ziele

Phase 3 ist wo Sie **Nice-to-Have Features** hinzufügen, die im Charter als "V1.0 Features" definiert wurden, aber nicht zum absoluten MVP gehören.

**Kern-Deliverables:**
1. ✅ Sekundäre Features (Keyboard Shortcuts, Undo/Redo, etc.)
2. ✅ Export-Funktionalität (verschiedene Formate)
3. ✅ User-Convenience Features (Recent Files, Templates)
4. ✅ Performance-Optimierungen (erste Runde)
5. ✅ Erweiterte Tests (Edge-Cases)

### Feature-Examples (SongSync)

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

- [ ] **Sekundäre Features implementiert** (mindestens 80% aus Charter)
- [ ] **Export funktioniert** (alle Formate validiert)
- [ ] **Keyboard Shortcuts funktionieren** (dokumentiert in README)
- [ ] **Unit-Tests: ≥75% Coverage** (gestiegen von 70%)
- [ ] **Performance: Keine Regression** (Load-Times ≤ Phase 2 Zeiten)

---

## Phase 4: Polish & Optimization

**Status:** Funktionalität komplett, jetzt "schön machen"
**Dauer:** 10-20% der Gesamtprojektzeit
**Team:** Developers + (optional) Designer

### Ziele

Phase 4 ist **"Make it pretty and fast"**. Hier verbessern Sie UI/UX und Performance.

**Kern-Deliverables:**
1. ✅ UI/UX Polish (Loading States, Error Messages, Animations)
2. ✅ Performance Optimierung (Profiling + Fixes)
3. ✅ Accessibility (Keyboard Navigation, Screen-Reader)
4. ✅ Dark Mode (falls gewünscht)
5. ✅ Responsive Design (falls Web-App)

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

- [ ] **Loading States überall** (keine "blank screens")
- [ ] **Error Handling robust** (keine uncaught exceptions)
- [ ] **Performance: ≥90 Lighthouse Score** (falls Web-App)
- [ ] **Accessibility: 0 Critical Issues** (axe DevTools)
- [ ] **Dark Mode funktioniert** (falls gewünscht)

---

## Phase 5: Hardening & Testing

**Status:** Feature-Complete, jetzt "bulletproof machen"
**Dauer:** 10-15% der Gesamtprojektzeit
**Team:** QA + Developers

### Ziele

Phase 5 ist **"Break it before users do"**. Comprehensive Testing + Bug Fixing.

**Kern-Deliverables:**
1. ✅ E2E Tests (alle kritischen User-Flows)
> **Tip:** Nutzen Sie den [Stability Guard](#3-stability-guard) um Regressionen zu vermeiden.
2. ✅ Cross-Platform Testing (Windows, Mac, Linux)
3. ✅ Security Audit (Dependencies + Code)
4. ✅ Performance Testing (Stress-Tests)
5. ✅ Bug Fixing (alle Critical + High Bugs)

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

- [ ] **E2E Tests: 100% kritische Flows** (automatisiert)
- [ ] **Security: 0 High/Critical Vulnerabilities**
- [ ] **Cross-Platform: Getestet auf Win/Mac/Linux**
- [ ] **Performance: Stress-Test bestanden** (1000 Lyrics, 100 MB Audio)
- [ ] **Critical Bugs: 0** (alle gefixt)

---

## Phase 6: Documentation & Maintenance

**Status:** Release-Ready
**Dauer:** 5-10% der Gesamtprojektzeit + Ongoing
**Team:** Alle

### Ziele

Phase 6 ist **"Make it usable and maintainable"**. Documentation + Release.

**Kern-Deliverables:**
1. ✅ User Documentation (README, Tutorials)
2. ✅ Developer Documentation (CONTRIBUTING, Architecture)
3. ✅ Release Notes
4. ✅ GitHub Release (v1.0.0)
5. ✅ Community Setup (Discussions, Issues Templates)

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

- [ ] **README.md komplett** (Installation + Quick Start)
- [ ] **CONTRIBUTING.md existiert**
- [ ] **Release Notes geschrieben**
- [ ] **GitHub Release erstellt** (v1.0.0)
- [ ] **All Documentation aktuell**

---

## Zusammenfassung: 6-Phasen-Architektur

| Phase | Dauer | Fokus | Deliverables |
|-------|-------|-------|--------------|
| **Phase 0** | 5-20% | Foundation | Charter, Tech-Stack, Plan, Git-Setup |
| **Phase 1** | 5-15% | Research | Mockups, PoC, Data-Model, Test-Setup |
| **Phase 2** | 30-50% | Core Implementation | MVP Features, Tests, Database |
| **Phase 3** | 20-30% | Feature Expansion | Sekundäre Features, Export, Shortcuts |
| **Phase 4** | 10-20% | Polish | UI/UX, Performance, Accessibility |
| **Phase 5** | 10-15% | Hardening | E2E Tests, Security, Bug-Fixes |
| **Phase 6** | 5-10% | Documentation | README, Release, Community |

**Total:** 100% (85-160% wenn man Overlap einberechnet)

**Wichtig:** Phasen können sich überlappen! Phase 6 (Documentation) beginnt oft schon in Phase 2.

---

**Ende Teil II**

Sie haben jetzt gelernt:
- ✅ Detaillierte Implementation aller 6 Phasen
- ✅ Konkrete Code-Beispiele (TypeScript/React/Electron)
- ✅ Quality Gates pro Phase
- ✅ Best Practices und häufige Fehler

**Nächster Schritt:** [Teil III: Praktische Anwendung](#teil-iii-praktische-anwendung) (Wie Sie die Methodik auf verschiedene Projekt-Typen anwenden)

---

# Teil III: Praktische Anwendung

**Ziel dieses Teils:** Sie lernen, wie Sie die 6-Phasen-Methodik auf verschiedene Projekt-Typen, Programmiersprachen, und Team-Größen anwenden.

**Inhalt:**
- [Web-Applikationen](#web-applikationen)
- [Mobile Apps](#mobile-apps)
- [CLI-Tools](#cli-tools)
- [Microservices](#microservices)
- [Team-Anpassungen](#team-anpassungen)

---

## Web-Applikationen

### Beispiel: E-Commerce Web-App (Next.js + TypeScript)

**Project Charter (Angepasst):**
```markdown
## Vision
Ein Online-Shop für handgemachte Produkte mit Stripe-Payment-Integration.

## Erfolgs-Kriterien (V1.0)
- [ ] User kann Produkte durchsuchen (Grid-View, Filter)
- [ ] User kann Produkte in Warenkorb legen
- [ ] User kann mit Stripe bezahlen
- [ ] Admin kann Produkte hinzufügen/bearbeiten (CMS)
- [ ] Performance: Lighthouse Score ≥90

## Nicht-Ziele (V1.0)
- ❌ Multi-Vendor Support (erst V2.0)
- ❌ Internationalization (erst V1.5)
- ❌ Native Mobile App (Web-Only für V1.0)
```

**Tech-Stack Selection:**
```markdown
# Tech Stack: E-Commerce Web-App

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
- **Platform:** Vercel (Next.js optimiert)
- **Database:** Supabase (managed PostgreSQL)
- **CDN:** Vercel Edge Network

## Testing
- **Unit:** Vitest
- **E2E:** Playwright
- **API:** Supertest
```

**6-Phasen-Anpassung (Web-App):**

| Phase | Web-Spezifische Aktivitäten |
|-------|---------------------------|
| **Phase 0** | Setup Vercel-Project, Supabase-DB, Stripe-Test-Account |
| **Phase 1** | UI-Mockups in Figma, Prisma-Schema-Design, API-Design (REST) |
| **Phase 2** | Product Listing, Shopping Cart (Zustand), Stripe Checkout |
| **Phase 3** | Product Search, Filters, Pagination, Admin-CMS |
| **Phase 4** | Responsive Design (Mobile/Tablet), Image Optimization (next/image) |
| **Phase 5** | E2E Tests (Checkout-Flow), Stripe Webhooks Testing |
| **Phase 6** | Deployment Vercel, Custom Domain, README |

**Key Differences (vs. Desktop App):**
- ✅ SEO wichtig → Server-Side Rendering (Next.js)
- ✅ Responsive Design → Mobile-First CSS
- ✅ API Design → REST/GraphQL endpoints
- ✅ Deployment → Vercel/Netlify (nicht Electron-Builder)

---

## Mobile Apps

### Beispiel: Fitness Tracker (React Native + Expo)

**Project Charter (Angepasst):**
```markdown
## Vision
Eine Mobile-App zum Tracken von Workouts und Fortschritt.

## Erfolgs-Kriterien (V1.0)
- [ ] User kann Workout loggen (Übung, Sets, Reps, Gewicht)
- [ ] User kann Fortschritt als Charts sehen
- [ ] User kann Workout-Templates erstellen
- [ ] Offline-Support (lokale SQLite-DB)
- [ ] iOS + Android Support

## Nicht-Ziele (V1.0)
- ❌ Social Features (erst V2.0)
- ❌ Apple Watch/Wear OS Integration (erst V1.5)
```

**Tech-Stack Selection:**
```markdown
# Tech Stack: Fitness Tracker Mobile App

## Framework
- **Framework:** React Native (Expo)
- **Language:** TypeScript
- **Navigation:** React Navigation 6

## State & Data
- **State:** Zustand
- **Database:** SQLite (expo-sqlite)
- **Async Storage:** AsyncStorage (expo-secure-store für Auth)

## UI/UX
- **UI Library:** React Native Paper
- **Charts:** Victory Native

## Testing
- **Unit:** Jest + React Native Testing Library
- **E2E:** Detox (iOS + Android Simulators)

## Deployment
- **iOS:** TestFlight → App Store
- **Android:** Google Play Internal Testing → Production
```

**6-Phasen-Anpassung (Mobile):**

| Phase | Mobile-Spezifische Aktivitäten |
|-------|-------------------------------|
| **Phase 0** | Expo Account Setup, App-Store-Developer-Accounts |
| **Phase 1** | Mobile-UI-Mockups, SQLite-Schema, Navigation-Structure |
| **Phase 2** | Workout-Logging-Screen, SQLite-Integration, Charts |
| **Phase 3** | Workout-Templates, Offline-Sync, Push-Notifications |
| **Phase 4** | Native-Animations (react-native-reanimated), Haptic-Feedback |
| **Phase 5** | E2E Tests (Detox), Device-Testing (verschiedene Screen-Sizes) |
| **Phase 6** | App-Store-Submission, Screenshots, Privacy-Policy |

**Key Differences (vs. Web App):**
- ✅ Offline-First → SQLite + Local Storage
- ✅ Platform-Spezifika → iOS vs. Android UI-Patterns
- ✅ App-Store-Review → Approval-Process einplanen
- ✅ Performance → 60 FPS Target (Animationen)

---

## CLI-Tools

### Beispiel: Code-Generator CLI (Go + Cobra)

**Project Charter (Angepasst):**
```markdown
## Vision
Ein CLI-Tool, das Boilerplate-Code für verschiedene Frameworks generiert.

## Erfolgs-Kriterien (V1.0)
- [ ] Generiert React-Component-Boilerplate
- [ ] Generiert Express-API-Route-Boilerplate
- [ ] Interaktive Prompts (Inquirer-Style)
- [ ] Config-File Support (.codegen.yaml)
- [ ] Cross-Platform (Windows, Mac, Linux)

## Nicht-Ziele (V1.0)
- ❌ GUI-Interface (nur CLI)
- ❌ Plugin-System (erst V2.0)
```

**Tech-Stack Selection:**
```markdown
# Tech Stack: Code-Generator CLI

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
- **E2E:** Golden-File-Tests (compare generated output)

## Distribution
- **Build:** GoReleaser (Cross-Platform Binaries)
- **Package-Managers:** Homebrew, Scoop, APT/YUM
```

**6-Phasen-Anpassung (CLI):**

| Phase | CLI-Spezifische Aktivitäten |
|-------|----------------------------|
| **Phase 0** | Go-Module-Init, Cobra-Setup, GoReleaser-Config |
| **Phase 1** | CLI-Command-Structure-Design, Template-Design |
| **Phase 2** | `generate react` Command, Template-Engine, File-Writing |
| **Phase 3** | `generate express` Command, Config-File-Support, Flags |
| **Phase 4** | Colored-Output (fatih/color), Progress-Bars, Better-Error-Messages |
| **Phase 5** | Golden-File-Tests, Cross-Platform-Testing (Win/Mac/Linux) |
| **Phase 6** | Homebrew-Formula, README (CLI-Usage-Examples) |

**Key Differences (vs. Web/Mobile):**
- ✅ No UI → Focus on UX via clear terminal output
- ✅ Cross-Platform-Critical → Test on all OS
- ✅ Single-Binary-Distribution → GoReleaser sehr hilfreich
- ✅ Testing → Golden-Files (snapshot expected output)

**CLI-Spezifische Best Practices:**
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

### Beispiel: Order-Service (gRPC + Go)

**Project Charter (Angepasst):**
```markdown
## Vision
Ein Microservice für Order-Management in einem E-Commerce-System.

## Erfolgs-Kriterien (V1.0)
- [ ] gRPC API: CreateOrder, GetOrder, ListOrders, CancelOrder
- [ ] Event Publishing (order.created, order.cancelled) via RabbitMQ
- [ ] PostgreSQL Persistence
- [ ] Distributed Tracing (OpenTelemetry)
- [ ] Kubernetes-Ready (Helm Chart)

## Nicht-Ziele (V1.0)
- ❌ REST API (nur gRPC, REST-Gateway erst V1.5)
- ❌ Order-History-Service (separater Service)
```

**Tech-Stack Selection:**
```markdown
# Tech Stack: Order-Service (Microservice)

## Language & Framework
- **Language:** Go 1.21
- **RPC:** gRPC + Protocol Buffers
- **HTTP:** (optional) grpc-gateway für REST-Endpoints

## Data & Messaging
- **Database:** PostgreSQL
- **ORM:** sqlx (lightweight) oder GORM
- **Message-Queue:** RabbitMQ
- **Cache:** Redis (optional, für read-heavy operations)

## Observability
- **Logging:** Zap (structured logging)
- **Tracing:** OpenTelemetry → Jaeger
- **Metrics:** Prometheus
- **Health-Checks:** grpc-health-probe

## Deployment
- **Container:** Docker
- **Orchestration:** Kubernetes
- **Helm-Chart:** Custom Chart
- **CI/CD:** GitHub Actions → ArgoCD
```

**6-Phasen-Anpassung (Microservices):**

| Phase | Microservice-Spezifische Aktivitäten |
|-------|-------------------------------------|
| **Phase 0** | Proto-File-Definition, K8s-Namespace-Setup |
| **Phase 1** | gRPC-Service-Definition, DB-Schema, Event-Schema |
| **Phase 2** | gRPC-Handlers, PostgreSQL-Integration, RabbitMQ-Publisher |
| **Phase 3** | Event-Consumers, Caching-Layer (Redis), Rate-Limiting |
| **Phase 4** | Distributed-Tracing, Structured-Logging, Metrics |
| **Phase 5** | Integration-Tests (mit Testcontainers), Load-Tests (K6) |
| **Phase 6** | Helm-Chart, Deployment-Docs, Runbook |

**Key Differences (vs. Monolith):**
- ✅ Service-Boundaries → Clear gRPC Interface
- ✅ Distributed-Tracing → Essential (not optional)
- ✅ Event-Driven → RabbitMQ/Kafka Integration
- ✅ Deployment → Kubernetes + Helm

**Microservice-Spezifische Best Practices:**
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

## Team-Anpassungen

### Solo-Entwickler (1 Person)

**Anpassungen:**
- ✅ **Phase 0:** Minimal (1-2 Tage), kein Stakeholder-Alignment nötig
- ✅ **Session-YAML:** Einfacher (nur für eigene Kontinuität)
- ✅ **Code-Review:** Self-Review (oder AI-Review)
- ✅ **Communication:** Minimal (nur Dokumentation für "Future You")

**Best Practices:**
```markdown
# Session-YAML (Solo, vereinfacht)
session_id: 2026-01-31_session-001
goals: "Implement user authentication"
achievements:
  - "✅ JWT-Auth funktioniert"
  - "✅ Login/Logout-Endpoints"
next: "Add password-reset functionality"
```

### Kleines Team (2-5 Personen)

**Anpassungen:**
- ✅ **Phase 0:** Charter-Alignment (1-2 Meetings)
- ✅ **Session-YAML:** Include developer-name
- ✅ **Code-Review:** Peer-Review (1 Reviewer)
- ✅ **Communication:** Daily-Standups (async via Slack)

**Best Practices:**
```markdown
# Session-YAML (Klein-Team)
session_id: 2026-01-31_dev-alice_002
developer: alice
goals: "Implement payment-integration"
handoff_to: bob  # Next developer
handoff_notes: |
  - Stripe-Webhook noch nicht getestet
  - TODO: Add retry-logic for failed-payments
```

### Mittleres Team (5-15 Personen)

**Anpassungen:**
- ✅ **Phase 0:** Formelle Charter-Approval (Meeting + Document-Sign-Off)
- ✅ **Session-YAML:** Structured + Team-Dashboard
- ✅ **Code-Review:** 2 Reviewers (1 Senior)
- ✅ **Communication:** Daily-Standups + Weekly-Planning

**Best Practices:**
```markdown
# Team-Dashboard (Auto-Generated from Session-YAMLs)
## Active Sessions (2026-01-31)
- **Alice:** Implementing payment-integration (Phase 2)
- **Bob:** Writing E2E-tests for checkout (Phase 5)
- **Carol:** Designing admin-panel mockups (Phase 1)

## Blockers
- **Alice:** Waiting for Stripe-API-Keys from DevOps

## This Week Goals
- [ ] Complete payment-integration (Alice)
- [ ] Finish E2E-test-suite (Bob)
- [ ] Approve admin-panel-design (Carol + Product-Owner)
```

### Großes Team (15+ Personen)

**Anpassungen:**
- ✅ **Phase 0:** Enterprise-Governance (Steering-Committee)
- ✅ **Session-YAML:** Integration mit JIRA/Linear
- ✅ **Code-Review:** 2+ Reviewers + Approval-Gates
- ✅ **Communication:** Structured-Meetings + Documentation-First

**Best Practices:**
```yaml
# Session-YAML (Enterprise)
session_id: 2026-01-31_team-payments_sprint-05_alice_002
team: payments
sprint: sprint-05
developer: alice
jira_ticket: PAY-123

goals:
  - "Implement Stripe-webhook-handler (PAY-123)"

approvals:
  - name: "Bob (Tech-Lead)"
    status: approved
  - name: "Security-Team"
    status: pending

compliance:
  - security_scan: passed
  - license_check: passed
  - pii_review: required
```

---

**Ende Teil III**

Sie haben jetzt gelernt:
- ✅ Anwendung der Methodik auf verschiedene Projekt-Typen
- ✅ Tech-Stack-Auswahl je nach Projekt-Typ
- ✅ Team-Anpassungen (Solo → Enterprise)

**Nächster Schritt:** [Teil IV: Erweiterte Themen](#teil-iv-erweiterte-themen)

---

# Teil IV: Erweiterte Themen

**Ziel dieses Teils:** Sie lernen fortgeschrittene Techniken für professionelle Vibe-Coding-Projekte.

**Inhalt:**
- [CI/CD Integration](#cicd-integration)
- [Secrets Management](#secrets-management)
- [Multi-Repository-Strategien](#multi-repository-strategien)
- [AI-Assisted-Development-Best-Practices](#ai-assisted-development-best-practices)
- [Recovery & Disaster-Recovery](#recovery--disaster-recovery)

---

## CI/CD Integration

### GitHub Actions (Empfohlen für Open-Source)

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

### GitLab CI (Empfohlen für Private/Enterprise)

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

**Für verschlüsselte Secrets IN Git (Enterprise):**

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

## Multi-Repository-Strategien

### Monorepo (Ein Repo, mehrere Packages)

**Tools:** Nx, Turborepo, Lerna

**Struktur:**
```
my-monorepo/
├── apps/
│   ├── web/           (Next.js Web-App)
│   ├── mobile/        (React Native App)
│   └── api/           (Express API)
├── packages/
│   ├── ui/            (Shared UI Components)
│   ├── types/         (Shared TypeScript Types)
│   └── utils/         (Shared Utilities)
├── .continuity/
│   └── sessions/      (Shared Session-Tracking)
├── package.json       (Root)
└── turbo.json         (Turborepo Config)
```

**Vorteile:**
- ✅ Code-Sharing einfach
- ✅ Atomic-Commits über mehrere Packages
- ✅ Einfacheres Refactoring

**Nachteile:**
- ❌ Größere Repo-Size
- ❌ Komplexere CI/CD (braucht Caching)

### Multi-Repo (Mehrere Repos)

**Struktur:**
```
my-org/
├── web-app/           (Separates Repo)
├── mobile-app/        (Separates Repo)
├── api-service/       (Separates Repo)
└── shared-ui/         (Separates Repo, als npm-Package)
```

**Vorteile:**
- ✅ Klare Ownership-Boundaries
- ✅ Unabhängige Deployment-Cycles
- ✅ Kleinere Repo-Sizes

**Nachteile:**
- ❌ Code-Sharing schwieriger (braucht npm-publish)
- ❌ Cross-Repo-Refactoring komplex

**Empfehlung:**
- **Solo/Klein-Team:** Monorepo (einfacher)
- **Mittel/Groß-Team:** Multi-Repo (bessere Boundaries)

---

## AI-Assisted-Development-Best-Practices

### Effektive Prompts (Spezifisch!)

**❌ Schlechte Prompts:**
```
"Make this better"
"Fix the bug"
"Add tests"
```

**✅ Gute Prompts:**
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

### Iteratives AI-Pair-Programming

**Pattern: Problem → Solution → Review → Iterate**

```
Round 1 (Context):
You: "I'm building a React hook for managing shopping cart state.
      Requirements: add/remove items, update quantity, calculate total."
AI: [generates basic hook skeleton]

Round 2 (Implementation):
You: "Add localStorage persistence, so cart survives page refresh"
AI: [adds useEffect with localStorage sync]

Round 3 (Edge-Cases):
You: "Handle edge case: what if localStorage is full or disabled?"
AI: [adds try-catch + fallback to memory-only state]

Round 4 (Tests):
You: "Write tests for all three scenarios: normal, localStorage-full, localStorage-disabled"
AI: [generates comprehensive test suite]

Round 5 (Optimization):
You: "Optimize: debounce localStorage writes to avoid too many writes"
AI: [adds debouncing logic]
```

### AI Code-Review

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

## Recovery & Disaster-Recovery

### Recovery-Szenarien

**Szenario 1: Laptop gestohlen/crashed (keine Backups)**

```markdown
## Recovery-Steps:
1. ✅ Git-Remote existiert → `git clone` funktioniert!
2. ✅ Private Docs (.continuity/private/) sind weg
   → Rekonstruieren aus Gedächtnis + Git-History
3. ⚠️ .env-Secrets sind weg
   → Aus Passwort-Manager restaurieren (z.B. 1Password)
4. ✅ Development-Environment neu aufsetzen:
   → npm install, starten, weiterarbeiten

**Zeit-Verlust:** 2-4 Stunden (neu-setup)
**Datenverlust:** Minimal (nur private Notizen)
```

**Szenario 2: Git-Remote gelöscht (GitHub-Account gehackt)**

```markdown
## Recovery-Steps:
1. ✅ Lokale Git-History existiert noch → Alles da!
2. ✅ GitHub-Account recovern (2FA-Backup-Codes)
3. ✅ Neues Repo erstellen + pushen:
   git remote set-url origin https://github.com/new-repo.git
   git push -u origin main
4. ✅ CI/CD Secrets neu setzen (aus Passwort-Manager)

**Zeit-Verlust:** 1-2 Stunden
**Datenverlust:** 0 (lokale Kopie intakt)
```

**Szenario 3: Kompletter Datenverlust (Feuer, Hochwasser)**

```markdown
## Recovery-Steps (wenn Backup-Strategie befolgt wurde):
1. ✅ Layer 1 (Git-Remote): git clone
2. ✅ Layer 2 (Time-Machine): [nur relevant wenn noch Local-Commits existierten]
3. ✅ Layer 3 (Cloud-Backup): rclone copy dropbox:backups/project/ .
4. ✅ Layer 4 (USB-Drive @ Freund): [falls alles andere fehlschlägt]

**Zeit-Verlust:** 4-8 Stunden (Neu-Setup + Secrets restaurieren)
**Datenverlust:** 0-7 Tage (abhängig von letztem Backup)
```

### Backup-Testing (Mindestens quartalsweise!)

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

echo "🎉 Backup-Test complete!"
```

---

**Ende Teil IV**

Sie haben jetzt gelernt:
- ✅ CI/CD-Pipeline-Setup (GitHub Actions + GitLab)
- ✅ Secrets-Management (local + CI/CD + SOPS)
- ✅ Multi-Repo vs. Monorepo
- ✅ AI-Assisted-Development-Best-Practices
- ✅ Disaster-Recovery-Strategien

**Nächster Schritt:** [Teil V: Anhang](#teil-v-anhang)

---

# Teil V: Anhang

**Inhalt:**
- [Glossar](#glossar)
- [Checklisten](#checklisten)
- [Troubleshooting](#troubleshooting)
- [Ressourcen](#ressourcen)

---

## Glossar

**Vibe Coding:** Intuitive, flow-basierte Programmierung mit AI-Assistenten

**Phase 0:** Foundation & Vision (BEVOR Code geschrieben wird)

**Session-YAML:** YAML-File zur Dokumentation einer Development-Session

**ADR (Architecture Decision Record):** Dokumentation einer technischen Entscheidung (warum wurde X gewählt statt Y?)

**Quality Gate:** Automatisierte Checks, die vor Phase-Übergang bestanden werden müssen

**PoC (Proof-of-Concept):** Mini-Prototyp zur Validierung einer technischen Annahme

**MVP (Minimum Viable Product):** Kleinste Feature-Set, das Wert liefert

**TDD (Test-Driven Development):** Tests BEVOR Implementation schreiben

**CI/CD:** Continuous Integration / Continuous Deployment (automatisierte Tests + Deployment)

**Monorepo:** Ein Git-Repository mit mehreren Packages/Apps

**Multi-Repo:** Mehrere separate Git-Repositories (ein Repo pro App/Service)

---

## Checklisten

### Phase 0 Checklist
- [ ] Project-Charter erstellt (Vision, Erfolgs-Kriterien, Nicht-Ziele)
- [ ] Tech-Stack dokumentiert (tech-stack.md mit ADRs)
- [ ] Implementierungsplan erstellt (6-Phasen-Breakdown)
- [ ] Git-Repository initialisiert + Remote (GitHub/GitLab)
- [ ] .continuity/ Struktur erstellt
- [ ] Backup-Strategie implementiert (3+ Layer)
- [ ] CI/CD Pipeline-Setup (GitHub-Actions/GitLab-CI)
- [ ] README.md mit Setup-Anleitung

### Phase 1 Checklist
- [ ] UI/UX-Mockups erstellt (low-fidelity)
- [ ] PoC für kritische Technologien erfolgreich
- [ ] Data-Model designt (Schema + Types)
- [ ] API-Design dokumentiert (falls Backend)
- [ ] Architecture-Diagram erstellt
- [ ] Test-Framework setup (Unit + E2E)

### Phase 2 Checklist
- [ ] MVP-Features implementiert
- [ ] Unit-Tests: ≥70% Coverage
- [ ] Database-Integration funktioniert
- [ ] UI funktional (nicht perfekt)
- [ ] 0 Critical-Bugs

### Quality-Gate Checklist (Alle Phasen)
- [ ] Tests passing (npm test)
- [ ] Linter passing (npm run lint)
- [ ] Build successful (npm run build)
- [ ] No High/Critical Security-Vulnerabilities (npm audit)

---

## Troubleshooting

### Problem: "CI/CD Pipeline failing, aber lokal funktioniert alles"

**Lösung:**
```bash
# 1. Reproduziere CI-Umgebung lokal (Docker)
docker run -it --rm -v $(pwd):/app node:20 bash
cd /app
npm ci  # (nicht npm install!)
npm test

# 2. Häufige Ursachen:
# - npm install vs npm ci (lockfile unterschiedlich)
# - Environment-Variables fehlen
# - OS-spezifische Probleme (Windows vs. Linux)
```

### Problem: "Session-YAML wird zu groß/unübersichtlich"

**Lösung:**
```yaml
# Verwende separate Session-Files pro Tag
# NICHT: .continuity/sessions/session-001.yml (immer dieselbe Datei)
# SONDERN: .continuity/sessions/2026-01-31_session-001.yml

# Archiviere alte Sessions:
mkdir -p .continuity/sessions/archive/2025
mv .continuity/sessions/2025-* .continuity/sessions/archive/2025/
```

### Problem: "AI-Assistent generiert Code, der nicht kompiliert"

**Lösung:**
```
# 1. Seien Sie spezifischer im Prompt:
"Schreibe TypeScript-Code (nicht JavaScript) mit strict-mode enabled"

# 2. Nutzen Sie iterativen Workflow:
"Der Code kompiliert nicht. Fehler: [paste error]. Bitte fixen."

# 3. Geben Sie Kontext:
"Hier ist meine tsconfig.json: [paste]
Und hier die bestehende Type-Definitionen: [paste]
Jetzt implementiere Feature X mit kompatiblen Types."
```

---

## Ressourcen

### Templates & Scripts
- **GitHub:** https://github.com/your-org/vibe-coding-guide/templates
- **Session-Start-Script:** `scripts/session-start.js`
- **Backup-Script:** `scripts/backup.sh`

### Decision-Matrices
- **Language-Selection:** `decision-matrices/language-selection.md`
- **Framework-Selection:** `decision-matrices/framework-selection.md`
- **Database-Selection:** `decision-matrices/database-selection.md`

### Tools
- **Session-Management:** Node.js, Python, Bash-Scripts
- **Backup:** rsync, rclone, robocopy
- **CI/CD:** GitHub-Actions, GitLab-CI, Jenkins
- **Secrets:** SOPS, Vault, git-crypt

### Community
- **GitHub-Discussions:** https://github.com/your-org/vibe-coding-guide/discussions
- **Issues:** https://github.com/your-org/vibe-coding-guide/issues

---

**Ende Teil V & Ende des Guides**

---

# Schlusswort

Sie haben jetzt ein vollständiges, sprach-agnostisches Framework für professionelles Vibe Coding mit AI-Assistenten.

**Was Sie gelernt haben:**
- ✅ **Teil I:** Grundlagen & 10 Kernprinzipien
- ✅ **Teil II:** 6-Phasen-Architektur (detailliert)
- ✅ **Teil III:** Anwendung auf verschiedene Projekt-Typen
- ✅ **Teil IV:** Erweiterte Themen (CI/CD, Secrets, AI-Best-Practices)
- ✅ **Teil V:** Glossar, Checklisten, Troubleshooting

**Nächste Schritte:**
1. **Starten Sie klein:** Wählen Sie ein Micro-Projekt (1-2 Wochen)
2. **Befolgen Sie Phase 0:** Investieren Sie Zeit in Vision + Tech-Stack
3. **Nutzen Sie Templates:** Kopieren Sie project-charter.md, tech-stack.md
4. **Session-basiert arbeiten:** Erstellen Sie Ihre erste Session-YAML
5. **Committen Sie oft:** Kleine, atomare Commits mit AI-Co-Authoring

**Practice What You Preach:**
Dieses Handbuch wurde selbst mit der 6-Phasen-Methodik erstellt!

**Viel Erfolg mit Ihrem nächsten Vibe Coding Projekt! 🚀**

---

**Version:** 3.0.0
**Datum:** 2026-01-31
**Autor:** Frank Jeworrek
**Basierend auf:** THE_SONG_APP Project (28 Wochen, 2025-2026)
**Lizenz:** CC BY-NC-SA 4.0

**Beiträge willkommen:** [CONTRIBUTING.md](CONTRIBUTING.md)

# Teil VI: Advanced Vibe Patterns

> **Status:** Experimental / Advanced
> **License:** CC BY-NC-SA 4.0 (Universal Patterns)

Dieser Teil integriert bewährte "Universal Patterns" für maximale Stabilität und Kontext-Kontrolle.

## 1. Context Injection Protocol
Vermeiden Sie Gedächtnisverlust des AI-Assistenten durch strukturierte Kontext-Blöcke.

**Template:** `templates/context/context-block.md`
**Anwendung:** Kopieren Sie diesen Block an den Anfang JEDES Prompts.

## 2. Prompt Library
Warum das Rad neu erfinden? Nutzen Sie standardisierte Prompts für wiederkehrende Aufgaben.

- **Session Start:** `templates/prompts/continue-session.md`
- **Debugging:** `templates/prompts/debug-issue.md`

## 3. Stability Guard
Verhindern Sie Regressionen durch eine strikte Checkliste VOR neuen Features.

**Template:** `templates/quality/stability-checklist.md`
**Regel:** Wenn >1 Punkt nicht erfüllt ist, MUSS eine Stabilisierungs-Session eingelegt werden.
