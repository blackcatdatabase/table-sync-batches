-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   sync_batch_progress

-- Sync batch progress and success rate
CREATE OR REPLACE VIEW vw_sync_batch_progress AS
SELECT
  b.id,
  b.channel,
  b.status,
  b.items_total,
  b.items_ok,
  b.items_failed,
  ROUND(100.0 * b.items_ok / GREATEST(b.items_total,1), 2) AS success_pct,
  b.created_at,
  b.started_at,
  b.finished_at
FROM sync_batches b
ORDER BY b.created_at DESC;
