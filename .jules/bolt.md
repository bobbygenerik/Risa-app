## 2024-05-23 - SQLite Composite Indexes for Pagination
**Learning:** `sqflite` queries with `WHERE column = ? ORDER BY sort_col` can be significantly optimized by a composite index on `(column, sort_col)`. This avoids a separate sort step after filtering, which is critical for smooth UI pagination in large channel lists.
**Action:** When adding new sortable columns or filtered views in `LocalDbService`, always consider composite indexes that cover both the filter and the sort order.
