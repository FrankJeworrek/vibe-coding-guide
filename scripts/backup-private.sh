#!/bin/bash

# Automated backup script for private/confidential files
# Part of 3-layer security architecture for THE_VIBE_VAULT
#
# Usage:
#   ./scripts/backup-private.sh           # Interactive backup
#   ./scripts/backup-private.sh --auto    # Automatic backup with timestamp

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Paths
PRIVATE_DIR="/Volumes/FrankX2TB/frankjeworrek/AntigravityMiscProject/THE_VIBE_VAULT_PRIVATE"
BACKUP_BASE_DIR="/Volumes/Shared/Backups/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="THE_VIBE_VAULT_PRIVATE_backup_${TIMESTAMP}"
BACKUP_DIR="${BACKUP_BASE_DIR}/${BACKUP_NAME}"

# Check if private directory exists
if [ ! -d "$PRIVATE_DIR" ]; then
    echo -e "${RED}❌ ERROR: Private directory not found at:${NC}"
    echo -e "${RED}   $PRIVATE_DIR${NC}"
    exit 1
fi

# Check if backup base directory exists
if [ ! -d "$BACKUP_BASE_DIR" ]; then
    echo -e "${RED}❌ ERROR: Backup base directory not found at:${NC}"
    echo -e "${RED}   $BACKUP_BASE_DIR${NC}"
    echo ""
    echo -e "${YELLOW}Please create it first or mount the external drive.${NC}"
    exit 1
fi

# Auto mode (no user interaction)
if [ "$1" = "--auto" ]; then
    echo -e "${BLUE}🔄 Starting automated backup...${NC}"
    rsync -av --progress "$PRIVATE_DIR/" "$BACKUP_DIR/"
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 0 ]; then
        echo ""
        echo -e "${GREEN}✅ Backup completed successfully!${NC}"
        echo -e "${GREEN}   Location: $BACKUP_DIR${NC}"
        exit 0
    else
        echo ""
        echo -e "${RED}❌ Backup failed with exit code: $EXIT_CODE${NC}"
        exit $EXIT_CODE
    fi
fi

# Interactive mode
echo ""
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║         🔒 PRIVATE FILES BACKUP SCRIPT 🔒                    ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}This will backup your private/confidential files to:${NC}"
echo -e "${YELLOW}  $BACKUP_DIR${NC}"
echo ""
echo -e "${YELLOW}Source directory:${NC}"
echo -e "${YELLOW}  $PRIVATE_DIR${NC}"
echo ""

# Show files to be backed up
echo -e "${BLUE}Files to backup:${NC}"
ls -lh "$PRIVATE_DIR" | grep -v "^total" | grep -v "^d" | awk '{print "  - " $9 " (" $5 ")"}'
echo ""

# Confirm backup
read -p "Do you want to proceed with the backup? (y/n): " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Backup cancelled.${NC}"
    exit 0
fi

# Perform backup
echo ""
echo -e "${BLUE}🔄 Starting backup...${NC}"
echo ""

rsync -av --progress "$PRIVATE_DIR/" "$BACKUP_DIR/"
EXIT_CODE=$?

echo ""

if [ $EXIT_CODE -eq 0 ]; then
    echo -e "${GREEN}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║              ✅ BACKUP COMPLETED SUCCESSFULLY ✅              ║${NC}"
    echo -e "${GREEN}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${GREEN}Backup location:${NC}"
    echo -e "${GREEN}  $BACKUP_DIR${NC}"
    echo ""
    echo -e "${GREEN}Backup size:${NC}"
    du -sh "$BACKUP_DIR" | awk '{print "  " $1}'
    echo ""

    # Ask if user wants to verify
    read -p "Do you want to verify the backup? (y/n): " -n 1 -r
    echo ""

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo -e "${BLUE}Verifying backup...${NC}"
        echo ""

        diff -r "$PRIVATE_DIR" "$BACKUP_DIR"
        DIFF_EXIT=$?

        if [ $DIFF_EXIT -eq 0 ]; then
            echo ""
            echo -e "${GREEN}✅ Verification successful - backup is identical to source!${NC}"
        else
            echo ""
            echo -e "${RED}⚠️  Warning: Differences detected between source and backup${NC}"
        fi
    fi

    echo ""
    echo -e "${BLUE}💡 TIP: Keep multiple backups for redundancy:${NC}"
    echo -e "${BLUE}   - External drive (this backup)${NC}"
    echo -e "${BLUE}   - Cloud storage (encrypted)${NC}"
    echo -e "${BLUE}   - USB stick (for offline backup)${NC}"
    echo ""

    exit 0
else
    echo -e "${RED}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${RED}║                  ❌ BACKUP FAILED ❌                         ║${NC}"
    echo -e "${RED}╚══════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${RED}Exit code: $EXIT_CODE${NC}"
    echo ""
    exit $EXIT_CODE
fi
