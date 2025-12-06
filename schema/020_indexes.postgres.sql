-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  sync_batches

CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status);

CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at);
