# sync_batches

Batches of events replicated between peers.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| consumer_peer_id | BIGINT | NO |  | Consuming peer (FK peer_nodes.id). |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| error | TEXT | YES |  | Batch-level error, if any. |
| finished_at | TIMESTAMPTZ(6) | YES |  | Processing completion timestamp. |
| channel | VARCHAR(120) | NO |  | Logical replication channel. |
| id | BIGINT | NO |  | Surrogate primary key. |
| items_failed | INTEGER | NO | 0 | Number of events that failed. |
| items_ok |  | NO | 0 | Number of events applied successfully. |
| items_total | INTEGER | NO | 0 | Total number of events in the batch. |
| producer_peer_id | BIGINT | NO |  | Producing peer (FK peer_nodes.id). |
| started_at |  | YES |  | Processing start timestamp. |
| status | TEXT | NO | pending | Batch status. (enum: pending, sending, completed, failed, cancelled) |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sync_batches_created | created_at | INDEX idx_sync_batches_created (created_at) |
| idx_sync_batches_status | status | INDEX idx_sync_batches_status  (status) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sb_consumer | consumer_peer_id | peer_nodes(id) | ON DELETE RESTRICT |
| fk_sb_producer | producer_peer_id | peer_nodes(id) | ON DELETE RESTRICT |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sync_batches_created | created_at | CREATE INDEX IF NOT EXISTS idx_sync_batches_created ON sync_batches (created_at) |
| idx_sync_batches_status | status | CREATE INDEX IF NOT EXISTS idx_sync_batches_status ON sync_batches (status) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sb_consumer | consumer_peer_id | peer_nodes(id) | ON DELETE RESTRICT |
| fk_sb_producer | producer_peer_id | peer_nodes(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_sync_batch_progress | mysql | algorithm=TEMPTABLE, security=INVOKER | [packages\sync-batches\schema\040_views_joins.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/sync-batches/schema/040_views_joins.mysql.sql) |
| vw_sync_batches | mysql | algorithm=MERGE, security=INVOKER | [packages\sync-batches\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/sync-batches/schema/040_views.mysql.sql) |
| vw_sync_batch_progress | postgres |  | [packages\sync-batches\schema\040_views_joins.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/sync-batches/schema/040_views_joins.postgres.sql) |
| vw_sync_batches | postgres |  | [packages\sync-batches\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/sync-batches/schema/040_views.postgres.sql) |
