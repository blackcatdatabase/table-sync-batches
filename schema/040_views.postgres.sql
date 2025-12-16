-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  sync_batches

-- Contract view for [sync_batches]
CREATE OR REPLACE VIEW vw_sync_batches AS
SELECT
  id,
  producer_peer_id,
  consumer_peer_id,
  status,
  items_total,
  items_ok,
  items_failed,
  error,
  created_at,
  started_at,
  finished_at
FROM sync_batches;
