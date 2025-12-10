-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  sync_batches

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_producer FOREIGN KEY (producer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;

ALTER TABLE sync_batches ADD CONSTRAINT fk_sb_consumer FOREIGN KEY (consumer_peer_id) REFERENCES peer_nodes(id) ON DELETE RESTRICT;
