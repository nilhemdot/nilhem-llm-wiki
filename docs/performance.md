# DataviewJS Performance Guide for Wiki Layer

## Quick Wins
- Always scope with `FROM "wiki"` or narrower folders.
- Add `LIMIT` to every list/table on dashboards.
- Prefer a single-pass loop for stats instead of multiple `.where()` calls.
- Increase Dataview refresh interval or use manual refresh for heavy views.
- Keep Mobile-Dashboard extremely light (no charts).

## Optimized Patterns

### Single-pass stats
```dataviewjs
const pages = dv.pages('"wiki"');
let total = 0, drafts = 0, reviewed = 0;
for (const p of pages) {
  total++;
  if (p.status === "draft") drafts++;
  else if (p.status === "reviewed" || p.status === "verified") reviewed++;
}
dv.paragraph(`**${total}** notes · **${drafts}** drafts · **${reviewed}** reviewed`);
```

### Limited recent list
```dataview
LIST summary
FROM "wiki"
SORT file.mtime DESC
LIMIT 12
```

## Alternatives
- **Obsidian Bases** (core): Fastest for simple tables and indexes.
- **Datacore**: High-performance successor when you need interactivity.
- **Dataview Serializer**: Convert rarely changing views to static Markdown.

See also `wiki/Performance-Testing.md`.
