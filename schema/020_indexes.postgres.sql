-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  sync_batches

CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status);

CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at);
