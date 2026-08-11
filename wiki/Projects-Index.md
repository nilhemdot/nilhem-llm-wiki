# Projects Index

```dataview
TABLE status, progress, summary, last_updated
FROM "wiki"
WHERE contains(tags, "project") OR contains(tags, "business")
SORT last_updated DESC
```
