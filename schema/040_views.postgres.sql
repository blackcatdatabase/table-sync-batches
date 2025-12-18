-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
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
