-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  sync_batches

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_producer FOREIGN KEY (producer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_consumer FOREIGN KEY (consumer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;
