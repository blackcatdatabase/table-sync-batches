-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  sync_batches

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_producer FOREIGN KEY (producer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_consumer FOREIGN KEY (consumer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;
