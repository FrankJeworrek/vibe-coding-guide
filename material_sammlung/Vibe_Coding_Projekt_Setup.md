Hier sind zwei Versionen des Skripts – eine für **Windows** (PowerShell) und eine für **Mac/Linux** (Bash).

Beide Skripte erstellen den Ordner, die Unterstrukturen und befüllen die Dateien direkt mit den Vorlagen, die wir besprochen haben. So hast du mit einem Klick dein komplettes "Vibe Coding"-Setup bereit.

### Option A: Für Windows (PowerShell)

Klicke einfach auf das Kopieren-Symbol am Codeblock, öffne einen Ordner, Rechtsklick -> "In Terminal öffnen" und füge es ein.

```powershell
# Setup-Script für Vibe Coding Projekt
$projectName = "MeinNeuesProjekt"
New-Item -ItemType Directory -Path $projectName
cd $projectName

# Dateien erstellen mit initialem Inhalt
@'
# Projekt Fokus: [Name]
## Tech-Stack
- Frontend: Next.js / Tailwind
- Backend: Supabase / Node
'@ | Out-File -FilePath "PROJEKT_FOKUS.md" -Encoding utf8

@'
# 🧠 Session Context
## 📍 Aktueller Meilenstein
- [ ] Initiales Setup abgeschlossen
## ✅ Zuletzt erledigt
- Projektstruktur angelegt
'@ | Out-File -FilePath "SESSION_CONTEXT.md" -Encoding utf8

@'
# 🤖 AI Co-Pilot Instructions
Handle dich nach den Vibe Coding Prinzipien: Kontext-First, Iterativ, Proaktiv.
'@ | Out-File -FilePath "INSTRUCTIONS.md" -Encoding utf8

# Basis-Ordnerstruktur
New-Item -ItemType Directory -Path "src", "public", "docs"

Write-Host "✅ Projekt $projectName wurde erfolgreich vorbereitet!" -ForegroundColor Green

```

---

### Option B: Für Mac & Linux (Bash/Zsh)

Kopiere diesen Block in dein Terminal, um das Projekt-Verzeichnis blitzschnell zu erstellen.

```bash
# Setup-Script für Vibe Coding Projekt
mkdir -p MeinNeuesProjekt/{src,public,docs}
cd MeinNeuesProjekt

cat <<EOF > PROJEKT_FOKUS.md
# Projekt Fokus: [Name]
## Tech-Stack
- Frontend: Next.js / Tailwind
- Backend: Supabase / Node
EOF

cat <<EOF > SESSION_CONTEXT.md
# 🧠 Session Context
## 📍 Aktueller Meilenstein
- [ ] Initiales Setup abgeschlossen
## ✅ Zuletzt erledigt
- Projektstruktur angelegt
EOF

cat <<EOF > INSTRUCTIONS.md
# 🤖 AI Co-Pilot Instructions
Handle dich nach den Vibe Coding Prinzipien: Kontext-First, Iterativ, Proaktiv.
EOF

echo "✅ Projekt-Setup abgeschlossen. Viel Erfolg beim Coden!"

```

---

### Wie du jetzt startest:

1. Führe das Skript aus.
2. Öffne den neuen Ordner in deinem Editor (z.B. VS Code).
3. Kopiere den Inhalt der `INSTRUCTIONS.md` und der `PROJEKT_FOKUS.md` in deinen ersten Chat mit der KI.
