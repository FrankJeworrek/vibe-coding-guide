# Backup-Strategie: Vibe Coding Guide v3.0

**Version:** 1.0.0
**Erstellt:** 2026-01-31
**Autor:** Frank Jeworrek
**Status:** Active

---

## 5-Layer Backup-Modell für dieses Projekt

Dieses Projekt verwendet ein redundantes 5-Layer-Backup-System, um Datenverlust in jedem Szenario zu verhindern.

---

## Layer 1: Git + GitHub (Version Control + Remote)

### Beschreibung
Git bietet vollständige Versionshistorie. GitHub dient als Remote-Backup mit geografischer Redundanz (GitHub-Rechenzentren weltweit).

### Setup
```bash
# Git ist bereits initialisiert
git remote -v
# Sollte zeigen: origin https://github.com/frankjeworrek/vibe-coding-guide.git

# Bei jedem signifikanten Meilenstein:
git add .
git commit -m "Descriptive commit message

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>"
git push origin main
```

### Configuration
- **Repository:** `github.com/frankjeworrek/vibe-coding-guide`
- **Branch-Strategie:** `main` (stable), optional: `dev` (work-in-progress)
- **Commit-Frequency:** Nach jeder signifikanten Änderung
- **Push-Frequency:** Bei Session-Ende (mindestens täglich bei aktiver Arbeit)

### Recovery
```bash
# Kompletter Verlust: Clone from GitHub
git clone https://github.com/frankjeworrek/vibe-coding-guide.git

# Einzelne Datei wiederherstellen:
git checkout HEAD -- path/to/file.md

# Zu früherer Version zurück:
git checkout <commit-hash>
```

---

## Layer 2: Lokale Timestamped Backups

### macOS (Time Machine - Empfohlen)

**Beschreibung:** macOS Time Machine bietet automatische, stündliche Backups mit Hardlinks (platzsparend).

**Setup:**
1. Externe Festplatte anschließen
2. System Preferences → Time Machine → Select Disk
3. Time Machine aktivieren

**Frequency:** Automatisch (stündlich)

**Recovery:**
1. Time Machine öffnen (im Finder oder via Menüleiste)
2. Zu gewünschtem Zeitpunkt navigieren
3. Dateien oder Ordner wiederherstellen

---

### Linux/Unix (rsync mit hardlinks)

**Script:** `scripts/backup/backup-rsync.sh`

```bash
#!/bin/bash
# Lokales Backup mit rsync + hardlinks (platzsparend)

SOURCE="/Volumes/FrankX2TB/frankjeworrek/AntigravityMiscProject/THE_VIBE_VAULT"
DEST="/path/to/backup/location"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_PATH="$DEST/backup-$TIMESTAMP"
LATEST_LINK="$DEST/latest"

# Erstelle Backup mit hardlinks zu letztem Backup (platzsparend)
rsync -a --link-dest="$LATEST_LINK" \
  --exclude='.git/' \
  --exclude='node_modules/' \
  --exclude='__pycache__/' \
  "$SOURCE/" "$BACKUP_PATH/"

# Update latest-Link
rm -f "$LATEST_LINK"
ln -s "$BACKUP_PATH" "$LATEST_LINK"

echo "Backup created: $BACKUP_PATH"
```

**Frequency:** Täglich (via cron):
```bash
# Cron-Job hinzufügen (täglich um 2 Uhr)
crontab -e
# Zeile hinzufügen:
0 2 * * * /path/to/scripts/backup/backup-rsync.sh
```

**Recovery:**
```bash
# Letztes Backup wiederherstellen:
rsync -a /path/to/backup/latest/ ./

# Bestimmtes Backup:
rsync -a /path/to/backup/backup-2026-01-31_14-30-00/ ./
```

---

### Windows (robocopy mit VSS)

**Script:** `scripts/backup/backup-robocopy.ps1`

```powershell
# Lokales Backup mit robocopy + VSS
$source = "C:\Users\Frank\Projects\THE_VIBE_VAULT"
$dest = "D:\Backups\vibe-coding-guide"
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$backupPath = "$dest\backup-$timestamp"

# Erstelle Backup
robocopy $source $backupPath /MIR /ZB /R:3 /W:10 `
  /XD ".git" "node_modules" "__pycache__" `
  /LOG:"$backupPath\robocopy.log"

Write-Host "Backup created: $backupPath"
```

**Frequency:** Täglich (via Task Scheduler):
1. Task Scheduler öffnen
2. Create Basic Task
3. Trigger: Daily, 2:00 AM
4. Action: Start PowerShell script

**Recovery:**
```powershell
# Letztes Backup wiederherstellen:
robocopy D:\Backups\vibe-coding-guide\latest\ .\ /MIR
```

---

### Cross-Platform (rclone)

**Tool:** rclone (funktioniert auf macOS, Linux, Windows)

