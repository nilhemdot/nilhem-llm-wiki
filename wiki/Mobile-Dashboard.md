# Mobile Knowledge Dashboard
**Updated:** <% tp.date.now("YYYY-MM-DD") %>

## Quick Stats (optimized)
```dataviewjs
const p = dv.pages('"wiki"');
let total = 0, drafts = 0, reviewed = 0;
for (const x of p) {
  total++;
  if (x.status === "draft") drafts++;
  else if (x.status === "reviewed" || x.status === "verified") reviewed++;
}
dv.paragraph(`**${total}** notes · **${drafts}** drafts · **${reviewed}** reviewed`);
```

## Recent
```dataview
LIST summary
FROM "wiki"
SORT file.mtime DESC
LIMIT 6
```

## Needs Review
```dataview
LIST
FROM "wiki"
WHERE status = "draft" OR status = "needs-review"
LIMIT 5
```

## Capture
Use QuickAdd macros or say “ingest this” after creating a note.

## Full Views
- [[Interactive-Dashboard]]
- [[Research-Dashboard]]
- [[Business-Dashboard]]
- [[Index]]
- [[Performance-Testing]]
