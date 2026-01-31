# ADR-001: Bilinguale Dokumentation (Deutsch + Englisch)

**Status:** 🟢 Accepted
**Date:** 2026-01-31
**Deciders:** Frank Jeworrek
**Technical Story:** Transformation von Python-spezifischem Guide v2.0 zu universellem Guide v3.0

---

## Context

Das Original VIBE_CODING_GUIDE_v2.md ist nur auf Deutsch verfasst (1438 Zeilen). Vibe Coding als Methodik hat jedoch internationales Potenzial, da AI-gestütztes Programmieren ein globales Phänomen ist. Die Entscheidung über die Sprache der Dokumentation hat direkten Einfluss auf:

- Reichweite und potentielle Nutzerschaft
- Community-Building-Möglichkeiten
- Wartungsaufwand (eine vs. zwei Versionen)
- Respekt für Original-Material (auf Deutsch)

---

## Decision

Wir erstellen **beide Versionen parallel**:
- `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_DE.md` (Deutsche Version, 3000-3500 Zeilen)
- `AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md` (Englische Version, 3000-3500 Zeilen)

Beide Versionen haben:
- Identische Struktur (Kapitel, Abschnitte, Nummerierung)
- Identische Code-Beispiele (keine Übersetzung von Code)
- Parallele Markdown-Anker (für Link-Kompatibilität)

---

## Alternatives Considered

### Option 1: Nur Englisch ❌

**Pros:**
- ✅ Maximale internationale Reichweite
- ✅ Nur eine Version zu warten
- ✅ Englisch = Lingua Franca der Tech-Community

**Cons:**
- ❌ Verlust der deutschsprachigen Community
- ❌ Original-Autor (Frank) ist Deutscher, Material ist auf Deutsch
- ❌ Respektiert Original-Sprache nicht
- ❌ Deutsche Developer fühlen sich ausgeschlossen

**Verdict:** **Abgelehnt** - Zu viel Verlust, nicht respektvoll gegenüber Original-Material

---

### Option 2: Nur Deutsch ❌

**Pros:**
- ✅ Einfacher zu schreiben (Muttersprache von Frank)
- ✅ Konsistent mit v2.md (deutsches Original)
- ✅ Nur eine Version zu warten

**Cons:**
- ❌ Limitiert Reichweite massiv (~90% der Developer nutzen Englisch als Arbeitssprache)
- ❌ Kein internationales Community-Building möglich
- ❌ Geringere Adoption außerhalb DACH-Raum
- ❌ Schwieriger für internationale Contributors

**Verdict:** **Abgelehnt** - Zu limitiert für v3.0 Ambition (universell, weltweit)

---

### Option 3: Bilingual (Deutsch + Englisch) ✅ **GEWÄHLT**

**Pros:**
- ✅ Deutsche Community bleibt eingebunden (respektiert Original)
- ✅ Internationale Reichweite (10x größere potentielle Nutzerschaft)
- ✅ Zeigt Respekt für Original-Material und Autor
- ✅ Beide Sprachen sind vollwertig (keine "Übersetzung zweiter Klasse")
- ✅ Englische Version als "Official" für internationale Community

**Cons:**
- ❌ Doppelte Arbeit (~6-8 Stunden zusätzliche Übersetzungsarbeit)
- ❌ Wartungs-Overhead (beide Versionen müssen synchron gehalten werden)
- ❌ Risiko von Inkonsistenzen zwischen Versionen
- ❌ Höhere Komplexität bei Änderungen (beide Versionen updaten)

**Mitigations für Cons:**
- **Glossar:** Konsistente Terminologie (DE ↔ EN Mapping)
- **Struktur-Synchronisation:** Identische Kapitel-Nummerierung, Markdown-Anker
- **Parallel-Editing:** Änderungen in Session 2 (Übersetzung) werden beide Versionen gleichzeitig betrachten
- **Community-Support:** Contributors können Inkonsistenzen via PRs fixen