**Setup:**
```bash
# Install rclone
# macOS: brew install rclone
# Linux: sudo apt install rclone
# Windows: choco install rclone

# Configure local backup location
rclone config
```

**Script:** `scripts/backup/backup-rclone.sh`

```bash
#!/bin/bash
SOURCE="."
DEST="local-backup:/path/to/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

rclone sync "$SOURCE" "$DEST/backup-$TIMESTAMP" \
  --exclude ".git/**" \
  --exclude "node_modules/**" \
  --exclude "__pycache__/**" \
  --progress

echo "Backup created: $DEST/backup-$TIMESTAMP"
```

**Frequency:** Manuell oder via cron/Task Scheduler

**Recovery:**
```bash
rclone sync local-backup:/path/to/backups/latest ./
```

---

## Layer 3: STATUS_TRACKING.md (Human-Readable)

### Beschreibung
Ein menschenlesbarer Recovery-Guide, der immer aktuell gehalten wird.

### Datei
`STATUS_TRACKING.md` (im Root-Verzeichnis)

### Inhalt
- Aktueller Projekt-Status (Phase, Session, Completion %)
- Completed Milestones
- Current Work
- Next Steps
- Recovery Information (Last Commit, Last Backup)

### Update-Frequency
- Bei jedem Milestone (Session-Ende, Phase-Abschluss)
- Vor jedem Git-Push
- Manuell bei wichtigen Änderungen

### Recovery-Nutzen
Wenn alle anderen Systeme versagen, gibt STATUS_TRACKING.md einen schnellen Überblick:
- Wo stand das Projekt?
- Was wurde erreicht?
- Was ist der nächste Schritt?
- Wo finde ich Backups?

---

## Layer 4: Cloud-Backup (Optional, Empfohlen)

### Option A: AWS S3

**Script:** `scripts/backup/backup-s3.sh`

```bash
#!/bin/bash
# AWS S3 Backup (geografische Redundanz)

BUCKET="s3://your-bucket-name/vibe-coding-guide"
SOURCE="."

# Sync to S3 (nur geänderte Dateien)
aws s3 sync "$SOURCE" "$BUCKET" \
  --exclude ".git/*" \
  --exclude "node_modules/*" \
  --exclude "__pycache__/*" \
  --storage-class STANDARD_IA

echo "Backup synced to S3: $BUCKET"
```

**Setup:**
```bash
# Install AWS CLI
# macOS: brew install awscli
# Linux/Windows: pip install awscli

# Configure credentials
aws configure
```

**Kosten:** ~$0.01-0.05 pro GB/Monat (STANDARD_IA)

**Recovery:**
```bash
aws s3 sync s3://your-bucket-name/vibe-coding-guide ./
```

---

### Option B: Azure Blob Storage

**Script:** `scripts/backup/backup-azure.ps1`

```powershell
# Azure Blob Storage Backup
$storageAccount = "yourstorageaccount"
$container = "vibe-coding-guide"
$source = "."

az storage blob upload-batch `
  --account-name $storageAccount `
  --destination $container `
  --source $source `
  --exclude ".git/*" "node_modules/*"

Write-Host "Backup synced to Azure: $container"
```

**Setup:**
```bash
# Install Azure CLI
# macOS: brew install azure-cli
# Linux/Windows: curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Login
az login
```

**Kosten:** ~€0.02-0.05 pro GB/Monat (Cool Tier)

**Recovery:**
```powershell
az storage blob download-batch `
  --account-name yourstorageaccount `
  --source vibe-coding-guide `
  --destination ./
```

---

### Option C: Google Cloud Storage

**Script:** `scripts/backup/backup-gcs.sh`

```bash
#!/bin/bash
# Google Cloud Storage Backup
BUCKET="gs://your-bucket-name/vibe-coding-guide"
SOURCE="."

gsutil -m rsync -r -x ".git/*|node_modules/*" "$SOURCE" "$BUCKET"

echo "Backup synced to GCS: $BUCKET"
```

**Setup:**
```bash
# Install gcloud CLI
# Follow: https://cloud.google.com/sdk/docs/install

# Authenticate
gcloud auth login
```

**Kosten:** ~$0.01-0.04 pro GB/Monat (Nearline)

**Recovery:**
```bash
gsutil -m rsync -r gs://your-bucket-name/vibe-coding-guide ./
```

---

### Option D: Dropbox / Google Drive (Einfachste Option)

**Setup:**
1. Dropbox oder Google Drive installieren
2. Projekt-Ordner in Sync-Ordner verschieben oder symlinken
3. Automatische Synchronisation

**Kosten:** €0 (bis 2-15 GB, abhängig vom Plan)

**Recovery:**
- Web-Interface oder lokale App
- Dateien einfach herunterladen

**Vorteil:** Kein Script notwendig, automatisch
**Nachteil:** Sync-Konflikte bei gleichzeitiger Arbeit

---

## Layer 5: Portable Packages (Archiv-Snapshots)

### Beschreibung
Tar.gz-Archive bei Major Milestones (v1.0, v2.0, v3.0).

### Erstellung
```bash
# Bei jedem Major Milestone (v1.0, v2.0, etc.)
VERSION="v1.0.0"
TIMESTAMP=$(date +"%Y-%m-%d")
ARCHIVE="vibe-coding-guide-$VERSION-$TIMESTAMP.tar.gz"

