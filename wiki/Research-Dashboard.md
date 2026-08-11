# Research Dashboard

## Literature Overview
```dataviewjs
const papers = dv.pages('"wiki"')
  .where(p => p.tags && (p.tags.includes("research") || p.tags.includes("paper")))
  .sort(p => p.year || 0, 'desc')
  .limit(20);

dv.table(
  ["Title", "Authors", "Year", "Status"],
  papers.map(p => [
    p.file.link,
    p.authors || "—",
    p.year || "—",
    p.status || "—"
  ])
);
```

## Open Research Questions & Gaps
```dataview
LIST summary
FROM "wiki"
WHERE contains(tags, "research") AND (status = "draft" OR status = "needs-review")
```

## Related Indexes
- [[Interactive-Dashboard]]
- [[Index]]
