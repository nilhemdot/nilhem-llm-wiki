# Wiki Layer

Karpathy-inspired personal knowledge base system for Obsidian.

Turn messy raw files into a clean, linked, queryable Markdown wiki that dramatically reduces LLM token usage and improves answer quality.

## Features

- **raw/ → wiki/** separation (immutable sources + living knowledge base)
- Standardized YAML frontmatter + Obsidian wiki links
- Ready-to-use templates (Research, Concept, Meeting, Project, Base)
- Interactive desktop dashboard + lightweight mobile dashboard
- Optimized Dataview / DataviewJS queries
- QuickAdd capture macros + recommended hotkeys
- Structuring agent system prompt with dashboard maintenance rules
- One-command setup script
- Performance testing note and guide
- Compatible with the Grok `wiki-layer-ingest` skill

## Quick Start

```bash
# Clone
git clone https://github.com/nilhemdot/nilhem-llm-wiki.git
cd nilhem-llm-wiki

# Run the setup script (point it at your Obsidian vault)
./scripts/setup-wiki-layer.sh /path/to/your/obsidian-vault
```

Or manually copy the `templates/` and `wiki/` folders into your vault.

## Recommended Plugins

| Plugin              | Purpose                          |
|---------------------|----------------------------------|
| Dataview            | Live queries & dashboards        |
| Templater           | Dynamic templates                |
| Obsidian Charts     | Charts in dashboards             |
| Buttons             | Interactive action buttons       |
| QuickAdd            | Fast capture macros              |
| Linter              | Consistent formatting            |
| Auto Note Mover     | Automatic filing                 |
| Omnisearch          | Better search                    |

## Folder Structure After Setup

```
your-vault/
├── raw/                  # Immutable original files
├── wiki/                 # Clean, linked knowledge base
│   ├── Interactive-Dashboard.md
│   ├── Mobile-Dashboard.md
│   ├── Research-Dashboard.md
│   ├── Business-Dashboard.md
│   ├── Health-Dashboard.md
│   ├── Index.md
│   ├── Performance-Testing.md
│   └── ...
├── templates/            # Note templates
└── docs/
    ├── structuring-agent-prompt.md
    ├── performance.md
    └── quickadd-macros.md
```

## Ingestion Workflow

1. Drop files into `raw/`
2. Use the **wiki-layer-ingest** Grok skill  
   or paste the structuring agent prompt into Claude / Cursor / etc.
3. The agent cleans, templates, links, and outputs ready Markdown for `wiki/`
4. Dashboards update automatically via Dataview

## QuickAdd Macros (Suggested)

| Macro              | Hotkey              | Template              |
|--------------------|---------------------|-----------------------|
| New Concept        | Ctrl/Cmd + Shift + C | Concept.md           |
| New Research Note  | Ctrl/Cmd + Shift + R | Research-Paper.md    |
| New Meeting Notes  | Ctrl/Cmd + Shift + M | Meeting-Notes.md     |
| New Project        | Ctrl/Cmd + Shift + P | Project.md           |
| Quick Capture      | Ctrl/Cmd + Shift + Q | Simple inbox note    |

## Mobile

Open `wiki/Mobile-Dashboard.md` on your phone. It is intentionally lightweight (no heavy charts) for fast loading.

## Performance

See `docs/performance.md` and `wiki/Performance-Testing.md`.

## License

MIT

## Credits

Inspired by Andrej Karpathy’s ideas on LLM knowledge bases / “Wiki Layer”.
