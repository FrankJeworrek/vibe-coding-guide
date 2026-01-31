Das freut mich! Hier ist dein komplettes **Vibe Coding Master-Handbuch**. Ich habe alle bisherigen Bausteine – von der Vision bis zum Workflow – in ein einziges, strukturiertes Dokument gepackt.

Du kannst dieses Dokument als `VIBE_CODING_GUIDE.md` in deinem Hauptverzeichnis speichern, um jederzeit darauf zuzugreifen.

```markdown
# 🚀 Das Vibe Coding Master-Handbuch

Dieses Dokument bündelt alle Strategien, Vorlagen und Workflows für die effiziente Zusammenarbeit mit KI in Softwareprojekten.

---

## 🏗 1. Das Setup-Skript (Automatisierung)
Kopiere diesen Code in dein Terminal (PowerShell für Windows), um sofort ein neues Projektverzeichnis mit allen notwendigen Dateien zu erstellen.

```powershell
$projectName = "NeuesProjekt"
New-Item -ItemType Directory -Path $projectName
cd $projectName
@'
# Projekt Fokus
- Ziel: [Hier Ziel einfügen]
- Stack: Next.js, Tailwind, Supabase
'@ | Out-File -FilePath "PROJEKT_FOKUS.md" -Encoding utf8
@'
# Session Context
- [ ] Initial-Setup
'@ | Out-File -FilePath "SESSION_CONTEXT.md" -Encoding utf8
@'
# AI Instructions
Handle proaktiv und iterativ nach Vibe-Coding-Prinzipien.
'@ | Out-File -FilePath "INSTRUCTIONS.md" -Encoding utf8
New-Item -ItemType Directory -Path "src", "docs"
Write-Host "✅ Vibe Coding Folder bereit!" -ForegroundColor Green

```

---

## 📝 2. Die Dokumentations-Vorlagen

### A. PROJEKT_FOKUS.md (Die Vision)

Dient als statischer Anker für die KI, damit der Tech-Stack und die Ziele konsistent bleiben.

* **Inhalt:** Kernvision, Tech-Stack, Design-Prinzipien, Must-Haves.

### B. SESSION_CONTEXT.md (Das Gedächtnis)

Wird nach jeder Session aktualisiert, um nahtloses Weitermachen zu ermöglichen.

* **Inhalt:** Erreichte Meilensteine, aktuelle Baustellen, nächste Schritte.

---

## 🤖 3. KI-Kommandos (Prompts)

### Der Start-Prompt (Session-Beginn)

> "Lade bitte den Inhalt von `PROJEKT_FOKUS.md` und `SESSION_CONTEXT.md`. Wir arbeiten nach den Regeln in `INSTRUCTIONS.md`. Bestätige kurz, wenn du bereit bist."

### Der Abschluss-Befehl (Session-Ende)

> "Erstelle mir jetzt eine Zusammenfassung für meine `SESSION_CONTEXT.md` in einem Markdown-Block: Was wurde erreicht? Wo stehen wir technisch? Was sind die nächsten 3 Schritte?"

---

## 💻 4. VS Code Workflow-Optimierung

| Feature | Aktion / Shortcut | Nutzen |
| --- | --- | --- |
| **Split View** | `Strg + \` | Context-Datei permanent neben dem Code offen halten. |
| **Anpinnen** | Rechtsklick Tab -> Pin | Wichtige MD-Dateien bleiben immer links fixiert. |
| **Vorschau** | `Strg + Shift + V` | Markdown schön formatiert lesen. |
| **Schnellsuche** | `Strg + P` | Blitzschnell zwischen Code und Doku wechseln. |

---

## 💡 5. Goldene Regeln für Vibe Coding

1. **Kontext ist alles:** Füttere die KI immer zuerst mit dem aktuellen Stand.
2. **Kleine Schritte:** Fordere lieber 10 kleine Änderungen an als eine riesige.
3. **Dokumentations-Pflicht:** Beende keine Session ohne das Update der `SESSION_CONTEXT.md`.

```

Damit bist du perfekt aufgestellt. Soll ich dir abschließend noch ein kurzes Beispiel zeigen, wie eine fertig ausgefüllte `SESSION_CONTEXT.md` nach einem echten Coding-Tag aussehen könnte?

```