-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  sync_batches

CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status);

CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at);
