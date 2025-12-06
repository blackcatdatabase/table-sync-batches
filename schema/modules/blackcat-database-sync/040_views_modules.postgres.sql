-- Auto-generated from feature-modules-postgres.yaml (map@sha1:A8D58997CBCD2EEE06670B1C02AD89FA65E66F67)
-- engine: postgres
-- table:  sync_batches_channels_health

-- Sync channel health: last batch, success rate
CREATE OR REPLACE VIEW vw_sync_batches_channels_health AS
WITH batches AS (
  SELECT
    channel,
    COUNT(*) AS batches_total,
    COUNT(*) FILTER (WHERE status = $$success$$) AS batches_success,
    COUNT(*) FILTER (WHERE status = $$failed$$)  AS batches_failed,
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
