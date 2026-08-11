# Interactive Knowledge Base Dashboard
**Last Refreshed:** <% tp.date.now("YYYY-MM-DD HH:mm") %>  
**Total Notes:** `= dv.pages('"wiki"').length`

## Quick Actions

```button
name: 📝 New Research Note
type: command
action: Templater: Insert Template
templaterFile: templates/Research-Paper
color: blue
```

```button
name: 💡 New Concept
type: command
action: Templater: Insert Template
templaterFile: templates/Concept
color: purple
```

```button
name: 📊 Refresh All Views
type: command
action: Dataview: Force Refresh All Views
color: green
```

```button
name: 🗂 Open Graph View
type: command
action: Graph view: Open local graph
```

## Live Statistics (optimized single-pass)
```dataviewjs
const pages = dv.pages('"wiki"');
let total = 0, drafts = 0, reviewed = 0, concepts = 0;
for (const p of pages) {
  total++;
  const s = p.status;
  if (s === "draft") drafts++;
  else if (s === "reviewed" || s === "verified") reviewed++;
  if (p.tags && p.tags.includes("concept")) concepts++;
}
dv.table(["Metric", "Value"], [
  ["Total Notes", total],
  ["Reviewed", `${reviewed} (${total ? Math.round(reviewed/total*100) : 0}%)`],
  ["Drafts", drafts],
  ["Concepts", concepts]
]);
```

## Recent Activity
```dataview
TABLE WITHOUT ID file.link AS "Note", summary AS "Summary", status
FROM "wiki"
SORT file.mtime DESC
LIMIT 12
```

## Knowledge Gaps
```dataview
TABLE summary, date, status
FROM "wiki"
WHERE status = "draft" OR status = "needs-review"
SORT date ASC
LIMIT 15
```

## Specialized Dashboards
- [[Research-Dashboard]]
- [[Business-Dashboard]]
- [[Health-Dashboard]]
- [[Mobile-Dashboard]]
- [[Index]]
- [[Performance-Testing]]
