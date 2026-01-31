# ADR-003: MIT License für maximale Community-Nutzung

**Status:** 🟢 Accepted
**Date:** 2026-01-31
**Deciders:** Frank Jeworrek
**Technical Story:** Open Source Strategie für Vibe Coding Guide v3.0

---

## Context

Projekt soll als Open Source für die breite Developer-Community veröffentlicht werden. Die Lizenz-Wahl beeinflusst:

- **Adoption:** Wie viele Entwickler/Unternehmen nutzen den Guide?
- **Verwendbarkeit:** Können Unternehmen ihn kommerziell nutzen?
- **Community-Beiträge:** Wie einfach können Contributors beitragen?
- **Rechtlicher Schutz:** Schutz des Autors (Frank Jeworrek) und Contributors
- **Kommerzielle Software:** Schutz für zukünftige proprietäre Software-Implementierung

**Spezielle Überlegung:**
Der Guide selbst (Methodik, Dokumentation) soll Open Source sein. Zukünftige **Software-Implementierungen** (kommerzielle Tools basierend auf der Methodik) sollen jedoch proprietär bleiben können.

---

## Decision

**MIT License** mit expliziter **Commercial Software Clause** im README.

### MIT License Text
Standard MIT License (siehe LICENSE.md)

### Commercial Software Clause (README.md)
```markdown
## License & Commercial Use

**Methodology (this guide):** MIT License - Free for all use

**Commercial Software Implementations:**
While this guide is Open Source, commercial software products based on
this methodology may require separate licensing.

If you're building a commercial tool based on Vibe Coding, please contact:
[Open GitHub Issue] for licensing discussion.

**"Vibe Coding"™ is a trademark of Frank Jeworrek (application pending).**
```

---

## Alternatives Considered

### Option 1: GPL v3 (Copyleft) ❌

**Pros:**
- ✅ Erzwingt Open Source (Derivate müssen ebenfalls GPL sein)
- ✅ Verhindert Closed-Source-Nutzung ohne Erlaubnis
- ✅ "Viral" License (zwingt zur Offenlegung)
- ✅ Community bleibt Open Source

**Cons:**
- ❌ Verhindert kommerzielle Nutzung in Closed-Source-Projekten
- ❌ Unternehmen meiden GPL (rechtliche Bedenken)
- ❌ Weniger flexibel für Enterprise-Adoption
- ❌ Contributors müssen GPL akzeptieren (höhere Hürde)
- ❌ Nicht kompatibel mit vielen kommerziellen Projekten

**Verdict:** **Abgelehnt** - Zu restriktiv, begrenzt Adoption

---

### Option 2: Apache 2.0 ⚠️

**Pros:**
- ✅ Patent-Schutz (explizite Patent-Grant-Klausel)
- ✅ Permissive wie MIT (kommerzielle Nutzung ok)
- ✅ Industry-Standard (von Apache Software Foundation)
- ✅ Contributor License Agreement (CLA) möglich

**Cons:**
- ❌ Längerer Lizenz-Text (komplizierter zu verstehen)
- ❌ Patent-Klausel ist für Dokumentation übermäßig (Guide hat keine Patente)
- ❌ Weniger bekannt als MIT (höhere Einstiegshürde)

**Verdict:** **Fast gewählt** - Aber Patent-Clause übermäßig für reines Dokumentations-Projekt

---

### Option 3: Creative Commons BY 4.0 (CC BY) ❌

**Pros:**
- ✅ Speziell für Dokumentation/Content entworfen
- ✅ Einfach zu verstehen (für Nicht-Programmierer)
- ✅ Namensnennung erforderlich (Attribution)

**Cons:**
- ❌ Nicht für Software/Scripts gedacht
- ❌ Community erwartet MIT/Apache für Tech-Projekte (Scripts sind Code!)
- ❌ Weniger Schutz für Code-Beiträge
- ❌ Unüblich für GitHub-Repos mit Code

**Verdict:** **Abgelehnt** - Unpassend für Projekt mit Scripts/Code

---

### Option 4: Dual-Licensing (GPL für Derivate, kommerziell für Closed-Source) ❌

