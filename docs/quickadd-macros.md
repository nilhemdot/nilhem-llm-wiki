# QuickAdd Capture Macros & Hotkeys

## Recommended Setup

1. Install the **QuickAdd** plugin.
2. Create the following macros (Template or Capture type).
3. Assign the suggested hotkeys.

### Macros

**New Concept**
- Type: Template
- Template: `templates/Concept.md`
- Folder: `wiki`
- Open: true
- Hotkey suggestion: `Ctrl/Cmd + Shift + C`

**New Research Note**
- Type: Template
- Template: `templates/Research-Paper.md`
- Folder: `wiki`
- Open: true
- Hotkey: `Ctrl/Cmd + Shift + R`

**New Meeting Notes**
- Type: Template
- Template: `templates/Meeting-Notes.md`
- Folder: `wiki`
- Open: true
- Hotkey: `Ctrl/Cmd + Shift + M`

**New Project**
- Type: Template
- Template: `templates/Project.md`
- Folder: `wiki`
- Open: true
- Hotkey: `Ctrl/Cmd + Shift + P`

**Quick Capture (Inbox)**
- Type: Capture
- Capture format:

```
---
title: {{VALUE:Title}}
date: {{DATE:YYYY-MM-DD}}
tags: [inbox]
status: draft
summary: 
---

# {{VALUE:Title}}

{{VALUE:Content}}
```

- File name: `Inbox-{{DATE:YYYY-MM-DD}}`
- Folder: `wiki` or a dedicated `wiki/inbox`
- Hotkey: `Ctrl/Cmd + Shift + Q`

## After Capture

Once the note is created, you can immediately say:

> “Ingest this note into the wiki layer”

or

> “Process the new note and update the relevant dashboards”

The `wiki-layer-ingest` skill (or structuring agent) will clean, link, and suggest dashboard impact.
