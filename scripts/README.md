# Scripts

This directory contains automation scripts for Vibe Coding workflows.

## Session Management

### session-start
Creates a new session YAML file for tracking development sessions.

**Usage:**
```bash
# Node.js
node scripts/session-management/session-start.js

# Python
python scripts/session-management/session-start.py

# Bash
bash scripts/session-management/session-start.sh
```

## ADR Creation

### create-adr
Creates a new Architecture Decision Record from template.

**Usage:**
```bash
node scripts/adr/create-adr.js "Why React over Vue"
```

## Backup

### backup
Creates a timestamped backup of the project.

**Usage:**
```bash
bash scripts/backup/backup.sh
```

---

**Note:** Full script implementations coming in future releases.
For now, manually create session YAMLs using templates/session-context.md
