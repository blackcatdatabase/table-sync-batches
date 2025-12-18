-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  sync_batches

CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status);

CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at);
