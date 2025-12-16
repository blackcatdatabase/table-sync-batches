-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  sync_batches

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_producer FOREIGN KEY (producer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_consumer FOREIGN KEY (consumer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;
