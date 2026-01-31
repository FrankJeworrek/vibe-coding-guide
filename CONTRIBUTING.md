# Beitragen zum Vibe Coding Guide / Contributing to the Vibe Coding Guide

🇩🇪 **Deutsch** | 🇬🇧 **[English below](#english)**

---

## 🇩🇪 Deutsch

Vielen Dank für Ihr Interesse, zum Vibe Coding Guide beizutragen!

### Wie Sie beitragen können

#### 1. 🌍 Übersetzungen (Weitere Sprachen)
- Französisch, Spanisch, Japanisch, Chinesisch, etc.
- Kopieren Sie die Struktur von `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md`
- Erstellen Sie `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_[LANG].md` (z.B. `_FR.md` für Französisch)
- Pull Request mit klarer Beschreibung

**Wichtig:** Behalten Sie identische Struktur (Kapitel-Nummerierung, Markdown-Anker)

#### 2. 💻 Script-Implementierungen (Weitere Programmiersprachen)
- C#, PHP, Ruby, Swift, Kotlin, Scala, etc.
- Erstellen Sie Scripts in `scripts/session-management/`, `scripts/adr/`, etc.
- Folgen Sie dem Pattern der existierenden Scripts (CLI-Args, Output-Format)
- Testen Sie auf Ihrer Plattform (Windows/Mac/Linux)
- Dokumentieren Sie Dependencies (falls notwendig)

**Beispiel:** `scripts/session-management/session-start.rb` (Ruby-Implementation)

#### 3. 📦 Projekt-Examples (Weitere Frameworks)
- Vue.js, Svelte, Laravel, Ruby on Rails, .NET, Django, etc.
- Erstellen Sie vollständiges Setup in `examples/[category]/[framework]/`
- **Muss enthalten:**
  - `project-charter.md`
  - `IMPLEMENTIERUNGSPLAN.md` (oder `IMPLEMENTATION_PLAN.md`)
  - 3 Beispiel Session-YAMLs
  - 2 Beispiel ADRs
  - Quality Gates Config
  - README mit Setup-Anleitung
- Verwenden Sie eine kleine, funktionierende Beispiel-App (To-Do-Liste, Blog, API)

#### 4. 📊 Entscheidungs-Matrizen
- Weitere Kategorien (Logging-Libraries, Monitoring-Tools, Message-Queues, etc.)
- Format: `decision-matrices/[category]-selection.md`
- **Struktur:**
  - 10 Kriterien (Performance, Kosten, Community, Lernkurve, etc.)
  - 5-7 Optionen (Tools/Libraries zum Vergleichen)
  - Scoring-Tabelle (1-5 Sterne pro Kriterium)
  - Empfehlung basierend auf Use-Case

#### 5. 📚 Fallstudien
- Reale Projekt-Erfahrungen mit diesem Guide
- Format: `examples/case-studies/[project-name].md`
- **Muss enthalten:**
  - Context (Projekttyp, Team-Größe, Stack, Timeline)
  - Challenges (Probleme, die auftraten)
  - Solutions (Wie Vibe Coding half)
  - Lessons Learned (Was würden Sie anders machen?)
  - Metriken (falls verfügbar: Zeit gespart, weniger Bugs, etc.)

#### 6. 🐛 Bug-Fixes
- Typos, broken links, technische Fehler
- Kleine Fixes: Direkt via PR
- Größere Fixes: Erst Issue erstellen, dann PR (für Diskussion)

#### 7. ✨ Erweiterungen
- Neue Patterns, neue Phasen, neue Best Practices
- **Prozess:**
  1. Issue erstellen für Diskussion ("Sollten wir Phase 7: Deployment hinzufügen?")
  2. Community-Feedback sammeln
  3. Nach Konsens: PR mit Implementation
  4. ADR erstellen (wenn es eine Architektur-Entscheidung ist)

---

### Pull Request Prozess

1. **Fork** dieses Repo (Button oben rechts auf GitHub)
2. **Clone** zu Ihrem lokalen Rechner:
   ```bash
   git clone https://github.com/YOUR_USERNAME/vibe-coding-guide.git
   cd vibe-coding-guide
   ```
3. **Branch** erstellen:
   ```bash
   git checkout -b feature/mein-feature
   # oder
   git checkout -b fix/mein-bugfix
   ```
4. **Änderungen** machen und committen:
   ```bash
   git add .
   git commit -m "Add French translation for main guide"
   # oder
   git commit -m "Fix typo in Phase 2 section"
   ```
5. **Push** zu Ihrem Fork:
   ```bash
   git push origin feature/mein-feature
   ```
6. **Pull Request** erstellen auf GitHub:
   - Gehen Sie zu Ihrem Fork auf GitHub
   - Button "Compare & pull request"
   - Beschreiben Sie Ihre Änderungen klar
   - Warten Sie auf Review

---

### Code of Conduct

- Respektvoller Umgang mit allen Contributors
- Konstruktives Feedback (nicht: "Das ist falsch", sondern: "Hier ist ein besserer Ansatz")
- Fokus auf technische Exzellenz
- Keine Diskriminierung jeglicher Art (Geschlecht, Herkunft, Religion, sexuelle Orientierung, etc.)
- Keine Beleidigungen, Trolling oder Off-Topic-Diskussionen

**Bei Verstößen:** Bitte melden via Issue oder Email (wird vertraulich behandelt)

---

### Lizenz

Alle Beiträge werden unter **MIT License** veröffentlicht (siehe LICENSE.md).

Durch Ihren Pull Request akzeptieren Sie implizit, dass Ihre Änderungen unter MIT License lizenziert werden und Sie das Copyright-Recht dafür haben.

---

### Fragen?

- **GitHub Discussions:** Für allgemeine Fragen, Diskussionen, Ideen
- **GitHub Issues:** Für Bug-Reports, Feature-Requests, konkrete Probleme
- **Email:** [Wird später hinzugefügt] (für sensible Themen)

---

## 🇬🇧 English

Thank you for your interest in contributing to the Vibe Coding Guide!

### How to Contribute

#### 1. 🌍 Translations (More Languages)
- French, Spanish, Japanese, Chinese, etc.
- Copy the structure from `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md`
- Create `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_[LANG].md` (e.g. `_FR.md` for French)
- Pull Request with clear description

**Important:** Keep identical structure (chapter numbering, markdown anchors)

#### 2. 💻 Script Implementations (More Programming Languages)
- C#, PHP, Ruby, Swift, Kotlin, Scala, etc.
- Create scripts in `scripts/session-management/`, `scripts/adr/`, etc.
- Follow the pattern of existing scripts (CLI args, output format)
- Test on your platform (Windows/Mac/Linux)
- Document dependencies (if necessary)

**Example:** `scripts/session-management/session-start.rb` (Ruby implementation)

#### 3. 📦 Project Examples (More Frameworks)
- Vue.js, Svelte, Laravel, Ruby on Rails, .NET, Django, etc.
- Create complete setup in `examples/[category]/[framework]/`
- **Must include:**
  - `project-charter.md`
  - `IMPLEMENTATION_PLAN.md` (or `IMPLEMENTIERUNGSPLAN.md`)
  - 3 example Session YAMLs
  - 2 example ADRs
  - Quality Gates Config
  - README with setup instructions
- Use a small, working example app (To-Do list, blog, API)

#### 4. 📊 Decision Matrices
- More categories (Logging Libraries, Monitoring Tools, Message Queues, etc.)
- Format: `decision-matrices/[category]-selection.md`
- **Structure:**
  - 10 criteria (Performance, Cost, Community, Learning Curve, etc.)
  - 5-7 options (Tools/Libraries to compare)
  - Scoring table (1-5 stars per criterion)
  - Recommendation based on use-case

#### 5. 📚 Case Studies
- Real project experiences with this guide
- Format: `examples/case-studies/[project-name].md`
- **Must include:**
  - Context (Project type, team size, stack, timeline)
  - Challenges (Problems that occurred)
  - Solutions (How Vibe Coding helped)
  - Lessons Learned (What would you do differently?)
  - Metrics (if available: Time saved, fewer bugs, etc.)

#### 6. 🐛 Bug Fixes
- Typos, broken links, technical errors
- Small fixes: Directly via PR
- Larger fixes: Create issue first, then PR (for discussion)

#### 7. ✨ Enhancements
- New patterns, new phases, new best practices
- **Process:**
  1. Create issue for discussion ("Should we add Phase 7: Deployment?")
  2. Gather community feedback
  3. After consensus: PR with implementation
  4. Create ADR (if it's an architectural decision)

---

### Pull Request Process

1. **Fork** this repo (button top-right on GitHub)
2. **Clone** to your local machine:
   ```bash
   git clone https://github.com/YOUR_USERNAME/vibe-coding-guide.git
   cd vibe-coding-guide
   ```
3. **Branch** create:
   ```bash
   git checkout -b feature/my-feature
   # or
   git checkout -b fix/my-bugfix
   ```
4. **Make changes** and commit:
   ```bash
   git add .
   git commit -m "Add French translation for main guide"
   # or
   git commit -m "Fix typo in Phase 2 section"
   ```
5. **Push** to your fork:
   ```bash
   git push origin feature/my-feature
   ```
6. **Create Pull Request** on GitHub:
   - Go to your fork on GitHub
   - Button "Compare & pull request"
   - Describe your changes clearly
   - Wait for review

---

### Code of Conduct

- Respectful interaction with all contributors
- Constructive feedback (not: "This is wrong", but: "Here's a better approach")
- Focus on technical excellence
- No discrimination of any kind (gender, origin, religion, sexual orientation, etc.)
- No insults, trolling, or off-topic discussions

**For violations:** Please report via Issue or Email (will be handled confidentially)

---

### License

All contributions will be published under **MIT License** (see LICENSE.md).

By submitting a Pull Request, you implicitly accept that your changes will be licensed under MIT License and that you have the copyright rights to do so.

---

### Questions?

- **GitHub Discussions:** For general questions, discussions, ideas
- **GitHub Issues:** For bug reports, feature requests, specific problems
- **Email:** [Will be added later] (for sensitive topics)

---

**Danke / Thank you!** 🙏

**Let's build the best Vibe Coding resource together!**
