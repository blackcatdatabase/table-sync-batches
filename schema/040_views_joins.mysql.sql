-- Auto-generated from joins-mysql.yaml (map@85230ed)
-- engine: mysql
-- view:   sync_batch_progress

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_sync_batch_progress AS
SELECT
  b.id,
  b.channel,
  b.status,
  b.items_total,
  b.items_ok,
  b.items_failed,
  ROUND(100.0 * b.items_ok / NULLIF(b.items_total, 0), 2) AS success_pct,
  b.created_at,
  b.started_at,
  b.finished_at
FROM sync_batches b
ORDER BY b.created_at DESC;
