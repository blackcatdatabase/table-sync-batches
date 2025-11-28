-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  sync_batches

CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status);

CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at);
