# Health & Personal Growth Dashboard

## Recent Reflections & Habits
```dataview
LIST summary
FROM "wiki"
WHERE contains(tags, "health") OR contains(tags, "habit") OR contains(tags, "reflection") OR contains(tags, "wellbeing")
SORT date DESC
LIMIT 10
```

## Calendar View
```dataview
CALENDAR date
FROM "wiki"
WHERE contains(tags, "health") OR contains(tags, "habit")
```

## Progress Notes
```dataview
TABLE summary, date, tags
FROM "wiki"
WHERE contains(tags, "health")
SORT date DESC
```

## Related
- [[Interactive-Dashboard]]
- [[Index]]
