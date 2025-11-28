-- Auto-generated from feature-modules-mysql.psd1 (map@mtime:2025-11-27T17:06:04Z)
-- engine: mysql
-- table:  sync_batches_channels_health
-- Sync channel health: last batch, success rate
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_sync_batches_channels_health AS
WITH batches AS (
  SELECT
    channel,
    COUNT(*) AS batches_total,
    SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END) AS batches_success,
    SUM(CASE WHEN status = 'failed'  THEN 1 ELSE 0 END) AS batches_failed,
    MAX(finished_at) AS last_finished_at
  FROM sync_batches
  GROUP BY channel
)
SELECT
  b.channel,
  b.batches_total,
  b.batches_success,
  b.batches_failed,
  CASE WHEN b.batches_total > 0 THEN ROUND(100.0 * b.batches_success / b.batches_total, 2) ELSE NULL END AS success_pct,
  b.last_finished_at
FROM batches b;