**Beispiel:** Qt-Modell (GPL für Open Source, kommerzielle Lizenz für Closed-Source)

**Pros:**
- ✅ Maximale Kontrolle (Open Source + Kommerziell möglich)
- ✅ Revenue-Möglichkeit (verkaufe kommerzielle Lizenzen)
- ✅ Schützt vor Closed-Source-Nutzung ohne Zahlung

**Cons:**
- ❌ Zu komplex für v1.0 (rechtliche Verwaltung notwendig)
- ❌ Verwirrt Community ("Welche Lizenz gilt für mich?")
- ❌ Höhere Einstiegshürde für Contributors
- ❌ Skaliert nicht (Solo-Entwickler, keine Firma)

**Verdict:** **Abgelehnt** - Zu komplex für Solo-Projekt

---

### Option 5: MIT License ✅ **GEWÄHLT**

**Pros:**
- ✅ Maximal permissive (kommerzielle Nutzung ok, auch Closed-Source)
- ✅ Einfach zu verstehen (kurz, klar, 171 Wörter)
- ✅ Industry-Standard (höchstes Vertrauen, am weitesten verbreitet)
- ✅ Enterprise-friendly (keine GPL-Kontamination-Sorgen)
- ✅ Niedrigste Einstiegshürde für Contributors
- ✅ Kompatibel mit fast allen anderen Lizenzen
- ✅ Namensnennung erforderlich (Copyright-Notice bleibt)

**Cons:**
- ❌ Kein expliziter Patent-Schutz (akzeptabel für Dokumentation)
- ❌ Kein Copyleft (Derivate können Closed-Source sein)
- ❌ Keine "Viralität" (GPL erzwingt Open Source bei Derivaten)

**Mitigation für Cons:**
- **Patent-Schutz nicht notwendig:** Guide ist Dokumentation, keine patentierbare Erfindung
- **Closed-Source-Derivate:** Commercial Software Clause im README + Trademark schützen
- **Trademark "Vibe Coding™":** Verhindert Missbrauch des Namens (auch wenn Code MIT ist)
- **First-Mover Advantage:** Community kennt Frank Jeworrek als Original-Autor

**Verdict:** **Gewählt** - Beste Balance für maximale Adoption + Flexibilität

---

## Consequences

### Positive

1. **Maximale Adoption:**
   - Jeder kann Guide nutzen (privat, kommerziell, closed-source, open-source)
   - Keine rechtlichen Bedenken für Unternehmen
   - Höchste Kompatibilität mit anderen Projekten

2. **Enterprise-friendly:**
   - Fortune-500-Unternehmen können Guide ohne Lizenz-Sorgen nutzen
   - Keine "GPL-Kontamination" für ihre proprietären Projekte
   - Einfacher Approval-Prozess (Legal-Teams kennen MIT)

3. **Community-Beiträge:**
   - Niedrigste Einstiegshürde (jeder kann ohne Lizenz-Sorgen beitragen)
   - Contributors müssen keine Contributor License Agreement (CLA) unterschreiben
   - Internationale Contributors ohne rechtliche Bedenken

4. **Rechtliche Klarheit:**
   - Copyright bleibt bei Frank Jeworrek (© 2026 Frank Jeworrek)
   - Contributors lizenzieren ihre Beiträge unter MIT (implizit)
   - Namensnennung erforderlich (Copyright-Notice muss bleiben)

### Negative

1. **Kein Copyleft:**
   - Jemand könnte Guide in Closed-Source-Produkt einbauen (ohne Quellcode-Offenlegung)
   - Derivate müssen nicht Open Source sein
   - **Mitigation:** Trademark "Vibe Coding™" schützt Namen, auch wenn Code MIT ist

2. **Kein Patent-Schutz:**
   - Kein expliziter Patent-Schutz (wie Apache 2.0)
   - **Nicht relevant:** Guide ist Dokumentation, keine patentierbare Software-Erfindung

3. **Kommerzielle Software-Nutzung:**
   - Jemand könnte kommerzielle Software basierend auf Guide bauen (ohne Zahlung)
   - **Mitigation:** Commercial Software Clause im README (moralische Verpflichtung, keine rechtliche)
   - **Mitigation:** Trademark "Vibe Coding™" verhindert Missbrauch des Namens

