# Business & Projects Dashboard

## Active Projects
```dataviewjs
const projects = dv.pages('"wiki"')
  .where(p => p.tags && (p.tags.includes("project") || p.tags.includes("business")))
  .sort(p => p.last_updated || p.file.mtime, 'desc')
  .limit(15);

dv.table(
  ["Project", "Status", "Progress"],
  projects.map(p => [
    p.file.link,
    p.status || "—",
    p.progress != null ? p.progress + "%" : "—"
  ])
);
```

## Open Action Items
```dataview
TASK
FROM "wiki"
WHERE !completed AND (contains(tags, "project") OR contains(tags, "meeting") OR contains(tags, "business"))
GROUP BY file.link
```

## Related
- [[Interactive-Dashboard]]
- [[Index]]
