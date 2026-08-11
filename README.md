# Nilhem LLM Wiki (Wiki Layer)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Obsidian](https://img.shields.io/badge/Obsidian-7C3AED?logo=obsidian&logoColor=white)](https://obsidian.md)
[![GitHub stars](https://img.shields.io/github/stars/nilhemdot/nilhem-llm-wiki?style=social)](https://github.com/nilhemdot/nilhem-llm-wiki)
[![GitHub last commit](https://img.shields.io/github/last-commit/nilhemdot/nilhem-llm-wiki)](https://github.com/nilhemdot/nilhem-llm-wiki)

**Karpathy-inspired personal knowledge base for Obsidian + LLMs**

Turn chaotic raw files into a clean, linked, queryable Markdown wiki.  
Dramatically reduce token waste, improve answer quality, and build a visual second brain that grows with you.

> Inspired by Andrej Karpathy’s ideas on LLM knowledge bases ("Wiki Layer").

## Why this exists

Large language models waste huge amounts of tokens re-reading the same raw documents.  
This system processes everything **once** into a structured, interconnected knowledge base so the LLM works on clean Markdown forever after.

**Benefits**
- 70–90% token savings on repeated queries
- Higher accuracy and better cross-document reasoning
- Automatic bidirectional links + knowledge graph
- Fully local & private
- Live dashboards (desktop + mobile)

## Features

- `raw/` → `wiki/` separation (immutable sources + living knowledge base)
- Standardized YAML frontmatter + Obsidian `[[wiki links]]`
- Production-ready templates (Research, Concept, Meeting, Project, Base)
- Interactive desktop dashboard + lightweight mobile dashboard
- Optimized Dataview / DataviewJS queries (single-pass stats, hard limits)
- QuickAdd capture macros + recommended hotkeys
- Full structuring agent system prompt with automatic dashboard maintenance rules
- One-command setup script
- Performance testing note + optimization guide
- Compatible with the Grok `wiki-layer-ingest` skill

## Quick Start

```bash
git clone https://github.com/nilhemdot/nilhem-llm-wiki.git
cd nilhem-llm-wiki

# Point the script at your Obsidian vault
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
| New Concept        | `Ctrl/Cmd + Shift + C` | Concept.md         |
| New Research Note  | `Ctrl/Cmd + Shift + R` | Research-Paper.md  |
| New Meeting Notes  | `Ctrl/Cmd + Shift + M` | Meeting-Notes.md   |
| New Project        | `Ctrl/Cmd + Shift + P` | Project.md         |
| Quick Capture      | `Ctrl/Cmd + Shift + Q` | Simple inbox note  |

## Mobile

Open `wiki/Mobile-Dashboard.md` on your phone. It is intentionally lightweight (no heavy charts) for fast loading.

## Performance

See `docs/performance.md` and `wiki/Performance-Testing.md` for optimization techniques, single-pass patterns, and alternatives (Bases / Datacore).

## Suggested GitHub Topics

```
obsidian  knowledge-base  pkm  llm  wiki-layer  dataview  personal-knowledge-management  markdown  second-brain  karpathy
```

You can add these in the repository settings under "Topics".

## License

MIT

## Credits

Inspired by Andrej Karpathy’s ideas on LLM knowledge bases / “Wiki Layer”.