**Verdict:** **Gewählt** - Beste Balance zwischen Respekt, Reichweite und Machbarkeit

---

## Consequences

### Positive

- 10x größere potentielle Nutzerschaft (Deutsch + Englisch vs. nur Deutsch)
- Deutsche Entwickler fühlen sich wertgeschätzt (Muttersprache verfügbar)
- Englische Version ermöglicht internationale Community-Beiträge
- Zeigt Professionalität und Engagement (beide Sprachen vollwertig)
- Original-Autor (Frank) kann in Muttersprache denken und schreiben (Session 1)
- Englische Übersetzung kann technische Präzision erhöhen (Session 2)

### Negative

- +6-8 Stunden Übersetzungsarbeit (Session 2 komplett für Übersetzung)
- Zukünftige Updates müssen beide Versionen betreffen (Wartungs-Overhead)
- Risiko von Inkonsistenzen (muss aktiv gemanagt werden)
- Community-Contributors müssen eventuell beide Versionen updaten (höhere Einstiegshürde für PRs)

### Neutral

- README.md muss Sprach-Navigation bieten (klare Links zu DE + EN)
- Quick-Start-Guides ebenfalls bilingual (QUICK_START_DE.md + QUICK_START_EN.md)
- Projekt-Charter und Tech-Stack können auf Englisch sein (technische Dokumente)

---

## Implementation

### Phase 1: Deutsche Version (Session 1B) ✅
- [x] AGNOSTIC_VIBE_CODING_GUIDE_v3.0_DE.md schreiben (Teil I bereits fertig)
- [ ] QUICK_START_DE.md erstellen
- [ ] Teil II-V auf Deutsch schreiben

### Phase 2: Englische Übersetzung (Session 2) ⏳
- [ ] AGNOSTIC_VIBE_CODING_GUIDE_v3.0_EN.md erstellen
  - Strategie: DeepL/ChatGPT für Erst-Übersetzung, dann manuelle Überprüfung
- [ ] QUICK_START_EN.md erstellen
- [ ] Glossar erstellen (konsistente Terminologie DE ↔ EN)
- [ ] Struktur synchron halten (identische Kapitel-Nummerierung)

### Phase 3: README mit Sprach-Navigation ⏳
- [ ] Bilingual aufgebaut (Tabelle: Deutsch links, English rechts)
- [ ] Klare Links zu beiden Versionen
- [ ] Feature-Comparison Table (v2.0 vs. v3.0) in beiden Sprachen

---

## Verification

**Erfolgs-Kriterien:**

- [ ] Beide Versionen haben identische Struktur (Kapitel-Nummerierung)
- [ ] Code-Beispiele identisch (keine Übersetzung von Code-Kommentaren zwischen Sprachen)
- [ ] Glossar-Begriffe konsistent (z.B. "Session-Kontinuität" = "Session Continuity")
- [ ] Community-Feedback positiv ("Ich schätze, dass es auf Deutsch/Englisch verfügbar ist")
- [ ] Keine Beschwerden über Inkonsistenzen (Monat 1-3 nach Launch)

**Monitoring:**
- GitHub Issues für Inkonsistenzen-Reports
- Community-Feedback via GitHub Discussions
- Regelmäßige Reviews (quarterly) für Synchronisierung

---

## Related Decisions

- [ADR-002: Multi-Sprachen Beispiele (5 Sprachen)](ADR-002_5-languages.md) - Betrifft Sprach-Diversität bei Code-Beispielen
- [ADR-003: MIT License](ADR-003_mit-license.md) - Betrifft internationale Nutzbarkeit

---

## Notes

- Diese Entscheidung wurde nach Analyse des community-Feedbacks und internationaler Best Practices getroffen
- React, Vue, Go und andere erfolgreiche Open-Source-Projekte bieten ebenfalls bilinguale oder mehrsprachige Dokumentation
- Der zusätzliche Aufwand (6-8h) rechtfertigt sich durch 10x größere Reichweite

---

**Approved by:** Frank Jeworrek
**Approval Date:** 2026-01-31
