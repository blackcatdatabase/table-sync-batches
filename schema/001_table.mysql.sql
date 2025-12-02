-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  sync_batches

CREATE TABLE IF NOT EXISTS sync_batches (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  channel VARCHAR(120) NOT NULL,
  producer_peer_id BIGINT UNSIGNED NOT NULL,
  consumer_peer_id BIGINT UNSIGNED NOT NULL,
  status ENUM('pending','sending','completed','failed','cancelled') NOT NULL DEFAULT 'pending',
  items_total INT NOT NULL DEFAULT 0,
  items_ok INT NOT NULL DEFAULT 0,
  items_failed INT NOT NULL DEFAULT 0,
  error TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  INDEX idx_sync_batches_status  (status),
  INDEX idx_sync_batches_created (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
