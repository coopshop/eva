CREATE TABLE time_segments (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name TEXT NOT NULL,
  start INTEGER NOT NULL,
  period INTEGER NOT NULL
);

CREATE TABLE time_segment_ranges (
  segment_id INTEGER NOT NULL,
  start INTEGER NOT NULL,
  end INTEGER NOT NULL
);

ALTER TABLE tasks
  ADD COLUMN time_segment_id NOT NULL DEFAULT 0;