### Neutral

1. **Contributors:**
   - Alle Beiträge werden automatisch unter MIT License veröffentlicht
   - Contributors behalten Copyright an ihrem Code (aber lizenzieren unter MIT)

2. **Zukünftige Software:**
   - Frank kann proprietäre Software bauen (trotz MIT Guide)
   - Guide (MIT) und Software (proprietär) sind getrennte Produkte
   - Trademark schützt Namen "Vibe Coding™" für Software

---

## Implementation

### Phase 1: LICENSE.md erstellen ✅
- [x] Standard MIT License Text
- [x] Copyright: "© 2026 Frank Jeworrek"
- [x] File: LICENSE.md (root directory)

### Phase 2: README.md mit Commercial Clause ⏳
- [ ] Section "License & Commercial Use"
- [ ] Klarstellung: Guide = MIT, Software = separates Licensing
- [ ] Trademark-Hinweis: "Vibe Coding™"

### Phase 3: CONTRIBUTING.md Hinweis ⏳
- [ ] Alle Beiträge werden unter MIT License veröffentlicht
- [ ] Contributors akzeptieren implizit MIT (durch PR)

### Phase 4: Trademark-Anmeldung ⏸️ (später)
- [ ] "Vibe Coding™" beim DPMA anmelden (Deutschland)
- [ ] Optional: USPTO (USA) für internationale Protection
- [ ] Kosten: ~€300 (DPMA), ~$250 (USPTO)

---

## Verification

**Erfolgs-Kriterien:**

- [x] LICENSE.md im Repo vorhanden (root directory)
- [ ] GitHub zeigt "MIT License" Badge automatisch
- [ ] README.md enthält License-Section mit Commercial Clause
- [ ] CONTRIBUTING.md erwähnt MIT License für Contributions
- [ ] Community-Feedback positiv (keine Beschwerden über Lizenz)
- [ ] Unternehmen nutzen Guide ohne rechtliche Bedenken

**Monitoring:**
- GitHub Insights: Wie viele Forks/Stars (Adoption-Indikator)
- Issues: Lizenz-Fragen oder Beschwerden? (sollte 0 sein)
- Enterprise-Usage: Feedback von Unternehmen

---

## Related Decisions

- [ADR-001: Bilinguale Dokumentation](ADR-001_bilingual.md) - Betrifft internationale Zugänglichkeit
- [ADR-002: Multi-Sprachen Beispiele](ADR-002_5-languages.md) - Betrifft Sprach-Diversität
- Future: ADR-004 Trademark "Vibe Coding™" (wenn angemeldet)

---

## Legal Disclaimer

**Wichtig:** Diese ADR ist keine Rechtsberatung. Frank Jeworrek sollte einen Anwalt konsultieren für:
- Trademark-Anmeldung
- Kommerzielle Software-Lizenzierung
- International Patent Protection (falls gewünscht)

**Current Status:**
- MIT License: ✅ Akzeptiert und implementiert
- Trademark: 📅 Geplant (Monat 2-3)
- Software-Licensing: ⏸️ Später (wenn Software existiert)

---

## Notes

- MIT License ist die meistgenutzte Open-Source-Lizenz (2025: ~55% aller GitHub-Repos)
- Erfolgreiche Projekte mit MIT: React, Vue, Angular, Node.js, Ruby on Rails, .NET Core
- Alternative-Erfolge mit Apache 2.0: Kubernetes, TensorFlow, Kafka (aber mehr Enterprise-fokussiert)
- GPL-Projekte (Linux, WordPress): Stark, aber weniger Enterprise-Adoption für neue Projekte

**Lesson:** Für maximale Community-Adoption = MIT. Für Enterprise-Kontrolle = Apache 2.0. Für Viralität = GPL v3.

**Unsere Entscheidung:** Maximale Community-Adoption (MIT) + Trademark-Schutz (Vibe Coding™) = Beste Balance

---

**Approved by:** Frank Jeworrek
**Approval Date:** 2026-01-31
