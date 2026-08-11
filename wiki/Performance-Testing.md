# Performance Testing

Open the developer console (Ctrl/Cmd + Shift + I) → Console tab to see timings.

## Test 1 – Full wiki scan
```dataviewjs
console.time("full-scan");
const pages = dv.pages('"wiki"');
console.timeEnd("full-scan");
dv.paragraph(`Scanned ${pages.length} notes`);
```

## Test 2 – Optimized recent list
```dataview
LIST
FROM "wiki"
SORT file.mtime DESC
LIMIT 10
```

## Test 3 – Single-pass stats
```dataviewjs
console.time("stats");
const pages = dv.pages('"wiki"');
let total = 0, drafts = 0;
for (const p of pages) {
  total++;
  if (p.status === "draft") drafts++;
}
console.timeEnd("stats");
dv.paragraph(`Total: ${total}, Drafts: ${drafts}`);
```

Aim for < 100–200 ms on typical queries. If slower, narrow the `FROM` scope or add `LIMIT`.
