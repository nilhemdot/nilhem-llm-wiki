# Research Index

```dataview
TABLE authors, year, status, summary
FROM "wiki"
WHERE contains(tags, "research") OR contains(tags, "paper")
SORT year DESC
```