tar -czf "$ARCHIVE" \
  --exclude=".git" \
  --exclude="node_modules" \
  --exclude="__pycache__" \
  .

echo "Archive created: $ARCHIVE"
```

### Storage
- Lokale Externe Festplatte
- USB-Stick
- Private Cloud (verschlüsselt)
- NAS (Network-Attached Storage)

### Recovery
```bash
tar -xzf vibe-coding-guide-v1.0.0-2026-01-31.tar.gz
```

---

## Recovery-Szenarien

### Szenario 1: Versehentliches Löschen (einzelne Datei)

**Recovery-Reihenfolge:**
1. **Git:** `git checkout HEAD -- file.md` (instant)
2. **Time Machine:** Datei aus Backup wiederherstellen (< 1 Min)
3. **Cloud-Backup:** Datei herunterladen (< 5 Min)

---

### Szenario 2: Festplatten-Crash (kompletter Datenverlust lokal)

**Recovery-Reihenfolge:**
1. **GitHub:** `git clone https://github.com/frankjeworrek/vibe-coding-guide.git` (5-10 Min)
2. **Cloud-Backup:** Von S3/Azure/GCS wiederherstellen (10-30 Min)
3. **Portable Archive:** Von USB-Stick oder externer Festplatte (< 5 Min)

**Verifikation:** STATUS_TRACKING.md lesen für aktuellen Stand

---

### Szenario 3: Kompletter Datenverlust (Computer gestohlen/zerstört)

**Recovery-Reihenfolge:**
1. **GitHub:** `git clone` von neuem Computer (5-10 Min)
2. **Cloud-Backup:** Von S3/Azure/GCS/Dropbox (10-30 Min)
3. **Portable Archive:** Von USB-Stick (falls vorhanden)

**Private Dokumente (.continuity/private/):**
- **Nicht in Git!** Müssen separat gesichert sein
- Cloud-Backup (Layer 4) oder USB-Stick (Layer 5)

---

## Backup-Verifikation

### Checkliste (monatlich)

- [ ] Layer 1: GitHub-Push erfolgreich (`git log origin/main`)
- [ ] Layer 2: Lokale Backups vorhanden (Time Machine oder rsync)
- [ ] Layer 3: STATUS_TRACKING.md aktuell
- [ ] Layer 4: Cloud-Backup läuft (S3/Azure/Dropbox)
- [ ] Layer 5: Portable Archive bei letztem Milestone erstellt

### Test-Recovery (quarterly)

```bash
# Test: Clone from GitHub in temp directory
cd /tmp
git clone https://github.com/frankjeworrek/vibe-coding-guide.git test-recovery
cd test-recovery
# Verify: All files present?
ls -la
```

---

## Kosten-Übersicht

| Layer | Tool | Kosten/Monat | Aufwand |
|-------|------|--------------|---------|
| Layer 1 | Git + GitHub | €0 | Automatisch (bei push) |
| Layer 2 | Time Machine | €0 (ext. Festplatte vorhanden) | Automatisch |
| Layer 3 | STATUS_TRACKING.md | €0 | 5 Min (bei Milestone) |
| Layer 4 | AWS S3 / Dropbox | €0-5 | Automatisch / Script |
| Layer 5 | Portable Archive | €0 | 10 Min (bei Major Milestone) |
| **GESAMT** | | **€0-5/Monat** | **Minimal (automatisiert)** |

---

## Best Practices

1. **3-2-1 Regel einhalten:**
   - 3 Kopien (lokal + GitHub + Cloud)
   - 2 verschiedene Medien (SSD + Cloud)
   - 1 Kopie off-site (GitHub/Cloud)

2. **Automatisierung:**
   - Layer 1 (Git): Bei Session-Ende
   - Layer 2 (Time Machine): Automatisch
   - Layer 4 (Cloud): Via Cron/Task Scheduler

3. **Verifikation:**
   - Monatlich: Alle Layer checken
   - Quarterly: Test-Recovery durchführen

4. **Private Daten:**
   - `.continuity/private/` NICHT in Git!
   - Separat sichern (verschlüsselte Cloud oder USB-Stick)

---

**Letzte Aktualisierung:** 2026-01-31
**Nächste Review:** 2026-02-28
