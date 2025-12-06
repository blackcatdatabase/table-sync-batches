-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
-- engine: mysql
-- table:  sync_batches

-- Contract view for [sync_batches]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_sync_batches AS
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
